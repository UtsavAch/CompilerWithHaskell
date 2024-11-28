module Semantics where

import AST
import qualified Data.Map as Map
import Data.Map (Map)

-- Data type for a symbol
data Symbol = Symbol {
    symbolName :: String,
    symbolType :: String
} deriving (Show, Eq)

-- Symbol table as a Map
type SymbolTable = Map String Symbol

-- Insert a new symbol into the table
insertSymbol :: SymbolTable -> Symbol -> SymbolTable
insertSymbol table symbol = Map.insert (symbolName symbol) symbol table

-- Lookup a symbol by name
lookupSymbol :: SymbolTable -> String -> Maybe Symbol
lookupSymbol table name = Map.lookup name table

-- Function to construct the symbol table from the AST
buildSymbolTable :: Exp -> SymbolTable -> SymbolTable
buildSymbolTable (Program (Block stmts)) table =
    foldl processStmt table stmts
buildSymbolTable _ table = table

-- ///////////////////////////////////////////////////////////////////
-- Function to process statements and include type checking
processStmt :: SymbolTable -> Exp -> SymbolTable
-- Handle variable declarations with assignments
processStmt table (Decl [Assign (Var name) expr]) =
    let exprType = inferType expr table
    in case lookupSymbol table name of
        -- If variable is already declared, ensure types match
        Just symbol ->
            if symbolType symbol == exprType
            then table -- Types match, no need to update
            else error $ "Type mismatch: Variable " ++ name ++ " expected type " ++ symbolType symbol ++ " but got " ++ exprType
        -- If not declared, insert into the symbol table
        Nothing -> insertSymbol table (Symbol name exprType)
processStmt table (Decl [Assign (Val name) expr]) =
    let exprType = inferType expr table
    in case lookupSymbol table name of
        -- Handle value declarations (immutability check can be added later)
        Just _ -> error $ "Immutable variable " ++ name ++ " is already declared"
        Nothing -> insertSymbol table (Symbol name exprType)

-- Handle assignments separately
processStmt table (Assign (Var name) expr) =
    let exprType = inferType expr table
    in case lookupSymbol table name of
        -- If variable exists, check for type consistency
        Just symbol ->
            if symbolType symbol == exprType
            then table -- Types match, assignment is valid
            else error $ "Type mismatch: Variable " ++ name ++ " expected type " ++ symbolType symbol ++ " but got " ++ exprType
        -- If variable is not declared, throw an error
        Nothing -> error $ "Undefined variable: " ++ name
processStmt table (Assign (Val name) expr) =
    error $ "Cannot reassign to immutable value: " ++ name

-- Handle complex expressions like blocks
processStmt table (Block stmts) =
    foldl processStmt table stmts

-- Ignore standalone expressions
processStmt table _ = table


-- ///////////////////////////////////////////////
-- Function to infer the type of an expression
inferType :: Exp -> SymbolTable -> String
-- Base cases
inferType (Num _) _ = "Int"
inferType (Bool _) _ = "Bool"
inferType (String _) _ = "String"

-- Lookup variables in the symbol table
inferType (Var name) table =
    case lookupSymbol table name of
        Just symbol -> symbolType symbol
        Nothing -> "Unknown"

-- Logical and arithmetic operations
inferType (And e1 e2) table = checkBinaryOp e1 e2 "Bool" table
inferType (Or e1 e2) table = checkBinaryOp e1 e2 "Bool" table
inferType (Not e) table = checkUnaryOp e "Bool" table

inferType (Add e1 e2) table = checkBinaryOp e1 e2 "Int" table
inferType (Sub e1 e2) table = checkBinaryOp e1 e2 "Int" table
inferType (Div e1 e2) table = checkBinaryOp e1 e2 "Int" table
inferType (Mult e1 e2) table = checkBinaryOp e1 e2 "Int" table

-- Default case
inferType _ _ = "Unknown"

-- Helper for binary operations
checkBinaryOp :: Exp -> Exp -> String -> SymbolTable -> String
checkBinaryOp e1 e2 expectedType table =
    if inferType e1 table == expectedType && inferType e2 table == expectedType
    then expectedType
    else "Unknown"

-- Helper for unary operations
checkUnaryOp :: Exp -> String -> SymbolTable -> String
checkUnaryOp e expectedType table =
    if inferType e table == expectedType
    then expectedType
    else "Unknown"
