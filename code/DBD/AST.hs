{-
 -  DBD/AST.hs
 -
 -  This module provides types for representing the abstract syntax tree.
 -
 -  Author: Team-Closure
 -}
module DBD.AST where

{- Parse types -}

-- Represent a variable name using a Haskell String
type Id = String

-- The AST node for a program contains an expression
data Pgm = Pgm Exp deriving (Eq,Show)

-- There are several types of AST node for expressions
data Exp
    = ConstExp Int
    | VarExp Id
    | SubExp Exp Exp
    | AddExp Exp Exp
    | PwrExp Exp Exp
    | DivExp Exp Exp
    | MulExp Exp Exp	
    | NegativeExp Int
    | SetExp ListOfExp Exp 
    | IfExp Exp Exp Exp
    | IsZeroExp Exp
    | IsEqualExp Exp Exp
    | IsGreaterExp Exp Exp
    | IsLessExp Exp Exp
    | IsGreaterEqualExp Exp Exp
    | IsLessEqualExp Exp Exp
    | EmptyListExp
    | IsNullExp Exp
    | AddListElemExp Exp Exp
    | GetTailExp Exp
    | GetHeadExp Exp
    | GetElemAtExp Exp Exp
    deriving (Eq,Show)

data ListOfExp
    = ListEnd Id Exp
    | ListPce Id Exp ListOfExp
	deriving (Eq,Show)
 
