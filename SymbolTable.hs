module SymbolTable where

import AST
import qualified Data.Map as Map

-- Data type for a symbol
data Symbol = Symbol {
    symbolName :: String,
    symbolType :: String,
    symbolScope :: Int  -- Integer to represent the depth of the scope
} deriving (Show, Eq)

-- Symbol table is now a list of key-value pairs
type SymbolTable = [(String, Symbol)]  -- List of key-value pairs

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
processStmt (Decl [Assign (Var name) expr]) table scope =
    let typ = inferType expr
    in insertSymbol table (Symbol name typ scope)
processStmt (Decl [Assign (Val name) expr]) table scope =
    let typ = inferType expr
    in insertSymbol table (Symbol name typ scope)
processStmt (Block stmts) table scope =
    foldl (\tbl stmt -> processStmt stmt tbl (scope + 1)) table stmts
processStmt _ table _ = table

-- Function to infer the type of an expression
inferType :: Exp -> String
inferType (Num _) = "Int"
inferType (Bool _) = "Bool"
inferType (String _) = "String"
inferType _ = "Unknown"
