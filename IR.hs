{-
  Data types for 3-addresss Intermediate code
  Pedro Vasconcelos, 2022-23
-}
module IR where

-- temporaries and labels are just strings
type Temp  = String
type Label = String
type Ident = String

data Instr
  = MOVE Temp Temp                -- t1 := t2
  | MOVEI Temp Int                -- t  := n
  | MOVES Temp String
  | ADD Temp Temp Temp
  | SUB Temp Temp Temp
  | MULT Temp Temp Temp
  | DIV Temp Temp Temp
  | MOD Temp Temp Temp
  | AND Temp Temp Temp
  | OR Temp Temp Temp
  | NOT Temp Temp
  | LABEL Label                   -- define label
  | JUMP Label                    -- unconditional jump
  | COND Temp BinOp Temp Label Label  -- conditional jump
  | CALL Temp Label [Temp]         -- call a function
  | RETURN Temp                    -- return from a function
  | ATTRIARR Temp Temp Temp        -- temp = M[Atom]
  | INDEXARR Temp Temp Temp        -- M[Atom] = temp
  | PRINT Temp
  | PRINTLN Temp
  | SCAN Temp
  deriving (Eq, Show)

data BinOp
  = Eq | Neq | Lt | LtEq | Gt | GtEq deriving (Eq, Show)