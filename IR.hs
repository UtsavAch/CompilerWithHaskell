module IR where

-- temporaries and labels are just strings
type Temp  = String
type Label = String
type Ident = String

data Instr
  = MOVE Temp Temp                -- t1 := t2
  | MOVEI Temp Int                -- t  := n
  | MOVES Temp String             -- Load string into memory
  | ADD Temp Temp Temp            -- t1 := t2 + t3
  | SUB Temp Temp Temp            -- t1 := t2 - t3
  | MULT Temp Temp Temp           -- t1 := t2 * t3
  | DIV Temp Temp Temp            -- t1 := t2 / t3
  | MOD Temp Temp Temp            -- t1 := t2 % t3
  | AND Temp Temp Temp            -- t1 := t2 AND t3
  | OR Temp Temp Temp             -- t1 := t2 OR t3
  | NOT Temp Temp                 -- t1 := NOT t2
  | LABEL Label                   -- define label
  | JUMP Label                    -- unconditional jump
  | COND Temp BinOp Temp Label Label  -- conditional jump
  | PRINT Temp                    -- print value
  | PRINTLN Temp                  -- print string
  | READ Temp                     -- read user input
  | WHILE (Instr) [Instr]        -- Represents a while loop: condition + body
  deriving (Eq, Show)

data BinOp
  = Eq | Neq | Lt | LtEq | Gt | GtEq deriving (Eq, Show)
