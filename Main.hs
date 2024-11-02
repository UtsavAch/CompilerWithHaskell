module Main where

import Lexer

main :: IO ()
main = do
  txt <- getContents
  print (alexScanTokens txt)