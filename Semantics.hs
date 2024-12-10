module Semantics where

import qualified Data.Map as Map
import AST

-- Symbol table maps variable names to their types
type SymbolTable = Map.Map String Type

-- Perform semantic analysis on a program by traversing the AST
semanticAnalysis :: SymbolTable -> Exp -> Either String SymbolTable
semanticAnalysis symTable (Program block) = analyzeBlock symTable block

-- Analyze a block of statements
analyzeBlock :: SymbolTable -> Exp -> Either String SymbolTable
analyzeBlock symTable (Block stmts) = analyzeStatements symTable stmts

-- Analyze a list of statements
analyzeStatements :: SymbolTable -> [Exp] -> Either String SymbolTable
analyzeStatements symTable [] = Right symTable
analyzeStatements symTable (stmt:rest) = do
    updatedSymTable <- analyzeStatement symTable stmt
    analyzeStatements updatedSymTable rest

-- Analyze a single statement
analyzeStatement :: SymbolTable -> Exp -> Either String SymbolTable
analyzeStatement symTable (Decl varType [Assign (Var name) expr]) = do
    if Map.member name symTable
        then Left $ "Variable '" ++ name ++ "' is already declared."
        else do
            exprType <- inferExpressionType symTable expr
            if exprType /= varType
                then Left $ "Type mismatch in declaration of variable '" ++ name ++ "'. Expected type " ++ show varType ++ ", but got " ++ show exprType
                else Right $ Map.insert name varType symTable

analyzeStatement symTable (Assign (Var name) expr) = do
    case Map.lookup name symTable of
        Nothing -> Left $ "Variable '" ++ name ++ "' is not declared before assignment."
        Just varType -> do
            exprType <- inferExpressionType symTable expr
            if exprType /= varType
                then Left $ "Type mismatch in assignment to variable '" ++ name ++ "'. Expected type " ++ show varType ++ ", but got " ++ show exprType
                else Right symTable

analyzeStatement symTable (If cond thenBranch) = do
    condType <- inferExpressionType symTable cond
    if condType /= TyBool
        then Left "Condition in 'if' must evaluate to a boolean."
        else analyzeBlock symTable thenBranch

analyzeStatement symTable (IfElse cond thenBranch elseBranch) = do
    condType <- inferExpressionType symTable cond
    if condType /= TyBool
        then Left "Condition in 'if-else' must evaluate to a boolean."
        else do
            symTableThen <- analyzeBlock symTable thenBranch
            symTableElse <- analyzeBlock symTable elseBranch
            Right symTable

analyzeStatement symTable (While cond body) = do
    condType <- inferExpressionType symTable cond
    if condType /= TyBool
        then Left "Condition in 'while' must evaluate to a boolean."
        else analyzeBlock symTable body

analyzeStatement symTable (Println expr) = inferExpressionType symTable expr >> Right symTable
analyzeStatement symTable (Print expr) = inferExpressionType symTable expr >> Right symTable
analyzeStatement _ _ = Left "Unsupported statement encountered in semantic analysis."

-- Infer the type of expressions
inferExpressionType :: SymbolTable -> Exp -> Either String Type
inferExpressionType symTable (Num _) = Right TyInt
inferExpressionType symTable (Bool _) = Right TyBool
inferExpressionType symTable (String _) = Right TyString
inferExpressionType symTable (Var name) = 
    maybe (Left $ "Variable '" ++ name ++ "' is used without declaration.") Right (Map.lookup name symTable)
inferExpressionType symTable (Add e1 e2) = checkArithmetic symTable e1 e2
inferExpressionType symTable (Sub e1 e2) = checkArithmetic symTable e1 e2
inferExpressionType symTable (Mult e1 e2) = checkArithmetic symTable e1 e2
inferExpressionType symTable (Div e1 e2) = checkArithmetic symTable e1 e2
inferExpressionType symTable (And e1 e2) = checkLogical symTable e1 e2
inferExpressionType symTable (Or e1 e2) = checkLogical symTable e1 e2
inferExpressionType symTable (Not e) = do
    t <- inferExpressionType symTable e
    if t /= TyBool
        then Left "'!' operator can only operate on boolean expressions."
        else Right TyBool
inferExpressionType symTable (Less e1 e2) = checkComparison symTable e1 e2
inferExpressionType symTable (Greater e1 e2) = checkComparison symTable e1 e2
inferExpressionType symTable (Equal e1 e2) = checkComparison symTable e1 e2
inferExpressionType symTable (Diff e1 e2) = checkComparison symTable e1 e2
inferExpressionType symTable (LessEq e1 e2) = checkComparison symTable e1 e2
inferExpressionType symTable (GreaterEq e1 e2) = checkComparison symTable e1 e2

-- Helper functions
checkLogical, checkArithmetic, checkComparison ::
    SymbolTable -> Exp -> Exp -> Either String Type

checkLogical symTable e1 e2 = do
    t1 <- inferExpressionType symTable e1
    t2 <- inferExpressionType symTable e2
    if t1 == TyBool && t2 == TyBool
        then Right TyBool
        else Left "Logical operators can only operate on boolean expressions."

checkArithmetic symTable e1 e2 = do
    t1 <- inferExpressionType symTable e1
    t2 <- inferExpressionType symTable e2
    if t1 == TyInt && t2 == TyInt
        then Right TyInt
        else Left "Arithmetic operators can only operate on integers."

checkComparison symTable e1 e2 = do
    t1 <- inferExpressionType symTable e1
    t2 <- inferExpressionType symTable e2
    if t1 == t2
        then Right TyBool
        else Left "Comparison can only compare expressions of the same type."
