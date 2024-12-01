data Exp = Decl Type [Assign] 
         | Assign Var Exp 
         | Var String 
         | Num Int 
         | Bool Bool 
         | String String 
         | TyInt | TyBool | TyString 
         | While Exp Block 
         | IfElse Exp Block Block
         | If Exp Block 
         | Incr Var
         | Less Exp Exp 
         | Equal Exp Exp 
         | Diff Exp Exp
         | Block [Exp]
         deriving Show

getDecs :: [Exp] -> [String]
getDecs (Decl _ [Assign (Var varName) _]:rest) = varName : getDecs rest
getDecs (While _ block:rest) = getDecsBlock block ++ getDecs rest
getDecs (IfElse _ block1 block2:rest) = getDecsBlock block1 ++ getDecsBlock block2 ++ getDecs rest
getDecs (Block exps:rest) = getDecs exps ++ getDecs rest
getDecs _ = []

getDecsBlock :: Block -> [String]
getDecsBlock (Block exps) = getDecs exps

-- Main function to run the code
main :: IO ()
main = do
    let inp = [Decl TyInt [Assign (Var "maxTries") (Num 3)],Decl TyInt [Assign (Var "attempts") (Num 0)],Decl TyBool [Assign (Var "success") (Bool False)],Decl TyString [Assign (Var "abccccc") (String "bsajbckcs")],While (Less (Var "attempts") (Var "maxTries")) (Block [IfElse (Equal (Var "input") (Num 1)) (Block [Assign (Var "success") (Num 4),If (Diff (Var "success") (Bool True)) (IfElse (Equal (Var "success") (Bool False)) (Assign (Var "success") (Bool False)) (Assign (Var "success") (Bool False)))]) (Block [Assign (Var "success") (Bool True)]),Incr (Var "attempts")])]
    let output = getDecs inp
    print output

