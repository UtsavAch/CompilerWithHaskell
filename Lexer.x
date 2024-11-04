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
"println"                       { \s -> TPrintln }
"readln"                        { \s -> TReadln }
"val"                           { \s -> TVal}
"var"                           { \s -> TVar}
"="                             { \s -> TAssign }
"+="                            { \s -> TPlusAssign }
"-="                            { \s -> TMinusAssign }
"*="                            { \s -> TMultAssign }
"/="                            { \s -> TDivAssign }
"%="                            { \s -> TModAssign }
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
            | TPrintln
            | TReadln 
            | TVal
            | TVar
            | TAssign 
            | TPlusAssign
            | TMinusAssign
            | TMultAssign
            | TDivAssign
            | TModAssign
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
