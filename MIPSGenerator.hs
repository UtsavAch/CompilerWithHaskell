module MIPSGenerator where

import AST
import IR
import Data.List (intercalate)

-- Helper to generate temporary variables
newTemp :: Int -> String
newTemp n = "t" ++ show n

-- Define MIPSInstruction data type
data MIPSInstruction = MIPSInstruction String [String]
  deriving Show

-- Example function that uses MIPSInstruction
emitMIPS :: MIPSInstruction -> String
emitMIPS (MIPSInstruction opcode operands) =
    opcode ++ " " ++ unwords operands

-- Generate MIPS code for an expression
genExp :: Exp -> Int -> (IR.Instr, Int)
genExp (Num n) tempCounter = 
    let temp = newTemp tempCounter
    in (IR.MOVEI temp n, tempCounter + 1)

genExp (Var v) tempCounter = 
    let temp = newTemp tempCounter
    in (IR.MOVES temp v, tempCounter + 1)

genExp (Add e1 e2) tempCounter = 
    let (instr1, counter1) = genExp e1 tempCounter
        (instr2, counter2) = genExp e2 counter1
        temp = newTemp counter2
    in (IR.ADD temp (newTemp counter1) (newTemp counter2), counter2 + 1)

genExp (Sub e1 e2) tempCounter = 
    let (instr1, counter1) = genExp e1 tempCounter
        (instr2, counter2) = genExp e2 counter1
        temp = newTemp counter2
    in (IR.SUB temp (newTemp counter1) (newTemp counter2), counter2 + 1)

genExp (Mult e1 e2) tempCounter = 
    let (instr1, counter1) = genExp e1 tempCounter
        (instr2, counter2) = genExp e2 counter1
        temp = newTemp counter2
    in (IR.MULT temp (newTemp counter1) (newTemp counter2), counter2 + 1)

genExp (Div e1 e2) tempCounter = 
    let (instr1, counter1) = genExp e1 tempCounter
        (instr2, counter2) = genExp e2 counter1
        temp = newTemp counter2
    in (IR.DIV temp (newTemp counter1) (newTemp counter2), counter2 + 1)

genExp (Mod e1 e2) tempCounter = 
    let (instr1, counter1) = genExp e1 tempCounter
        (instr2, counter2) = genExp e2 counter1
        temp = newTemp counter2
    in (IR.MOD temp (newTemp counter1) (newTemp counter2), counter2 + 1)

-- Generate MIPS code for a statement
genStmt :: Exp -> Int -> ([IR.Instr], Int)
genStmt (Assign (Var v) e) tempCounter =
    let (instr, counter) = genExp e tempCounter
    in ([instr, IR.MOVES v (newTemp counter)], counter)

genStmt (Print e) tempCounter = 
    let (instr, counter) = genExp e tempCounter
    in ([instr, IR.PRINT (newTemp counter)], counter)

genStmt (Println e) tempCounter = 
    let (instr, counter) = genExp e tempCounter
    in ([instr, IR.PRINTLN (newTemp counter)], counter)

-- Helper function to generate MIPS code for a block of statements
genBlock :: [Exp] -> Int -> ([IR.Instr], Int)
genBlock [] tempCounter = ([], tempCounter)
genBlock (s:ss) tempCounter =
    let (stmtCode, counter) = genStmt s tempCounter
        (restCode, finalCounter) = genBlock ss counter
    in (stmtCode ++ restCode, finalCounter)

-- Main function to generate MIPS code for a program
genProgram :: Exp -> [IR.Instr]
genProgram (Program block) = 
    let (code, _) = genBlock [block] 0
    in code
