module Main where

import Lexer
import Parser
import AST
import SymbolTable
import qualified Data.Map as Map

main :: IO ()
main = do
    -- Get the input program
    txt <- getContents

    -- Tokenize the input
    let tokens = alexScanTokens txt
    -- putStrLn "---- TOKENS ----"
    -- print tokens
    -- putStrLn "--------------------------------"

    -- Parse the tokens into an AST
    let parsedTree = parser tokens
    putStrLn "---- PARSED TREE ----"
    print parsedTree
    putStrLn "--------------------------------"

    -- Build the symbol table from the AST
    let symbolTable = buildSymbolTable parsedTree Map.empty 0
    putStrLn "---- SYMBOL TABLE ----"
    print symbolTable
