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

-- Reuse temporaries by decrementing the counter
reuseTemps :: Int -> State Supply ()
reuseTemps n = do
    (temps, labels) <- State.get
    State.put (temps - n, labels)

-- Translate a program
transProg :: Exp -> State Supply [Instr]
transProg (Program (Block stmts)) = do
    let initialTable = [] :: Table
    transBlock stmts initialTable
transProg _ = error "Invalid program structure."

-- Translate a block of expressions
transBlock :: [Exp] -> Table -> State Supply [Instr]
transBlock [] _ = return []
transBlock (stmt:rest) tabl = do
    code1 <- transStmt stmt tabl
    code2 <- transBlock rest tabl
    return (code1 ++ code2)

-- Translate a single statement (Exp)
transStmt :: Exp -> Table -> State Supply [Instr]
transStmt (Decl _ assignments) tabl = do
    (instrs, _) <- foldM processAssignment ([], tabl) assignments
    return instrs
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
    transExpr expr tabl temp

transStmt (Print (String s)) _ = return [PRINT s]
transStmt (Println (String s)) _ = return [PRINT s]

transStmt _ _ = error "Unrecognized statement."

-- Translate an expression
transExpr :: Exp -> Table -> Temp -> State Supply [Instr]
transExpr (Num n) _ dest = return [MOVEI dest n]
transExpr (Bool b) _ dest = return [MOVEI dest (if b then 1 else 0)]
transExpr (Var x) tabl dest =
    case lookup x tabl of
        Just temp -> return [MOVE dest temp]
        Nothing -> error $ "Undefined variable: " ++ x

transExpr (String s) _ dest = return [MOVES dest s]

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


transExpr _ _ _ = error "Unsupported expression."
