{-
 -  DBD/Checker.hs
 -  
 -  Broken: causes code to flip desk over
 -
 -  Author: Team-Closure
 
module DBD.Checker (check,type_of_program) where

import           DBD.AST
import           DBD.Closure
import           DBD.TypeEnv
import           DBD.Val

check :: TEnv e => e -> String -> Pgm
check ρ s = type_of_program ρ prog `seq` prog
    where prog = parse s

report_unequal_types :: Type -> Type -> Exp -> Type
report_unequal_types t₁ t₂ exp = error $ "Types didn't match: "
    ++ show t₁ ++ " /= " ++ show t₂ ++ " in " ++ show (show exp)

type_of_program :: TEnv e => e -> Pgm -> Type
type_of_program ρ (Pgm e) = type_of ρ e

type_of :: TEnv e => e -> Exp -> Type

type_of _ (ConstExp _) = IntType

type_of ρ (VarExp x) = tapply ρ x

type_of ρ (IsZeroExp exp)
    | t == IntType = BoolType
    | otherwise    = report_unequal_types IntType t exp
    where t = type_of ρ exp

type_of ρ (SubExp exp₁ exp₂)
    | t₁ /= IntType = report_unequal_types IntType t₁ exp₁
    | t₂ /= IntType = report_unequal_types IntType t₂ exp₂
    | otherwise     = IntType
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂

type_of ρ (DivExp exp₁ exp₂)
    | t₁ /= IntType = report_unequal_types IntType t₁ exp₁
    | t₂ /= IntType = report_unequal_types IntType t₂ exp₂
    | otherwise     = IntType
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂

type_of ρ (MulExp exp₁ exp₂)
    | t₁ /= IntType = report_unequal_types IntType t₁ exp₁
    | t₂ /= IntType = report_unequal_types IntType t₂ exp₂
    | otherwise     = IntType
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂

type_of ρ (AddExp exp₁ exp₂)
    | t₁ /= IntType = report_unequal_types IntType t₁ exp₁
    | t₂ /= IntType = report_unequal_types IntType t₂ exp₂
    | otherwise     = IntType
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂

type_of ρ (SubExp exp₁ exp₂)
    | t₁ /= IntType = report_unequal_types IntType t₁ exp₁
    | t₂ /= IntType = report_unequal_types IntType t₂ exp₂
    | otherwise     = IntType
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂
		  
type_of ρ (PwrExp exp₁ exp₂)
    | t₁ /= IntType = report_unequal_types IntType t₁ exp₁
    | t₂ /= IntType = report_unequal_types IntType t₂ exp₂
    | otherwise     = IntType
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂


type_of ρ (IfExp exp₁ exp₂ exp₃)
    | t₁ /= BoolType = report_unequal_types BoolType t₁ exp₁
    | t₂ /= t₃       = report_unequal_types t₂ t₃ exp₂
    | otherwise      = t₂
    where t₁ = type_of ρ exp₁
          t₂ = type_of ρ exp₂
          t₃ = type_of ρ exp₃

{--- Auxiliary functions ---}

-}
