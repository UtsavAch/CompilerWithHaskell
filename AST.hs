module AST where

data Exp = Num Int
        | Bool Bool
        | Var String
        | Val String
        | String String

        | ExprStmt Exp

        | Add Exp Exp
        | Sub Exp Exp 
        | Mult Exp Exp 
        | Div Exp Exp 
        | Mod Exp Exp
        | Incr Exp
        | Decr Exp

        | Program Exp
        | Block [Exp]

        | Decl [Exp]

        | Assign Exp Exp

        | If Exp Exp
        | IfElse Exp Exp Exp
        | IfExpr Exp Exp Exp
        | While Exp Exp
        | For Exp Exp

        | Equal Exp Exp
        | NotEqual Exp Exp
        | Diff Exp Exp
        | Less Exp Exp
        | LessEq Exp Exp
        | Greater Exp Exp
        | GreaterEq Exp Exp
        | Or Exp Exp
        | And Exp Exp
        | Not Exp

        | Print Exp
        | Println Exp
        | Readln
        deriving Show