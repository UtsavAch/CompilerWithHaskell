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
"Int"                           { TIntDec }
"Bool"                          { TBoolDec }
"String"                        { TStringDec }
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
"println"                       { TPrintln }
"readln"                        { TReadln }
"val"                           { TVal }
"var"                           { TVar }
"="                             { TAssign }
"+="                            { TPlusAssign }
"-="                            { TMinusAssign }
"*="                            { TMultAssign }
"/="                            { TDivAssign }
"%="                            { TModAssign }
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
":"                             { TColon }
string                          { TString $$ }
id                              { TId $$ }

%nonassoc "==" "!=" "<" "<=" ">" ">="
%left "&&"
%left "||"
%left '+' '-'
%left '*' '/' '%'
%right '!'
%right '='

%%

program: "fun" "main" "(" ")" block            { Program $5 }

block: "{" stmt_list "}"                       { Block $2 }

stmt_list: stmt stmt_list                      { $1 : $2 }
          |                                    { [] }
stmt: decl_stmt                                { $1 }
    | assign_stmt                              { $1 }
    | if_block_or_stmt                         { $1 }
    | while_stmt                               { $1 }
    | expr_stmt                                { $1 }

expr_stmt: expr                                { ExprStmt $1 }

expr: or_expr                                  { $1 }
    | "readln" "(" ")"                         { Readln }
    | "print" "(" expr ")"                     { Print $3 }
    | "println" "(" expr ")"                   { Println $3 }

assign_stmt: id "=" expr                       { Assign (Var $1) $3 }
           | id "+=" expr                      { Assign (Var $1) (Add (Var $1) $3) }
           | id "-=" expr                      { Assign (Var $1) (Sub (Var $1) $3) }
           | id "*=" expr                      { Assign (Var $1) (Mult (Var $1) $3) }
           | id "/=" expr                      { Assign (Var $1) (Div (Var $1) $3) }
           | id "%=" expr                      { Assign (Var $1) (Mod (Var $1) $3) }
           | expr "++"                         { Incr $1 }
           | expr "--"                         { Decr $1 }

or_expr: or_expr "||" and_expr                 { Or $1 $3 }
       | and_expr                              { $1 }

and_expr: and_expr "&&" eq_expr                { And $1 $3 }
        | eq_expr                              { $1 }

eq_expr: eq_expr "==" rel_expr                 { Equal $1 $3 }
       | eq_expr "!=" rel_expr                 { NotEqual $1 $3 }
       | rel_expr                              { $1 }

rel_expr: rel_expr "<" add_expr                { Less $1 $3 }
        | rel_expr "<=" add_expr               { LessEq $1 $3 }
        | rel_expr ">" add_expr                { Greater $1 $3 }
        | rel_expr ">=" add_expr               { GreaterEq $1 $3 }
        | add_expr                             { $1 }

add_expr: add_expr "+" mul_expr                { Add $1 $3 }
        | add_expr "-" mul_expr                { Sub $1 $3 }
        | mul_expr                             { $1 }

mul_expr: mul_expr "*" unary_expr              { Mult $1 $3 }
        | mul_expr "/" unary_expr              { Div $1 $3 }
        | mul_expr "%" unary_expr              { Mod $1 $3 }
        | unary_expr                           { $1 }

unary_expr: "!" unary_expr                     { Not $2 }
          | primary                            { $1 }

primary: num                                   { Num $1 }
       | id                                    { Var $1 }
       | "true"                                { Bool True }
       | "false"                               { Bool False }
       | "(" expr ")"                          { $2 }
       | string                                { String $1 }

Types : "Int"                                  { TyInt }
      | "Bool"                                 { TyBool }
      | "String"                               { TyString }

decl_stmt: "var" id ":" Types "=" expr         { Decl $4 [Assign (Var $2) $6] }
         | "val" id ":" Types "=" expr         { Decl $4 [Assign (Val $2) $6] }

block_or_stmt: block                           { $1 }
        | stmt                                 { $1 }

if_block_or_stmt: "if" "(" block_or_stmt ")" block_or_stmt "else" block_or_stmt    { IfElse $3 $5 $7 }
       | "if" "(" block_or_stmt ")" block_or_stmt                                  { If $3 $5 }

while_stmt: "while" "(" expr ")" block         { While $3 $5 }

{
parseError :: [Token] -> a
parseError toks = error $ "Parse error at: " ++ show toks
}
