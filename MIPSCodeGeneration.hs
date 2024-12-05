module MIPSCodeGeneration where

import IR

-- Generate MIPS code from a list of IR instructions
generateMIPS :: [Instr] -> String
generateMIPS instrs = 
    ".data\n" ++ -- Start the data section for strings
    concatMap generateData instrs ++
    ".text\n" ++ -- Start the text section for executable code
    unlines (map convertToMIPS instrs) ++ exitProgram -- Append the exit syscall

-- Convert an individual IR instruction to MIPS code
convertToMIPS :: Instr -> String
convertToMIPS (MOVE t1 t2) = "move $" ++ t1 ++ ", $" ++ t2
convertToMIPS (MOVEI t n) = "li $" ++ t ++ ", " ++ show n
convertToMIPS (MOVES t str) = 
    "la $a0, " ++ labelName ++ "\n" ++
    "li $v0, 4\n" ++
    "syscall"
  where 
    labelName = map (\c -> if c == ' ' then '_' else c) str
convertToMIPS (ADD t1 t2 t3) = "add $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (SUB t1 t2 t3) = "sub $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (MULT t1 t2 t3) = "mul $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (DIV t1 t2 t3) = "div $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (MOD t1 t2 t3) = "rem $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (AND t1 t2 t3) = "and $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (OR t1 t2 t3) = "or $" ++ t1 ++ ", $" ++ t2 ++ ", $" ++ t3
convertToMIPS (NOT t1 t2) = "nor $" ++ t1 ++ ", $" ++ t2 ++ ", $zero"
convertToMIPS (LABEL label) = label ++ ":"
convertToMIPS (JUMP label) = "j " ++ label
convertToMIPS (COND t1 binOp t2 label1 label2) = 
  case binOp of
    Eq  -> "beq $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1
    Neq -> "bne $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1
    Lt  -> "blt $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1
    LtEq -> "ble $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1
    Gt  -> "bgt $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1
    GtEq -> "bge $" ++ t1 ++ ", $" ++ t2 ++ ", " ++ label1
convertToMIPS (PRINT t) = "move $a0, $" ++ t ++ "\n" ++
                          "li $v0, 1\n" ++
                          "syscall"
convertToMIPS (PRINTLN t) = "move $a0, $" ++ t ++ "\n" ++
                            "li $v0, 4\n" ++
                            "syscall"
convertToMIPS (READ t) = "li $v0, 5\n" ++
                         "syscall\n" ++
                         "move $" ++ t ++ ", $v0"

-- Generate MIPS code for data section (strings, constants, etc.)
generateData :: Instr -> String
generateData (MOVES _ str) = labelName ++ ": .asciiz \"" ++ str ++ "\"\n"
  where 
    labelName = map (\c -> if c == ' ' then '_' else c) str
generateData _ = ""

-- Add a syscall for program termination
exitProgram :: String
exitProgram = "li $v0, 10\nsyscall"
