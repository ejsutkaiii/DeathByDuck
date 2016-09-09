{-
 -  DBD/Closure.hs
 -
 - Broken: causes monitors to fly against walls
 - 
 -  Author: Team-Closure
 -
module DBD.Closure where

import DBD.AST

data Proc env
    = Proc    { getparam :: String, getbody :: Exp, getenv :: env }
    | RecFunc { getparam :: String, getbody :: Exp }

instance Show (Proc e) where
    show proc = "proc" ++ (show $ getparam proc) ++ "{" ++ (show $ getbody proc) ++ "}"

-}