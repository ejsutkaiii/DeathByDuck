{-
 - DBD/Val.hs
 - 
 -  This module provides types for representing the expressed values
 -  of the language.
 -
 -  Author: Team-Closure
 -}
module DBD.Val where

-- ADT for represented expressed values
data ExpVal
    = IntVal    { expval_to_int  :: Int  }
    | BoolVal   { expval_to_bool :: Bool }
    | ListVal   { expval_to_list :: [ExpVal] }
	| StringVal { expval_to_string :: String }
    deriving Eq

instance Show ExpVal where
    show (IntVal  i) = "(IntVal "  ++ (show i) ++ ")"
    show (BoolVal z) = "(BoolVal " ++ (show z) ++ ")"
    show (ListVal l) = "(ListVal " ++ (show l) ++ ")"
    show (StringVal s) = "(StringVal " ++ (show s) ++ ")"
