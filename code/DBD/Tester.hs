{-
 -  DBD/Tester.hs
 -
 -  This module provides a non-interactive program that runs a variety
 -  of pre-defined test cases to validate the interpreter.
 -
 -  Author: Team-Closure
 -}
import DBD.Environment
import DBD.Interp
import DBD.Val
import Test.Base

import Control.Exception

test_env = extend' (RibcageEnv []) [("i",(NumVal 1)),("v",(NumVal 5)),("x",(NumVal 10))]

main :: IO ()
main = test_all test_list where
    test_all [] = return ()
    test_all (t:ts) = do
        case t of
            (NumTest  name prog soln) ->  putStrLn $ test expval_to_num  soln prog name
            (BoolTest name prog soln) ->  putStrLn $ test expval_to_bool soln prog name
            (ErrTest  name prog) -> do
                putStrLn $ "FAILED! (" ++ name ++ " = " ++ (show $ interp prog test_env)
                `catch` (\ e -> do let err = show (e :: SomeException)
                                   putStrLn $ "success (" ++ name ++ ")")
        test_all ts

test :: Eq a => (ExpVal -> a) -> a -> String -> String -> String
test cast soln prog name = result ++ " (" ++ name ++ ")" where
    expval = interp prog test_env
    result = if cast expval == soln then "success" else "FAILED!"

