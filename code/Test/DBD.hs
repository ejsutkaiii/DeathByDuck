{-
 -  Test/DBD.hs
 -
 -  Test cases for the DBD language.
 -}
module Test.DBD where

import Test.Base

test_list = [
    NumTest "positive-const" "777" 777,
    NumTest "negative-const" "-777" (-777),
    NumTest "sub-test" "sub(778, 1)" 777,
    NumTest "add-test" "add(776,1" (777),
    NumTest "pwr-test" "pwr(3,2)" 9,

    ]

