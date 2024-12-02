module Main where

import Lexer
import Parser
import AST
import IR
import CodeGeneration
import qualified Data.Map as Map
import           Control.Monad.State (State)
import qualified Control.Monad.State as State
-- import Semantics

-- starting values for temporary and label counters
initialSupply :: Supply
initialSupply = (0, 0)

-- run a code generation action with initial supply
runCodeGen :: State Supply [Instr] -> [Instr]
runCodeGen gen = State.evalState gen initialSupply

main :: IO ()
main = do
    -- Get the input program
    txt <- getContents

    -- Tokenize the input
    let tokens = alexScanTokens txt
    -- putStrLn "---- TOKENS ----"
    print tokens
    -- putStrLn "--------------------------------"

    -- Parse the tokens into an AST
    let parsedTree = parser $ alexScanTokens txt
    putStrLn "---- PARSED TREE ----"
    print parsedTree
    -- putStrLn "--------------------------------"
    --  let inp = [Decl TyInt [Assign (Var "maxTries") (Num 3)],Decl TyInt [Assign (Var "attempts") (Num 0)],Decl TyBool [Assign (Var "success") (Bool False)],Decl TyString [Assign (Var "abccccc") (String "bsajbckcs")],While (Less (Var "attempts") (Var "maxTries")) (Block [IfElse (Equal (Var "input") (Num 1)) (Block [Assign (Var "success") (Num 4),If (Diff (Var "success") (Bool True)) (IfElse (Equal (Var "success") (Bool False)) (Assign (Var "success") (Bool False)) (Assign (Var "success") (Bool False)))]) (Block [Assign (Var "success") (Bool True)]),Incr (Var "attempts")]),Decl TyString [Assign (Var "abf") (String "dn")]]    
    -- let output = getDecs inp
    -- print output

    -- Build the symbol table from the AST
    -- let symbolTable = buildSymbolTable parsedTree Map.empty
    -- putStrLn "---- SYMBOL TABLE ----"
    -- print symbolTable

    print("-------------------------")
    print("Generated code")
    printIR (runCodeGen (transProg (parser $ alexScanTokens txt)))

-- print a list of IR instructions
printIR :: [Instr] -> IO ()
printIR = mapM_ print

--print an horizontal line
line :: IO () 
line = putStrLn (replicate 40 '-')


-- //////////////////////////////////////
-- module Main where

-- import Lexer
-- import Parser
-- import AST

-- main :: IO ()
-- main = do
--   txt <- getContents
--   --print (alexScanTokens txt)
--   print (parser $ alexScanTokens txt)