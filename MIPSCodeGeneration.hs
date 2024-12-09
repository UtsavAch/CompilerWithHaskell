module MIPSCodeGeneration where

import IR
import Data.List (find)
import Data.Maybe (fromMaybe)
import qualified Data.Map as Map

type StringTable = Map.Map String String

-- Generate MIPS code from a list of IR instructions
generateMIPS :: [Instr] -> String
generateMIPS instrs = 
    let (dataSection, stringTable) = generateData instrs Map.empty
    in  ".data\n" ++ dataSection ++
        ".text\n" ++ unlines (map (convertToMIPS stringTable) instrs) ++
        exitProgram

-- Convert an individual IR instruction to MIPS code
convertToMIPS :: StringTable -> Instr -> String

convertToMIPS stringTable (MOVE t1 t2) = 
    "move $" ++ t1 ++ ", $" ++ t2

convertToMIPS stringTable (MOVEI t n) =
     "li $" ++ t ++ ", " ++ show n

convertToMIPS stringTable (MOVES t str) =
    let labelName = fromMaybe "" (Map.lookup str stringTable)
    in "la $a0, " ++ labelName ++ "\n" ++
       "li $v0, 4\n" ++
       "syscall"

convertToMIPS stringTable (ADD t1 t2 t3) = 
    "add $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (SUB t1 t2 t3) = 
    "sub $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (MULT t1 t2 t3) = 
    "mul $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (DIV t1 t2 t3) = 
    "div $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (MOD t1 t2 t3) = 
    "rem $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (LABEL label) = 
    label ++ ":"

convertToMIPS stringTable (JUMP label) = 
    "j " ++ label

convertToMIPS stringTable (COND t1 binOp t2 label1 label2) = 
    case binOp of
      Eq  -> "beq $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1 ++ "\nj " ++ label2
      Neq -> "bne $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1 ++ "\nj " ++ label2
      Lt  -> "blt $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1 ++ "\nj " ++ label2
      LtEq -> "ble $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1 ++ "\nj " ++ label2
      Gt  -> "bgt $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1 ++ "\nj " ++ label2
      GtEq -> "bge $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1 ++ "\nj " ++ label2

convertToMIPS stringTable (NOT t1 t2) =
    "xor $" ++ t1 ++ ", $" ++ t2 ++ ", 1"

convertToMIPS stringTable (AND t1 t2 t3) =
    "and $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (OR t1 t2 t3) =
    "or $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3

convertToMIPS stringTable (PRINT t) =
    "move $a0, $" ++ t ++ "\n" ++
    "li $v0, 1\n" ++
    "syscall"

convertToMIPS stringTable (PRINTLN t) =
    "move $a0, $" ++ t ++ "\n" ++
    "li $v0, 1\n" ++
    "syscall\n" ++
    "la $a0, newline\n" ++
    "li $v0, 4\n" ++
    "syscall"

convertToMIPS stringTable (READ t) =
    "li $v0, 5\n" ++
    "syscall\n" ++
    "move $" ++ t ++ ", $v0"

-- Generate MIPS data section and a string table
generateData :: [Instr] -> StringTable -> (String, StringTable)
generateData [] table = ("newline: .asciiz \"\\n\"\n", table) -- Include the newline in the data section
generateData (MOVES _ str : rest) table =
    let labelName = fromMaybe ("str" ++ show (Map.size table)) (Map.lookup str table)
        newTable = Map.insert str labelName table
        dataSection = labelName ++ ": .asciiz \"" ++ str ++ "\"\n"
        (restData, finalTable) = generateData rest newTable
    in (dataSection ++ restData, finalTable)
generateData (_ : rest) table = generateData rest table

-- Add a syscall for program termination
exitProgram :: String
exitProgram = "li $v0, 10\nsyscall\n"
