{
module Lexer where 
}

%wrapper "basic"

-- regexp definitions
$white = [\ \t\n\r]
$digit = [0-9]

tokens :-  

$white+                                 ;  -- skip whitespace

\/\/.*                                  ;  -- skip comments one line

"/*"(\*$white|(\*[^\/])|[^\*]|$white)*"*/"       ; -- skip comments multiple lines

"fun"                           { \s -> TFun }
"main"                          { \s -> TMain }
-- Expressions
"+"                             { \s -> TPlus }
"-"                             { \s -> TMinus }
"*"                             { \s -> TMult }
"/"                             { \s -> TDiv }
"%"                             { \s -> TMod }
"++"                            { \s -> TIncr }
"--"                            { \s -> TDecr }
"true"                          { \s -> TTrue }
"false"                         { \s -> TFalse }
"print"                         { \s -> TPrint }
"readln"                        { \s -> TReadln }
-- Commands
"val"                           {\s -> TVal}
"var"                           {\s -> TVar}
"="                             { \s -> TAssign }
"while"                         { \s -> TWhile }
"if"                            { \s -> TIf }
"else"                          { \s -> TElse }
"("                             { \s -> TLParen }
")"                             { \s -> TRParen }
"{"                             { \s -> TLBraces }
"}"                             { \s -> TRBraces }
"=="                            { \s -> TEqual }
"!="                            { \s -> TDifferent }
">"                             { \s -> TGreater }
"<"                             { \s -> TLess }
">="                            { \s -> TGreaterEq }
"<="                            { \s -> TLessEq }
"!"                             { \s -> TNot }
"||"                            { \s -> TOr }
"&&"                            { \s -> TAnd }
\"[^\"]*\"                      { \s -> TString (init (tail s)) }
[A-Za-z_][A-Za-z0-9_]*          { \s -> TId s }
$digit+                         { \s -> TNum (read s) }

{
 -- the token type
data Token = TNum Int
            | TFun
            | TMain
            | TPlus 
            | TMinus 
            | TMult 
            | TDiv 
            | TMod 
            | TIncr 
            | TDecr 
            | TTrue 
            | TFalse 
            | TPrint 
            | TReadln 
            | TVal
            | TVar
            | TAssign 
            | TWhile 
            | TIf 
            | TElse 
            | TLParen 
            | TRParen 
            | TLBraces 
            | TRBraces 
            | TEqual 
            | TDifferent 
            | TGreater 
            | TLess 
            | TGreaterEq 
            | TLessEq
            | TNot 
            | TOr 
            | TAnd 
            | TId String
            | TString String
            deriving (Eq, Show)
}
