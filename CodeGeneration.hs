module CodeGeneration where

import AST
import IR
import Control.Monad.State (State)
import qualified Control.Monad.State as State
import Control.Monad (foldM)

-- Symbol table: maps variable names to temporaries
type Table = [(String, Temp)]

-- Supply for generating unique temporaries and labels
type Supply = (Int, Int)

-- Generate a new temporary
newTemp :: State Supply Temp
newTemp = do
    (temps, labels) <- State.get
    State.put (temps + 1, labels)
    return ("t" ++ show temps)

-- get a new label
newLabel :: State Supply Label 
newLabel
  = do (temps,labels) <- State.get
       State.put (temps, labels+1)
       return ("L"++show labels)

-- Reuse temporaries by decrementing the counter
reuseTemps :: Int -> State Supply ()
reuseTemps n = do
    (temps, labels) <- State.get
    State.put (temps - n, labels)

-- Translate a program
transProg :: Exp -> State Supply [Instr]
transProg (Program (Block stmts)) = do
    let initialTable = [] :: Table
    (code, _) <- transBlock stmts initialTable
    return code
transProg _ = error "Invalid program structure."

-- Translate a block of statements
transBlock :: [Exp] -> Table -> State Supply ([Instr], Table)
transBlock [] tabl = return ([], tabl)
transBlock (stmt:rest) tabl = do
    (code1, updatedTable) <- transStmt stmt tabl
    (code2, finalTable) <- transBlock rest updatedTable
    return (code1 ++ code2, finalTable)

transStmt (Decl _ assignments) tabl = do
    foldM processAssignment ([], tabl) assignments
  where
    processAssignment (instrs, tabl) (Assign (Var var) expr) = do
        temp <- newTemp
        code <- transExpr expr tabl temp
        let newTable = (var, temp) : tabl
        return (instrs ++ code, newTable)

transStmt (Assign (Var var) expr) tabl = do
    temp <- case lookup var tabl of
        Just t -> return t
        Nothing -> error $ "Undefined variable: " ++ var
    code <- transExpr expr tabl temp
    return (code, tabl)

transStmt (Print expr) tabl = do
    temp <- newTemp
    code <- transExpr expr tabl temp
    return (code ++ [PRINT temp], tabl)

transStmt (Println expr) tabl = do
    temp <- newTemp
    code <- transExpr expr tabl temp
    return (code ++ [PRINT temp], tabl)

transStmt (Block stmts) tabl = do
    (code, finalTable) <- transBlock stmts tabl
    return (code, finalTable)

transStmt (If cond thenBlock) tabl = do
    ltrue <- newLabel
    lfalse <- newLabel
    codeCond <- transCond cond tabl ltrue lfalse
    (codeThen, _) <- transBlock [thenBlock] tabl  -- Get code from the block
    return (codeCond ++ [LABEL ltrue] ++ codeThen ++ [LABEL lfalse], tabl)

transStmt (IfElse cond thenBlock elseBlock) tabl = do
    ltrue <- newLabel
    lfalse <- newLabel
    lend <- newLabel
    codeCond <- transCond cond tabl ltrue lfalse
    (codeThen, _) <- transBlock [thenBlock] tabl  -- Get code from the block
    (codeElse, _) <- transBlock [elseBlock] tabl  -- Get code from the block
    return (codeCond ++ [LABEL ltrue] ++ codeThen ++ [JUMP lend, LABEL lfalse] ++ codeElse ++ [LABEL lend], tabl)

transStmt _ _ = error "Unrecognized statement."


-- Translate an expression
transExpr :: Exp -> Table -> Temp -> State Supply [Instr]
transExpr (Num n) _ dest = return [MOVEI dest n]
transExpr (Bool b) _ dest = return [MOVEI dest (if b then 1 else 0)]  -- Boolean literal
transExpr (String s) _ dest = return [MOVES dest s]

transExpr (Var x) tabl dest =
    case lookup x tabl of
        Just temp -> return [MOVE dest temp]
        Nothing -> error $ "Undefined variable: " ++ x

transExpr (Readln) tabl dest = do
  return [READ dest]

-- Handle Boolean expressions
transExpr (And e1 e2) tabl dest = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [AND dest temp1 temp2])  -- AND operation

transExpr (Or e1 e2) tabl dest = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [OR dest temp1 temp2])  -- OR operation

transExpr (Not e) tabl dest = do
    temp <- newTemp
    code <- transExpr e tabl temp
    reuseTemps 1
    return (code ++ [NOT dest temp])  -- NOT operation

transExpr (Add e1 e2) tabl dest = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [ADD dest temp1 temp2])

transExpr (Sub e1 e2) tabl dest = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [SUB dest temp1 temp2])

transExpr (Mult e1 e2) tabl dest = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [MULT dest temp1 temp2])

transExpr (Div e1 e2) tabl dest = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [DIV dest temp1 temp2])

transExpr (Equal e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (Equal e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (Diff e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (Diff e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (Less e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (Less e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (LessEq e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (LessEq e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (Greater e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (Greater e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (GreaterEq e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (GreaterEq e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

-- ---------------------------------------------------------
-- Translate a condition
transCond :: Exp -> Table -> Label -> Label -> State Supply [Instr]
transCond (Less e1 e2) tabl ltrue lfalse = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [COND temp1 Lt temp2 ltrue lfalse])

transCond (LessEq e1 e2) tabl ltrue lfalse = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [COND temp1 LtEq temp2 ltrue lfalse])

transCond (Greater e1 e2) tabl ltrue lfalse = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [COND temp1 Gt temp2 ltrue lfalse])

transCond (GreaterEq e1 e2) tabl ltrue lfalse = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [COND temp1 GtEq temp2 ltrue lfalse])

transCond (Equal e1 e2) tabl ltrue lfalse = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [COND temp1 Eq temp2 ltrue lfalse])

transCond (Diff e1 e2) tabl ltrue lfalse = do
    temp1 <- newTemp
    temp2 <- newTemp
    code1 <- transExpr e1 tabl temp1
    code2 <- transExpr e2 tabl temp2
    reuseTemps 2
    return (code1 ++ code2 ++ [COND temp1 Neq temp2 ltrue lfalse])

transCond (Bool True) _ ltrue _ = return [JUMP ltrue]

transCond (Bool False) _ _ lfalse = return [JUMP lfalse]

transCond (Var v) tabl ltrue lfalse = do
    temp <- case lookup v tabl of
        Just t -> return t
        Nothing -> error $ "Undefined variable: " ++ v
    return [COND temp Eq temp ltrue lfalse]

transCond (Not e) tabl ltrue lfalse = do
    code <- transCond e tabl lfalse ltrue
    return code

transCond (And e1 e2) tabl ltrue lfalse = do
    label2 <- newLabel
    code1 <- transCond e1 tabl label2 lfalse
    code2 <- transCond e2 tabl ltrue lfalse
    return (code1 ++ [LABEL label2] ++ code2)

transCond (Or e1 e2) tabl ltrue lfalse = do
    label2 <- newLabel
    code1 <- transCond e1 tabl ltrue label2
    code2 <- transCond e2 tabl ltrue lfalse
    return (code1 ++ [LABEL label2] ++ code2)
