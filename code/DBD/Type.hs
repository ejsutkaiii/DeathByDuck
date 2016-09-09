{-
 -  CHECKED/Type.hs
 -
 - broken: causes side effects of hair loss 
 - 
 -  Author: Team-Closure
 -
module DBD.Type where

data Type
    = IntType
    | BoolType
	| ProcType Type Type 
    deriving (Eq)

instance Show Type where
    show IntType  = "int"
    show BoolType = "bool"
    show (ProcType targ tres) = "(" ++ show targ ++ " -> " ++ show tres ++ ")"
-}