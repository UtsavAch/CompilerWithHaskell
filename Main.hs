module Main where

import Lexer
import Parser
import AST

main :: IO ()
main = do
  txt <- getContents
  print("---- TOKENS ----")
  print (alexScanTokens txt)
  print("--------------------------------")
  print("---- PARSED TREE ----")
  print (parser $ alexScanTokens txt)