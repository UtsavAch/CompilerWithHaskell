module SymbolTable where

import AST

-- Data type for a symbol
data Symbol = Symbol {
    symbolName :: String,
    symbolType :: String,
    symbolScope :: Int  -- Depth of the scope
} deriving (Show, Eq)

-- Symbol table as a list of key-value pairs
type SymbolTable = [(String, Symbol)]

-- Insert a new symbol into the table
insertSymbol :: SymbolTable -> Symbol -> SymbolTable
insertSymbol table symbol = table ++ [(symbolName symbol, symbol)]

-- Lookup a symbol by name
lookupSymbol :: SymbolTable -> String -> Maybe Symbol
lookupSymbol table name = lookup name table

-- Delete symbols in a specific scope (on scope exit)
removeScope :: SymbolTable -> Int -> SymbolTable
removeScope table scope = filter (\(_, s) -> symbolScope s /= scope) table

-- Function to construct the symbol table from the AST
buildSymbolTable :: Exp -> SymbolTable -> Int -> SymbolTable
buildSymbolTable (Program (Block stmts)) table scope =
    foldl (\tbl stmt -> processStmt stmt tbl scope) table stmts
buildSymbolTable _ table _ = table

-- Helper function to process statements and update the symbol table
processStmt :: Exp -> SymbolTable -> Int -> SymbolTable
-- Handle variable and value declarations with assignments
processStmt (Decl [Assign (Val name) expr]) table scope =
    let typ = inferType expr table
    in insertSymbol table (Symbol name typ scope)
processStmt (Decl [Assign (Var name) expr]) table scope =
    let typ = inferType expr table
    in insertSymbol table (Symbol name typ scope)
-- Handle complex expressions like blocks
processStmt (Block stmts) table scope =
    foldl (\tbl stmt -> processStmt stmt tbl (scope + 1)) table stmts
-- Handle standalone expressions (e.g., And, Or, etc.)
processStmt _ table _ = table

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