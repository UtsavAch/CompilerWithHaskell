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
"fun"                           { TFun }
"main"                          { TMain }
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
string                          { TString $$}
id                              { TId $$ }

%nonassoc "==" "!=" "<" "<=" ">" ">=" "||"   
%left "&&"                                   
%left "||"                                   
%left '+' '-'                                
%left '*' '/' '%'                            
%right '!'                                   

%%

program: "fun" "main" "(" ")" block { Program $5 }

block: "{" stmt_list "}" { Block $2 }

stmt_list:                  { [] }
         | stmt stmt_list   { $1 : $2 }

stmt: decl_stmt                     { $1 }
    | assign_stmt                   { $1 }
    | if_stmt                       { $1 }
    | while_stmt                    { $1 }
    | expr_stmt                     { $1 }
    | "print" "(" expr_stmt ")"     { Print $3 }
    | "readln" "(" ")"              { Readln }

expr: expr "+" expr                 { Add $1 $3 }
    | expr "-" expr                 { Sub $1 $3 }
    | expr "*" expr                 { Mult $1 $3 }
    | expr "/" expr                 { Div $1 $3 }
    | expr "%" expr                 { Mod $1 $3 }
    | expr "&&" expr                { And $1 $3 }
    | expr "||" expr                { Or $1 $3 }
    | expr "==" expr                { Equal $1 $3 }
    | "!" expr                      { Not $2 }
    | "(" expr ")"                  { $2 }
    | num                           { Num $1 }
    | id                            { Var $1 }
    | "true"                        { Bool True }
    | "false"                       { Bool False }

decl_stmt: "var" id "=" expr { Decl TyInt [Assign (Var $2) $4] }
         | "val" id "=" expr { Decl TyInt [Assign (Var $2) $4] }

assign_stmt: id "=" expr { Assign (Var $1) $3 }

if_stmt: "if" "(" expr ")" block { If $3 $5 }
       | "if" "(" expr ")" block "else" block { IfElse $3 $5 $7 }

while_stmt: "while" "(" expr ")" block { While $3 $5 }

expr_stmt: expr

{
parseError :: [Token] -> a
parseError toks = error "parse error"
}