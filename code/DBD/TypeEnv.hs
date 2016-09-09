{-
 -  DBD/TypeEnvironment.hs
 -
 - broken: much like my spirit in trying to implement a type checker 
 -
 -  Author: Team-Closure
 -
module DBD.TypeEnv (TEnv(..),DSTEnv,AListTEnv,RibcageTEnv(..),Type(..)) where

import           DBD.Closure
import           DBD.Type
import           Data.List
import           Data.Maybe

nobinding = error . ("No binding found for \""++) . (++"\"")

type Var = String
type Binding t = (Var,t)

{- interface for an environment (symbol-to-value mapping) -}
class Show e => TEnv e where
    -- checks for an tempty environment
    is_tempty :: e -> Bool
    -- construct an tempty environment
    tempty :: e
    -- extracts form an environment the mapped value if search symbol is present
    tapply :: e -> String -> Type
    -- construct new environment from existing environment plus a new binding
    textend :: e -> String -> Type -> e
    -- construct new environment from existing environment plus new bindings
    textend' :: e -> [Binding Type] -> e
    textend' e ((x,t):xts) = textend' (textend e x t) xts
    textend' e [] = e

{- Recursive "data structure" representation for environments -}
data DSTEnv
    = EmptyDSTEnv
    | DSTEnv String Type DSTEnv

dsEnvToList :: DSTEnv -> [Binding Type]
dsEnvToList EmptyDSTEnv = []
dsEnvToList (DSTEnv x t saved_env) = (x,t):(dsEnvToList saved_env)

instance Show DSTEnv where
    show env = show $ dsEnvToList env

instance TEnv DSTEnv where
    is_tempty EmptyDSTEnv = True
    is_tempty _ = False
    tempty = EmptyDSTEnv
    textend e x t = DSTEnv x t e
    tapply EmptyDSTEnv x = nobinding x
    tapply e'@(DSTEnv x t e) y
        | x == y    = t
        | otherwise = tapply e y

{- "Association-list" representation for environments -}
newtype AListTEnv = AListTEnv [Binding Type]

instance Show AListTEnv where
    show (AListTEnv xvs) = show xvs

instance TEnv AListTEnv where
    is_tempty (AListTEnv xs) = null xs
    tempty = (AListTEnv [])
    textend (AListTEnv xs) x t = AListTEnv ((x,t):xs)
    tapply (AListTEnv []) y = nobinding y
    tapply e@(AListTEnv (x:xs)) y
        | fst x == y = snd x
        | otherwise = tapply (AListTEnv xs) y

{- "Ribcage" representation for environments -}
newtype RibcageTEnv = RibcageTEnv [[Binding Type]]

instance Show RibcageTEnv where
    show (RibcageTEnv xvs) = show $ nubBy isdup $ concat xvs where
        isdup = \ (x,_) (y,_) -> x == y

instance TEnv RibcageTEnv where
    is_tempty (RibcageTEnv []) = True
    is_tempty _ = False
    tempty = (RibcageTEnv [])
    textend  (RibcageTEnv bss) x t = RibcageTEnv (bs:bss) where bs = [(x,t)]
    textend' (RibcageTEnv bss) bs  = RibcageTEnv (bs:bss)
    tapply e@(RibcageTEnv bss) x = case ts of
        [] -> nobinding x
        _  -> fromJust $ head ts
        where ts = filter isJust $ map (lookup x) bss

-}
