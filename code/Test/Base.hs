module Test.Base where

data Test
    = ErrTest  { testname :: String, testsrc :: String }
    | IntTest  { testname :: String, testsrc :: String, numresult  :: Int }
    | BoolTest { testname :: String, testsrc :: String, boolresult :: Bool }
    | ListNumTest  { testname :: String, testsrc :: String, numsresult :: [Int] }
    | ListBoolTest { testname :: String, testsrc :: String, boolsresult :: [Bool] }

