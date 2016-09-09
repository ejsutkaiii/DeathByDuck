 {-
  -  DBD/Interp.hs
  -
  -  This module provides the core interpreter implementation.
  -
  - Things implemented that work:
  - sub, mul, add, pwr, zero?, greater?, less?, greaterEqual?, lessEqual?,
  - if statements, set and return variable bindings, emptyList, getTail, getHead,
  - and null?
  -
  - Things implemented that dont work:
  - div, getElemAt, tester.hs, Checker.hs, Closure.hs, Prelude.hs, Type.hs,
  - TypeEnv.hs
  - 
  - Status: Code as is will build and run. Anything implemented and does not work
  - likely to cause the code to crash was commented out.
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -  Author: Team-Closure
  -}
  module DBD.Interp (interp) where

import DBD.Environment
import DBD.Parser
import DBD.AST
import DBD.Val
import Data.List

-- top-level interpreter routine
interp :: Env e => String -> e -> ExpVal
interp s ρ = value_of_program (parse s) ρ

-- semantic reduction of a program
value_of_program :: Env e => Pgm -> e -> ExpVal
value_of_program (Pgm exp) ρ = value_of exp ρ

-- semantic reductions for expressions
value_of :: Env e => Exp -> e -> ExpVal

value_of (ConstExp n) ρ = IntVal n

value_of (VarExp x) ρ = apply ρ x

value_of (NegativeExp n) ρ = IntVal (-n)

value_of (SetExp expLst exp) ρ = value_of exp ρ'
    where ρ' = extend' ρ (varValsFromLOE expLst ρ)

value_of (SubExp exp₁ exp₂) ρ = IntVal (n₁ - n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ
		  
value_of (AddExp exp₁ exp₂) ρ = IntVal (n₁ + n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ
		  
value_of (PwrExp exp₁ exp₂) ρ = IntVal (n₁ ^ n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ 

{-value_of (DivExp exp₁ exp₂) ρ = DoubleVal (n₁ / n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ 
-}

value_of (MulExp exp₁ exp₂) ρ = IntVal (n₁ * n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ

value_of (IfExp exp₁ exp₂ exp₃) ρ
    | test == True = value_of exp₂ ρ
    | otherwise    = value_of exp₃ ρ
    where (BoolVal test) = value_of exp₁ ρ

value_of (IsZeroExp exp₁) ρ = BoolVal (n == 0)
    where (IntVal n) = value_of exp₁ ρ
	
value_of (IsEqualExp exp₁ exp₂) ρ = BoolVal (n₁ == n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ

value_of (IsGreaterExp exp₁ exp₂) ρ = BoolVal (n₁ > n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ
		
value_of (IsLessExp exp₁ exp₂) ρ = BoolVal (n₁ < n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ

value_of (IsGreaterEqualExp exp₁ exp₂) ρ = BoolVal (n₁ >= n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ
		  
value_of (IsLessEqualExp exp₁ exp₂) ρ = BoolVal (n₁ <= n₂)
    where (IntVal n₁) = value_of exp₁ ρ
          (IntVal n₂) = value_of exp₂ ρ
		  
value_of EmptyListExp p = ListVal []

value_of (IsNullExp exp₁) ρ = BoolVal ( null n == True )
    where (ListVal n) =  value_of exp₁ ρ

value_of (AddListElemExp exp₁ exp₂)  ρ = ListVal (val:vals)
  where val = value_of exp₁ ρ
        (ListVal vals) = value_of exp₂ ρ

value_of (GetTailExp exp₁) ρ = ListVal (tail l₁)
 where (ListVal l₁) = value_of exp₁ ρ

value_of (GetHeadExp exp₁) ρ = head vals
 where (ListVal vals) = value_of exp₁ ρ
 
{-value_of (GetElemAtExp exp₁ exp₂) ρ = ListVal (ns !! n)
     where IntVal (n) = value_of exp₁ ρ
           ListVal (ns) = value_of exp₂  ρ
-}

--value_of (LetExp expLst exp) helpers
getExps :: ListOfExp -> [Exp]
getExps expLst@(ListEnd _ exp) = [exp]
getExps expLst@(ListPce _ exp nextLst) = [exp]++(getExps nextLst)

getVars :: ListOfExp -> [Id]
getVars expLst@(ListEnd var _) = [var]
getVars expLst@(ListPce var _ nextLst) = [var]++(getVars nextLst)

getVals :: (Env e) => [Exp] -> e -> [ExpVal]
getVals expLst env = map (value_of') expLst
	where value_of' exp = value_of exp env

zipVarsVals :: [Id] -> [ExpVal] -> [(Id, ExpVal)]
zipVarsVals vars vals = zip vars vals

varValsFromLOE :: (Env e) => ListOfExp -> e -> [(Id, ExpVal)]
varValsFromLOE expLst env = zipVarsVals (getVars expLst) (getVals (getExps expLst) env)

