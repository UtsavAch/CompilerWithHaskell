module Main where

import Lexer
import Parser
import AST
import Semantics
import IR
import CodeGeneration
import MIPSCodeGeneration
import qualified Data.Map as Map
import Control.Monad.State (State)
import qualified Control.Monad.State as State

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
    putStrLn "---- TOKENS ----"
    print tokens

    -- Parse the tokens into an AST
    let parsedTree = parser tokens
    putStrLn "---- PARSED TREE ----"
    print parsedTree

    -- Build the symbol table from the AST
    putStrLn "---- SEMANTICS CHECK ----"
    case buildSymbolTable parsedTree of
        Left err -> do
            putStrLn "Semantic Error:"
            print err
        Right symbolTable -> do
            print "No Semantic Error"

            -- Generate and print the IR code
            putStrLn "---- GENERATED CODE ----"
            let irCode = runCodeGen (transProg parsedTree)
            printIR irCode

            -- Convert IR to MIPS code and print it
            putStrLn "------- MIPS CODE -------"
            let mipsCode = generateMIPS irCode
            putStrLn mipsCode

-- print a list of IR instructions
printIR :: [Instr] -> IO ()
printIR = mapM_ print

-- print a horizontal line
line :: IO ()
line = putStrLn (replicate 40 '-')
