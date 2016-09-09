{-
 -  DBD/Enviroment.hs
 -
 -
 -
 -  Author: Team-Closure
 -}
module DBD.Environment (Env(..),DSEnv,AListEnv,RibcageEnv(..)) where

import Data.List
import Data.Maybe

import DBD.Val

nobinding = error . ("No binding found for \""++) . (++"\"")

type Var = String
type Binding v = (Var,v)

{- interface for an environment (symbol-to-value mapping) -}
class Show e => Env e where
    -- checks for an empty environment
    is_empty :: e -> Bool
    -- construct an empty environment
    empty :: e
    -- extracts form an environment the mapped value if search symbol is present
    apply :: e -> String -> ExpVal
    -- construct new environment from existing environment plus a new binding
    extend :: e -> String -> ExpVal -> e
    -- construct new environment from existing environment plus new bindings
    extend' :: e -> [Binding ExpVal] -> e
    extend' e ((x,v):xvs) = extend' (extend e x v) xvs
    extend' e [] = e

{- Recursive "data structure" representation for environments -}
data DSEnv
    = EmptyDSEnv
    | DSEnv String ExpVal DSEnv

dsEnvToList :: DSEnv -> [Binding ExpVal]
dsEnvToList EmptyDSEnv = []
dsEnvToList (DSEnv x v saved_env) = (x,v):(dsEnvToList saved_env)

instance Show DSEnv where
    show env = show $ dsEnvToList env 

instance Env DSEnv where
    is_empty EmptyDSEnv = True
    is_empty _ = False
    empty = EmptyDSEnv
    extend e x v = DSEnv x v e
    apply EmptyDSEnv x = nobinding x
    apply e'@(DSEnv x v e) y
        | x == y = v
        | otherwise = apply e y

{- "Association-list" representation for environments -}
newtype AListEnv = AListEnv [Binding ExpVal]

instance Show AListEnv where
    show (AListEnv xvs) = show xvs

instance Env AListEnv where
    is_empty (AListEnv xs) = null xs
    empty = (AListEnv [])
    extend (AListEnv xs) x v = AListEnv ((x,v):xs)
    apply (AListEnv []) y = nobinding y
    apply e@(AListEnv (x:xs)) y
        | fst x == y = snd x
        | otherwise = apply (AListEnv xs) y

{- "Ribcage" representation for environments -}
newtype RibcageEnv = RibcageEnv [[Binding ExpVal]]

instance Show RibcageEnv where
    show (RibcageEnv xvs) = show $ nubBy isdup $ concat xvs where
        isdup = \ (x,_) (y,_) -> x == y

instance Env RibcageEnv where
    is_empty (RibcageEnv []) = True
    is_empty _ = False
    empty = (RibcageEnv [])
    extend  (RibcageEnv bss) x v = RibcageEnv (bs:bss) where bs = [(x,v)]
    extend' (RibcageEnv bss) bs = RibcageEnv (bs:bss)
    apply e@(RibcageEnv bss) x = case vs of
        [] -> nobinding x
        _  -> fromJust $ head vs
        where vs = filter isJust $ map (lookup x) bss

