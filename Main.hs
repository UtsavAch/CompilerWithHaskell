module Main where

import Lexer
import Parser
import AST

main :: IO ()
main = do
  txt <- getContents
  print (alexScanTokens txt)
  print("--------------------------------")
  print (parser $ alexScanTokens txt)