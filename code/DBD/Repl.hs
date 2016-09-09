{-
 -  DBD/Repl.hs
 -
 -  This module provides an interactive Read-Eval-Print-Loop for the language.
 -
 -  Author: Team-Closure
 -}
import DBD.Environment
import DBD.Val
import DBD.Interp
import Control.Monad
import Control.Exception
import System.IO

-- interpreter implementation
main :: IO()
main = repl init_env

init_env = extend' (empty :: RibcageEnv)
                   [("i",(IntVal 1)),("v",(IntVal 5)),("x",(IntVal 10))]

repl :: Env e => e -> IO()
repl ρ = do
    putStr "DBD> "
    hFlush stdout
    prog <- getLine
    when (prog /= ":q") $ do
        when (not . null $ prog) $ do
            catch (putStrLn $ show $ interp prog ρ)
                (\ e -> do let err = show (e :: ErrorCall)
                           hPutStr stderr ("\n<repl>: " ++ err++ "\n")
                           return ())
        repl ρ

