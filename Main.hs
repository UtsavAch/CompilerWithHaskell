module Main where

import Lexer
import Parser
import AST
import IR
import CodeGen
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
    putStrLn "--------------------------------"

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