module Semantics where

import AST
import qualified Data.Map as Map
import Data.Map (Map)

-- Data type for a symbol
data Symbol = Symbol {
    symbolName :: String,
    symbolType :: Type
} deriving (Show, Eq)

-- Symbol table as a Map
type SymbolTable = Map String Symbol

-- Error types for semantic analysis
data SemanticError
    = TypeMismatch { varName :: String, expected :: String, actual :: String }
    | UndefinedVariable { varName :: String }
    | DuplicateDeclaration { varName :: String }
    deriving (Show)

-- Insert a new symbol into the table
insertSymbol :: SymbolTable -> Symbol -> Either SemanticError SymbolTable
insertSymbol table symbol =
    if Map.member (symbolName symbol) table
        then Left $ DuplicateDeclaration (symbolName symbol)
        else Right $ Map.insert (symbolName symbol) symbol table

-- Lookup a symbol by name
lookupSymbol :: SymbolTable -> String -> Either SemanticError Symbol
lookupSymbol table name =
    case Map.lookup name table of
        Just symbol -> Right symbol
        Nothing -> Left $ UndefinedVariable name

-- Function to construct the symbol table from the AST
buildSymbolTable :: Exp -> Either SemanticError SymbolTable
buildSymbolTable (Program (Block stmts)) =
    foldl processStmt (Right Map.empty) stmts
buildSymbolTable _ = Right Map.empty

-- Function to process statements and include type checking
processStmt :: Either SemanticError SymbolTable -> Exp -> Either SemanticError SymbolTable
processStmt (Left err) _ = Left err
processStmt (Right table) stmt = case stmt of
    -- Handle variable declarations with assignments
    Decl ty [Assign (Var name) expr] ->
        let exprType = inferType expr table
        in if exprType == ty
            then insertSymbol table (Symbol name ty)
            else Left $ TypeMismatch { varName = name, expected = show ty, actual = show exprType }


    -- Handle assignments
    Assign (Var name) expr ->
        let exprType = inferType expr table
        in case lookupSymbol table name of
            Right symbol ->
                if symbolType symbol == exprType
                    then Right table
                    else Left $ TypeMismatch { varName = name, expected = show (symbolType symbol), actual = show exprType }
            Left err -> Left err

    -- Handle blocks with scoped symbol tables
    Block stmts -> foldl processStmt (Right table) stmts

    -- Ignore standalone expressions
    _ -> Right table

-- Function to infer the type of an expression
inferType :: Exp -> SymbolTable -> Type
-- Base cases
inferType (Num _) _ = TyInt
inferType (Bool _) _ = TyBool
inferType (String _) _ = TyString

-- Lookup variables in the symbol table
inferType (Var name) table =
    case lookupSymbol table name of
        Right symbol -> symbolType symbol
        Left _ -> error $ "Undefined variable: " ++ name

-- Logical and arithmetic operations
inferType (And e1 e2) table = checkBinaryOp e1 e2 TyBool table
inferType (Or e1 e2) table = checkBinaryOp e1 e2 TyBool table
inferType (Not e) table = checkUnaryOp e TyBool table

inferType (Add e1 e2) table = checkBinaryOp e1 e2 TyInt table
inferType (Sub e1 e2) table = checkBinaryOp e1 e2 TyInt table
inferType (Div e1 e2) table = checkBinaryOp e1 e2 TyInt table
inferType (Mult e1 e2) table = checkBinaryOp e1 e2 TyInt table

-- Default case
inferType _ _ = error "Unknown type"

-- Helper for binary operations
checkBinaryOp :: Exp -> Exp -> Type -> SymbolTable -> Type
checkBinaryOp e1 e2 expectedType table =
    if inferType e1 table == expectedType && inferType e2 table == expectedType
    then expectedType
    else error "Type mismatch in binary operation"

-- Helper for unary operations
checkUnaryOp :: Exp -> Type -> SymbolTable -> Type
checkUnaryOp e expectedType table =
    if inferType e table == expectedType
    then expectedType
    else error "Type mismatch in unary operation"
