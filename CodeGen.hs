module CodeGen where

import           AST
import           IR
import           Data.Map (Map)
import qualified Data.Map as Map
import           Control.Monad.State (State)
import qualified Control.Monad.State as State

-- symbol table:
-- array identifiers to temporaries
type Table = [(Ident, Temp)]

-- the "supply" for generating temporaries and labels
-- counter for temporaries and labels
type Supply = (Int, Int)   

-- get a new temporary
newTemp :: State Supply Temp
newTemp 
  = do (temps,labels) <- State.get
       State.put (temps+1, labels)
       return ("t"++show temps)

-- get a new label
newLabel :: State Supply Label 
newLabel
  = do (temps,labels) <- State.get
       State.put (temps, labels+1)
       return ("L"++show labels)

-- get several temporaries
newTemps :: Int -> State Supply [Temp]
newTemps 0 = return []
newTemps n | n > 0 = do
               t <- newTemp
               ts <- newTemps (n-1)
               return (t:ts)

-- give back `n' temporaries for reuse
reuseTemps :: Int -> State Supply ()
reuseTemps n
  = do (temps, labels) <- State.get
       State.put (temps-n, labels)

---------------------------------------------------------------------------

-- translate an expression
transExpr :: Exp -> Table -> Temp -> State Supply [Instr]
transExpr (Var x) tabl dest
  = case lookup x tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "undefined variable"

transExpr (Num n) tabl dest 
  = return [MOVEI dest n]

transExpr (String s) tabl dest
  = return [MOVES dest s]

transExpr (Bool b) tabl dest
  | b == True = return [MOVEI dest 1]
  | b == False = return [MOVEI dest 0]

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

transExpr (Mod e1 e2) tabl dest = do 
  temp1 <- newTemp 
  temp2 <- newTemp 
  code1 <- transExpr e1 tabl temp1 
  code2 <- transExpr e2 tabl temp2
  reuseTemps 2
  return (code1 ++ code2 ++ [MOD dest temp1 temp2])

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

transExpr (And e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (And e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (Or e1 e2) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (Or e1 e2) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transExpr (Not e) tabl dest = do 
  ltrue <- newLabel 
  lfalse <- newLabel 
  lend <- newLabel 
  code0 <- transCond (Not e) tabl  ltrue lfalse 
  code1 <- transExpr (Bool True) tabl dest
  code2 <- transExpr (Bool False) tabl dest
  return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

-- /////////IMPORTANT///////////
-- transExpr (Scan) tabl dest = do
--   return [SCAN dest]
-- /////////////////////////////

-- translate functions arguments
-- each one gets a new temporary
transArgs :: [Exp] -> Table -> State Supply ([Instr], [Temp])
transArgs [] tabl = return ([], [])
transArgs (exp:exps) tabl
      = do temp <- newTemp 
           code <- transExpr exp tabl temp 
           (code', temps') <- transArgs exps tabl
           return (code++code', temp:temps')

-------------------------------------------------------------------------------------

transStm (Assign var expr) tabl
  = case lookup (getVar var) tabl of
      Nothing -> error "undefined variable"
      Just dest -> transExpr expr tabl dest

transStm (Incr e) tabl = do
  temp1 <- newTemp
  temp2 <- newTemp
  code1 <- transExpr e tabl temp1
  code2 <- transExpr (Num 1) tabl temp2
  reuseTemps 2
  return (code1 ++ code2 ++ [ADD temp1 temp1 temp2])

transStm (Decr e) tabl = do
  temp1 <- newTemp
  temp2 <- newTemp
  code1 <- transExpr e tabl temp1
  code2 <- transExpr (Num 1) tabl temp2
  reuseTemps 2
  return (code1 ++ code2 ++ [SUB temp1 temp1 temp2])

transStm (If cond stm1) tabl 
  = do ltrue  <- newLabel 
       lfalse <- newLabel 
       code0  <- transCond cond tabl ltrue lfalse 
       code1  <- transStm stm1 tabl
       return (code0 ++ [LABEL ltrue] ++ code1 ++ [LABEL lfalse])

transStm (IfElse cond stm1 stm2) tabl
  = do ltrue <- newLabel 
       lfalse <- newLabel 
       lend <- newLabel 
       code0 <- transCond cond tabl  ltrue lfalse 
       code1 <- transStm stm1 tabl 
       code2 <- transStm stm2 tabl 
       return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transStm  (While cond stm) tabl =
  do lcond <- newLabel
     lbody <- newLabel
     lend <- newLabel
     code1 <- transCond cond tabl  lbody lend
     code2 <- transStm stm tabl 
     return ([LABEL lcond] ++ code1 ++ [LABEL lbody] ++ code2 ++ [JUMP lcond, LABEL lend])

-- //////////IMPORTANT/////////////
-- transStm (Block decs body) table = do
--   tdecs <- newTemps (length (getDecs decs))
--   code <- transStmList body ((zip (getDecs decs) tdecs) ++ table)
--   reuseTemps (length (getDecs decs))
--   return code
-- ////////////////////////////////

-- //////////IMPORTANT/////////////
-- transStm (PrintI e) table = do
--   temp1 <- newTemp
--   code1 <- transExpr e table temp1
--   reuseTemps 1
--   return (code1 ++ [PRINTI temp1])
-- ////////////////////////////////

-- //////////IMPORTANT/////////////
-- transStm (PrintS e) table = do
--   temp1 <- newTemp
--   code1 <- transExpr e table temp1
--   reuseTemps 1
--   return (code1 ++ [PRINTS temp1])
-- ////////////////////////////////

-- translate a condition
transCond :: Exp -> Table -> Label -> Label -> State Supply [Instr]
transCond (Less e1 e2) tabl ltrue lfalse =
      do temp1 <- newTemp
         temp2 <- newTemp 
         code1 <- transExpr e1 tabl temp1
         code2 <- transExpr e2 tabl temp2
         reuseTemps 2
         return ( code1 ++ code2 ++ [COND temp1 Lt temp2 ltrue lfalse] )

transCond (LessEq e1 e2) tabl ltrue lfalse =
      do temp1 <- newTemp
         temp2 <- newTemp 
         code1 <- transExpr e1 tabl temp1
         code2 <- transExpr e2 tabl temp2
         reuseTemps 2
         return ( code1 ++ code2 ++ [COND temp1 LtEq temp2 ltrue lfalse] )

transCond (Greater e1 e2) tabl ltrue lfalse =
      do temp1 <- newTemp
         temp2 <- newTemp 
         code1 <- transExpr e1 tabl temp1
         code2 <- transExpr e2 tabl temp2
         reuseTemps 2
         return ( code1 ++ code2 ++ [COND temp1 Gt temp2 ltrue lfalse] )

transCond (GreaterEq e1 e2) tabl ltrue lfalse =
      do temp1 <- newTemp
         temp2 <- newTemp 
         code1 <- transExpr e1 tabl temp1
         code2 <- transExpr e2 tabl temp2
         reuseTemps 2
         return ( code1 ++ code2 ++ [COND temp1 GtEq temp2 ltrue lfalse] )

transCond (Equal e1 e2) tabl ltrue lfalse =
      do temp1 <- newTemp
         temp2 <- newTemp 
         code1 <- transExpr e1 tabl temp1
         code2 <- transExpr e2 tabl temp2
         reuseTemps 2
         return ( code1 ++ code2 ++ [COND temp1 Eq temp2 ltrue lfalse] )

transCond (Diff e1 e2) tabl ltrue lfalse =
      do temp1 <- newTemp
         temp2 <- newTemp 
         code1 <- transExpr e1 tabl temp1
         code2 <- transExpr e2 tabl temp2
         reuseTemps 2
         return ( code1 ++ code2 ++ [COND temp1 Neq temp2 ltrue lfalse] )

transCond (Bool True) tabl ltrue lfalse = do
  return [JUMP ltrue]

transCond (Bool False) tabl ltrue lfalse = do
  return [JUMP lfalse]

transCond (Var v) tabl ltrue lfalse = do
  temp1 <- newTemp
  temp2 <- newTemp
  code1 <- transExpr (Var v) tabl temp1
  code2 <- transExpr (Bool True) tabl temp2
  reuseTemps 2
  return (code1 ++ code2 ++ [COND temp1 Eq temp2 ltrue lfalse])

transCond (Not e) tabl ltrue lfalse = do
  code <- transCond e tabl lfalse ltrue
  return (code)

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

-- translate a list of statements
-- translate individual statements and join the resulting instructions
transStmList :: [Exp] -> Table -> State Supply [Instr]
transStmList [] tabl = return []
transStmList (stm:rest) tabl = do
  code1 <- transStm stm tabl 
  code2 <- transStmList rest tabl
  return (code1 ++ code2)
  
-- translate a function definition
-- transFunDef :: Exp -> State Supply [Instr]
-- transFunDef (Func ty id args body) 
--   = do targs <- newTemps (length (getArgs args))      -- temporaries for arguments
--        -- setup symbol table
--        let table = (zip (getArgs args) targs)
--        -- translate the body
--        code <- transStm body table
--        reuseTemps (length(getArgs args))
--        -- return the code
--        return (LABEL id : code)

-- ////////////IMPORTANT////////////////
-- transProg :: Exp -> State Supply [Instr]
-- transProg (Program funcs) = do
--   code <- transProgAux funcs
--   return (code)

-- transProgAux :: [Exp] -> State Supply [Instr]
-- transProgAux [] = return []
-- transProgAux (first:rest) = do
--   code1 <- transFunDef first
--   code2 <- transProgAux rest
--   return (code1 ++ code2)
-- /////////////////////////////////////

-- //////////// IMPORTANT //////////////////////
-- getDecs :: [Exp] -> [String]
-- getDecs ((Decl ty vars):rest) = (getDecsAux vars) ++ (getDecs rest)
-- getDecs [] = []

-- getDecsAux :: [Exp] -> [String]
-- getDecsAux ((Var str):rest) = str:(getDecsAux rest)
-- -- getDecsAux ((Array str nr):rest) = str:(getDecsAux rest)
-- getDecsAux [] = []
-- ///////////////////////////////////////////////

getVar :: Exp -> String
getVar (Var str) = str