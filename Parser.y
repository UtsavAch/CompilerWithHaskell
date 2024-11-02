{- Example Happy parser for simple arithmetic expressions.
   Semantic actions compute the value of the expressions.
   Pedro Vasconcelos, 2021
-}

{
module Parser where
import Lexer
import AST
}

%name parser
%tokentype { Token }
%error { parseError }

%token

num                             { TNum $$ }
"+"                             { TPlus }
"-"                             { TMinus }
"*"                             { TMult }
"/"                             { TDiv }
"%"                             { TMod }
"++"                            { TIncr }
"--"                            { TDecr }
"true"                          { TTrue }
"false"                         { TFalse }
"print"                         { TPrint }
"readln"                        { TReadln }
-- Commands
"val"                           { TVal }
"var"                           { TVar }
"="                             { TAssign }
"while"                         { TWhile }
"if"                            { TIf }
"else"                          { TElse }
"("                             { TLParen }
")"                             { TRParen }
"{"                             { TLBraces }
"}"                             { TRBraces }
"=="                            { TEqual }
"!="                            { TDifferent }
">"                             { TGreater }
"<"                             { TLess }
">="                            { TGreaterEq }
"<="                            { TLessEq }
"!"                             { TNot }
"||"                            { TOr }
"&&"                            { TAnd }

string          { TOK_STRING $$}
id              { TOK_ID $$ }

%nonassoc "==" "!=" "<" "<=" ">" ">=" "||" "&&"
%left '+' '-'
%left '*' '/' '%'

%%

