{
module DBD.Parser (parse) where

import Data.Char
import DBD.AST
import DBD.Scanner
}

%name calc
%tokentype { Token }
%error { parseError }

%token
  Int              { TInt $$ }
  Var              { TVar $$ }
  "="              { TAssign }
  ","              { TComma }
  "("              { TLParen }
  ")"              { TRParen }
  "minus"          { TNegative}
  "sub"            { TSub }
  "add"            { TAdd }
  "pwr"            { TPwr }
  "div"            { TDiv }
  "mul"            { TMul }
  "set"            { TSet }
  "return"         { TReturn }
  "if"             { TIf }
  "then"           { TThen }
  "else"           { TElse }
  "zero?"          { TIsZero }
  "equal?"         { TIsEqual }
  "greater?"       { TIsGreater }
  "less?"          { TIsLess }
  "greaterEqual?"  { TIsGreaterEqual }
  "lessEqual?"     { TIsLessEqual }
  "emptyList"      { TEmptyList }
  "addListElem"    { TAddListElem }
  "getTail"        { TGetTail }
  "getHead"        { TGetHead }
  "getElemAt"      { TGetElemAt}
  "null?"          { TNull }
%%

{- GRAMMATICAL PRODUCTIONS -}

Pgm : Exp { Pgm $1 }
Exp : Int { ConstExp $1 }
    | Var { VarExp $1 }
    | "sub" "(" Exp "," Exp ")" { SubExp $3 $5 }
    | "add" "(" Exp "," Exp ")" { AddExp $3 $5 }
    | "pwr" "(" Exp "," Exp ")" { PwrExp $3 $5 }
    | "div" "(" Exp "," Exp ")" { DivExp $3 $5 }
    | "mul" "(" Exp "," Exp ")" { MulExp $3 $5 }
    | "minus" "(" Int ")" { NegativeExp $3 }
    | "set" ListOfExp Exp { SetExp $2 $3 }
    | "if" Exp "then" Exp "else" Exp { IfExp $2 $4 $6 }
    | "zero?" "(" Exp ")" { IsZeroExp $3 }
    | "equal?" "(" Exp "," Exp ")" { IsEqualExp $3 $5 }
    | "greater?" "(" Exp "," Exp ")" { IsGreaterExp $3 $5 }
    | "less?" "(" Exp "," Exp ")" { IsLessExp $3 $5 }
    | "greaterEqual?" "(" Exp "," Exp ")" { IsGreaterEqualExp $3 $5 }
    | "lessEqual?" "(" Exp "," Exp ")" { IsLessEqualExp $3 $5 }
	| "emptyList" { EmptyListExp }
    | "getTail" "(" Exp ")" { GetTailExp $3 }
    | "getHead" "(" Exp ")" { GetHeadExp $3 }
    | "addListElem" "(" Exp "," Exp ")" { AddListElemExp $3 $5 }
    | "getElemAt" "(" Exp "," Exp ")" { GetElemAtExp $3 $5 }
	| "null?" "(" Exp ")" { IsNullExp $3 }

ListOfExp : Var "=" Exp "return" { ListEnd $1 $3 }
    | Var "=" Exp ListOfExp { ListPce $1 $3 $4 }

VarExp : {[]}
    | Var "=" Exp VarExp { ($1, $3):$4 }
    
{

parseError :: [Token] -> a
parseError _ = error "Parse error"

-- Exported parser includes lexical analyzer front-end
parse = calc . lexer

}

