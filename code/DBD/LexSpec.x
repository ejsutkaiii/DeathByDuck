{
module DBD.Scanner (lexer, Token(..)) where

}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

$graphic    = $printable # $white

@char       = \' ($graphic # \')* \'
@string     = \" ($graphic # \")* \"

tokens :-
  $white+               ;
  "="                   { \s -> TAssign }
  "("                   { \s -> TLParen }
  "set"                 { \s -> TSet }
  "return"              { \s -> TReturn }
  ")"                   { \s -> TRParen }
  ","                   { \s -> TComma }
  "sub"                 { \s -> TSub }
  "add"                 { \s -> TAdd }
  "pwr"                 { \s -> TPwr }
  "div"                 { \s -> TDiv }
  "mul"                 { \s -> TMul }
  "if"                  { \s -> TIf }
  "then"                { \s -> TThen }
  "else"                { \s -> TElse }
  "zero?"               { \s -> TIsZero }
  "equal?"              { \s -> TIsEqual }
  "greater?"            { \s -> TIsGreater }
  "less?"               { \s -> TIsLess }
  "greaterEqual?"       { \s -> TIsGreaterEqual }
  "lessEqual?"          { \s -> TIsLessEqual }
  "emptyList"           { \s -> TEmptyList }
  "addListElem"         { \s -> TAddListElem }
  "getTail"             { \s -> TGetTail}
  "getHead"             { \s -> TGetHead }
  "getElemAt"           { \s -> TGetElemAt }
  "null?"               { \s -> TNull }     
  "-"?$digit+           { \s -> TInt (read s) }
  $alpha[$alpha $digit \_ \- \? \']*  { \s -> TVar s }
{

-- The token type:
data Token
    = TComma
    | TSet
    | TReturn
    | TAssign
    | TLParen
    | TRParen
    | TVar String
    | TInt Int
    | TSub
    | TAdd
    | TDiv
    | TPwr
    | TMul
    | TNegative
    | TIf
    | TThen
    | TElse
    | TIsZero
    | TIsEqual
    | TIsGreater
    | TIsLess
    | TIsGreaterEqual
    | TIsLessEqual
    | TEmptyList
    | TAddListElem
    | TGetTail
    | TGetHead
    | TGetElemAt
    | TNull
    deriving (Eq,Show)

-- Each action has type :: String -> Token

lexer = alexScanTokens

}

