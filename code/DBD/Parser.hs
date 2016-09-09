{-# OPTIONS_GHC -w #-}
module DBD.Parser (parse) where

import Data.Char
import DBD.AST
import DBD.Scanner
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

action_0 (8) = happyShift action_3
action_0 (9) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (22) = happyShift action_12
action_0 (25) = happyShift action_13
action_0 (26) = happyShift action_14
action_0 (27) = happyShift action_15
action_0 (28) = happyShift action_16
action_0 (29) = happyShift action_17
action_0 (30) = happyShift action_18
action_0 (31) = happyShift action_19
action_0 (32) = happyShift action_20
action_0 (33) = happyShift action_21
action_0 (34) = happyShift action_22
action_0 (35) = happyShift action_23
action_0 (36) = happyShift action_24
action_0 (4) = happyGoto action_25
action_0 (5) = happyGoto action_2
action_0 _ = happyFail

action_1 (8) = happyShift action_3
action_1 (9) = happyShift action_4
action_1 (14) = happyShift action_5
action_1 (15) = happyShift action_6
action_1 (16) = happyShift action_7
action_1 (17) = happyShift action_8
action_1 (18) = happyShift action_9
action_1 (19) = happyShift action_10
action_1 (20) = happyShift action_11
action_1 (22) = happyShift action_12
action_1 (25) = happyShift action_13
action_1 (26) = happyShift action_14
action_1 (27) = happyShift action_15
action_1 (28) = happyShift action_16
action_1 (29) = happyShift action_17
action_1 (30) = happyShift action_18
action_1 (31) = happyShift action_19
action_1 (32) = happyShift action_20
action_1 (33) = happyShift action_21
action_1 (34) = happyShift action_22
action_1 (35) = happyShift action_23
action_1 (36) = happyShift action_24
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 _ = happyReduce_3

action_5 (12) = happyShift action_45
action_5 _ = happyFail

action_6 (12) = happyShift action_44
action_6 _ = happyFail

action_7 (12) = happyShift action_43
action_7 _ = happyFail

action_8 (12) = happyShift action_42
action_8 _ = happyFail

action_9 (12) = happyShift action_41
action_9 _ = happyFail

action_10 (12) = happyShift action_40
action_10 _ = happyFail

action_11 (9) = happyShift action_39
action_11 (6) = happyGoto action_38
action_11 _ = happyFail

action_12 (8) = happyShift action_3
action_12 (9) = happyShift action_4
action_12 (14) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (16) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (18) = happyShift action_9
action_12 (19) = happyShift action_10
action_12 (20) = happyShift action_11
action_12 (22) = happyShift action_12
action_12 (25) = happyShift action_13
action_12 (26) = happyShift action_14
action_12 (27) = happyShift action_15
action_12 (28) = happyShift action_16
action_12 (29) = happyShift action_17
action_12 (30) = happyShift action_18
action_12 (31) = happyShift action_19
action_12 (32) = happyShift action_20
action_12 (33) = happyShift action_21
action_12 (34) = happyShift action_22
action_12 (35) = happyShift action_23
action_12 (36) = happyShift action_24
action_12 (5) = happyGoto action_37
action_12 _ = happyFail

action_13 (12) = happyShift action_36
action_13 _ = happyFail

action_14 (12) = happyShift action_35
action_14 _ = happyFail

action_15 (12) = happyShift action_34
action_15 _ = happyFail

action_16 (12) = happyShift action_33
action_16 _ = happyFail

action_17 (12) = happyShift action_32
action_17 _ = happyFail

action_18 (12) = happyShift action_31
action_18 _ = happyFail

action_19 _ = happyReduce_18

action_20 (12) = happyShift action_30
action_20 _ = happyFail

action_21 (12) = happyShift action_29
action_21 _ = happyFail

action_22 (12) = happyShift action_28
action_22 _ = happyFail

action_23 (12) = happyShift action_27
action_23 _ = happyFail

action_24 (12) = happyShift action_26
action_24 _ = happyFail

action_25 (37) = happyAccept
action_25 _ = happyFail

action_26 (8) = happyShift action_3
action_26 (9) = happyShift action_4
action_26 (14) = happyShift action_5
action_26 (15) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (18) = happyShift action_9
action_26 (19) = happyShift action_10
action_26 (20) = happyShift action_11
action_26 (22) = happyShift action_12
action_26 (25) = happyShift action_13
action_26 (26) = happyShift action_14
action_26 (27) = happyShift action_15
action_26 (28) = happyShift action_16
action_26 (29) = happyShift action_17
action_26 (30) = happyShift action_18
action_26 (31) = happyShift action_19
action_26 (32) = happyShift action_20
action_26 (33) = happyShift action_21
action_26 (34) = happyShift action_22
action_26 (35) = happyShift action_23
action_26 (36) = happyShift action_24
action_26 (5) = happyGoto action_65
action_26 _ = happyFail

action_27 (8) = happyShift action_3
action_27 (9) = happyShift action_4
action_27 (14) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (16) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (18) = happyShift action_9
action_27 (19) = happyShift action_10
action_27 (20) = happyShift action_11
action_27 (22) = happyShift action_12
action_27 (25) = happyShift action_13
action_27 (26) = happyShift action_14
action_27 (27) = happyShift action_15
action_27 (28) = happyShift action_16
action_27 (29) = happyShift action_17
action_27 (30) = happyShift action_18
action_27 (31) = happyShift action_19
action_27 (32) = happyShift action_20
action_27 (33) = happyShift action_21
action_27 (34) = happyShift action_22
action_27 (35) = happyShift action_23
action_27 (36) = happyShift action_24
action_27 (5) = happyGoto action_64
action_27 _ = happyFail

action_28 (8) = happyShift action_3
action_28 (9) = happyShift action_4
action_28 (14) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (16) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (18) = happyShift action_9
action_28 (19) = happyShift action_10
action_28 (20) = happyShift action_11
action_28 (22) = happyShift action_12
action_28 (25) = happyShift action_13
action_28 (26) = happyShift action_14
action_28 (27) = happyShift action_15
action_28 (28) = happyShift action_16
action_28 (29) = happyShift action_17
action_28 (30) = happyShift action_18
action_28 (31) = happyShift action_19
action_28 (32) = happyShift action_20
action_28 (33) = happyShift action_21
action_28 (34) = happyShift action_22
action_28 (35) = happyShift action_23
action_28 (36) = happyShift action_24
action_28 (5) = happyGoto action_63
action_28 _ = happyFail

action_29 (8) = happyShift action_3
action_29 (9) = happyShift action_4
action_29 (14) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (19) = happyShift action_10
action_29 (20) = happyShift action_11
action_29 (22) = happyShift action_12
action_29 (25) = happyShift action_13
action_29 (26) = happyShift action_14
action_29 (27) = happyShift action_15
action_29 (28) = happyShift action_16
action_29 (29) = happyShift action_17
action_29 (30) = happyShift action_18
action_29 (31) = happyShift action_19
action_29 (32) = happyShift action_20
action_29 (33) = happyShift action_21
action_29 (34) = happyShift action_22
action_29 (35) = happyShift action_23
action_29 (36) = happyShift action_24
action_29 (5) = happyGoto action_62
action_29 _ = happyFail

action_30 (8) = happyShift action_3
action_30 (9) = happyShift action_4
action_30 (14) = happyShift action_5
action_30 (15) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (18) = happyShift action_9
action_30 (19) = happyShift action_10
action_30 (20) = happyShift action_11
action_30 (22) = happyShift action_12
action_30 (25) = happyShift action_13
action_30 (26) = happyShift action_14
action_30 (27) = happyShift action_15
action_30 (28) = happyShift action_16
action_30 (29) = happyShift action_17
action_30 (30) = happyShift action_18
action_30 (31) = happyShift action_19
action_30 (32) = happyShift action_20
action_30 (33) = happyShift action_21
action_30 (34) = happyShift action_22
action_30 (35) = happyShift action_23
action_30 (36) = happyShift action_24
action_30 (5) = happyGoto action_61
action_30 _ = happyFail

action_31 (8) = happyShift action_3
action_31 (9) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (18) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (20) = happyShift action_11
action_31 (22) = happyShift action_12
action_31 (25) = happyShift action_13
action_31 (26) = happyShift action_14
action_31 (27) = happyShift action_15
action_31 (28) = happyShift action_16
action_31 (29) = happyShift action_17
action_31 (30) = happyShift action_18
action_31 (31) = happyShift action_19
action_31 (32) = happyShift action_20
action_31 (33) = happyShift action_21
action_31 (34) = happyShift action_22
action_31 (35) = happyShift action_23
action_31 (36) = happyShift action_24
action_31 (5) = happyGoto action_60
action_31 _ = happyFail

action_32 (8) = happyShift action_3
action_32 (9) = happyShift action_4
action_32 (14) = happyShift action_5
action_32 (15) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (18) = happyShift action_9
action_32 (19) = happyShift action_10
action_32 (20) = happyShift action_11
action_32 (22) = happyShift action_12
action_32 (25) = happyShift action_13
action_32 (26) = happyShift action_14
action_32 (27) = happyShift action_15
action_32 (28) = happyShift action_16
action_32 (29) = happyShift action_17
action_32 (30) = happyShift action_18
action_32 (31) = happyShift action_19
action_32 (32) = happyShift action_20
action_32 (33) = happyShift action_21
action_32 (34) = happyShift action_22
action_32 (35) = happyShift action_23
action_32 (36) = happyShift action_24
action_32 (5) = happyGoto action_59
action_32 _ = happyFail

action_33 (8) = happyShift action_3
action_33 (9) = happyShift action_4
action_33 (14) = happyShift action_5
action_33 (15) = happyShift action_6
action_33 (16) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (18) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (22) = happyShift action_12
action_33 (25) = happyShift action_13
action_33 (26) = happyShift action_14
action_33 (27) = happyShift action_15
action_33 (28) = happyShift action_16
action_33 (29) = happyShift action_17
action_33 (30) = happyShift action_18
action_33 (31) = happyShift action_19
action_33 (32) = happyShift action_20
action_33 (33) = happyShift action_21
action_33 (34) = happyShift action_22
action_33 (35) = happyShift action_23
action_33 (36) = happyShift action_24
action_33 (5) = happyGoto action_58
action_33 _ = happyFail

action_34 (8) = happyShift action_3
action_34 (9) = happyShift action_4
action_34 (14) = happyShift action_5
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (19) = happyShift action_10
action_34 (20) = happyShift action_11
action_34 (22) = happyShift action_12
action_34 (25) = happyShift action_13
action_34 (26) = happyShift action_14
action_34 (27) = happyShift action_15
action_34 (28) = happyShift action_16
action_34 (29) = happyShift action_17
action_34 (30) = happyShift action_18
action_34 (31) = happyShift action_19
action_34 (32) = happyShift action_20
action_34 (33) = happyShift action_21
action_34 (34) = happyShift action_22
action_34 (35) = happyShift action_23
action_34 (36) = happyShift action_24
action_34 (5) = happyGoto action_57
action_34 _ = happyFail

action_35 (8) = happyShift action_3
action_35 (9) = happyShift action_4
action_35 (14) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (17) = happyShift action_8
action_35 (18) = happyShift action_9
action_35 (19) = happyShift action_10
action_35 (20) = happyShift action_11
action_35 (22) = happyShift action_12
action_35 (25) = happyShift action_13
action_35 (26) = happyShift action_14
action_35 (27) = happyShift action_15
action_35 (28) = happyShift action_16
action_35 (29) = happyShift action_17
action_35 (30) = happyShift action_18
action_35 (31) = happyShift action_19
action_35 (32) = happyShift action_20
action_35 (33) = happyShift action_21
action_35 (34) = happyShift action_22
action_35 (35) = happyShift action_23
action_35 (36) = happyShift action_24
action_35 (5) = happyGoto action_56
action_35 _ = happyFail

action_36 (8) = happyShift action_3
action_36 (9) = happyShift action_4
action_36 (14) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (18) = happyShift action_9
action_36 (19) = happyShift action_10
action_36 (20) = happyShift action_11
action_36 (22) = happyShift action_12
action_36 (25) = happyShift action_13
action_36 (26) = happyShift action_14
action_36 (27) = happyShift action_15
action_36 (28) = happyShift action_16
action_36 (29) = happyShift action_17
action_36 (30) = happyShift action_18
action_36 (31) = happyShift action_19
action_36 (32) = happyShift action_20
action_36 (33) = happyShift action_21
action_36 (34) = happyShift action_22
action_36 (35) = happyShift action_23
action_36 (36) = happyShift action_24
action_36 (5) = happyGoto action_55
action_36 _ = happyFail

action_37 (23) = happyShift action_54
action_37 _ = happyFail

action_38 (8) = happyShift action_3
action_38 (9) = happyShift action_4
action_38 (14) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (16) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (18) = happyShift action_9
action_38 (19) = happyShift action_10
action_38 (20) = happyShift action_11
action_38 (22) = happyShift action_12
action_38 (25) = happyShift action_13
action_38 (26) = happyShift action_14
action_38 (27) = happyShift action_15
action_38 (28) = happyShift action_16
action_38 (29) = happyShift action_17
action_38 (30) = happyShift action_18
action_38 (31) = happyShift action_19
action_38 (32) = happyShift action_20
action_38 (33) = happyShift action_21
action_38 (34) = happyShift action_22
action_38 (35) = happyShift action_23
action_38 (36) = happyShift action_24
action_38 (5) = happyGoto action_53
action_38 _ = happyFail

action_39 (10) = happyShift action_52
action_39 _ = happyFail

action_40 (8) = happyShift action_3
action_40 (9) = happyShift action_4
action_40 (14) = happyShift action_5
action_40 (15) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (18) = happyShift action_9
action_40 (19) = happyShift action_10
action_40 (20) = happyShift action_11
action_40 (22) = happyShift action_12
action_40 (25) = happyShift action_13
action_40 (26) = happyShift action_14
action_40 (27) = happyShift action_15
action_40 (28) = happyShift action_16
action_40 (29) = happyShift action_17
action_40 (30) = happyShift action_18
action_40 (31) = happyShift action_19
action_40 (32) = happyShift action_20
action_40 (33) = happyShift action_21
action_40 (34) = happyShift action_22
action_40 (35) = happyShift action_23
action_40 (36) = happyShift action_24
action_40 (5) = happyGoto action_51
action_40 _ = happyFail

action_41 (8) = happyShift action_3
action_41 (9) = happyShift action_4
action_41 (14) = happyShift action_5
action_41 (15) = happyShift action_6
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (18) = happyShift action_9
action_41 (19) = happyShift action_10
action_41 (20) = happyShift action_11
action_41 (22) = happyShift action_12
action_41 (25) = happyShift action_13
action_41 (26) = happyShift action_14
action_41 (27) = happyShift action_15
action_41 (28) = happyShift action_16
action_41 (29) = happyShift action_17
action_41 (30) = happyShift action_18
action_41 (31) = happyShift action_19
action_41 (32) = happyShift action_20
action_41 (33) = happyShift action_21
action_41 (34) = happyShift action_22
action_41 (35) = happyShift action_23
action_41 (36) = happyShift action_24
action_41 (5) = happyGoto action_50
action_41 _ = happyFail

action_42 (8) = happyShift action_3
action_42 (9) = happyShift action_4
action_42 (14) = happyShift action_5
action_42 (15) = happyShift action_6
action_42 (16) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (18) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (22) = happyShift action_12
action_42 (25) = happyShift action_13
action_42 (26) = happyShift action_14
action_42 (27) = happyShift action_15
action_42 (28) = happyShift action_16
action_42 (29) = happyShift action_17
action_42 (30) = happyShift action_18
action_42 (31) = happyShift action_19
action_42 (32) = happyShift action_20
action_42 (33) = happyShift action_21
action_42 (34) = happyShift action_22
action_42 (35) = happyShift action_23
action_42 (36) = happyShift action_24
action_42 (5) = happyGoto action_49
action_42 _ = happyFail

action_43 (8) = happyShift action_3
action_43 (9) = happyShift action_4
action_43 (14) = happyShift action_5
action_43 (15) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (17) = happyShift action_8
action_43 (18) = happyShift action_9
action_43 (19) = happyShift action_10
action_43 (20) = happyShift action_11
action_43 (22) = happyShift action_12
action_43 (25) = happyShift action_13
action_43 (26) = happyShift action_14
action_43 (27) = happyShift action_15
action_43 (28) = happyShift action_16
action_43 (29) = happyShift action_17
action_43 (30) = happyShift action_18
action_43 (31) = happyShift action_19
action_43 (32) = happyShift action_20
action_43 (33) = happyShift action_21
action_43 (34) = happyShift action_22
action_43 (35) = happyShift action_23
action_43 (36) = happyShift action_24
action_43 (5) = happyGoto action_48
action_43 _ = happyFail

action_44 (8) = happyShift action_3
action_44 (9) = happyShift action_4
action_44 (14) = happyShift action_5
action_44 (15) = happyShift action_6
action_44 (16) = happyShift action_7
action_44 (17) = happyShift action_8
action_44 (18) = happyShift action_9
action_44 (19) = happyShift action_10
action_44 (20) = happyShift action_11
action_44 (22) = happyShift action_12
action_44 (25) = happyShift action_13
action_44 (26) = happyShift action_14
action_44 (27) = happyShift action_15
action_44 (28) = happyShift action_16
action_44 (29) = happyShift action_17
action_44 (30) = happyShift action_18
action_44 (31) = happyShift action_19
action_44 (32) = happyShift action_20
action_44 (33) = happyShift action_21
action_44 (34) = happyShift action_22
action_44 (35) = happyShift action_23
action_44 (36) = happyShift action_24
action_44 (5) = happyGoto action_47
action_44 _ = happyFail

action_45 (8) = happyShift action_46
action_45 _ = happyFail

action_46 (13) = happyShift action_84
action_46 _ = happyFail

action_47 (11) = happyShift action_83
action_47 _ = happyFail

action_48 (11) = happyShift action_82
action_48 _ = happyFail

action_49 (11) = happyShift action_81
action_49 _ = happyFail

action_50 (11) = happyShift action_80
action_50 _ = happyFail

action_51 (11) = happyShift action_79
action_51 _ = happyFail

action_52 (8) = happyShift action_3
action_52 (9) = happyShift action_4
action_52 (14) = happyShift action_5
action_52 (15) = happyShift action_6
action_52 (16) = happyShift action_7
action_52 (17) = happyShift action_8
action_52 (18) = happyShift action_9
action_52 (19) = happyShift action_10
action_52 (20) = happyShift action_11
action_52 (22) = happyShift action_12
action_52 (25) = happyShift action_13
action_52 (26) = happyShift action_14
action_52 (27) = happyShift action_15
action_52 (28) = happyShift action_16
action_52 (29) = happyShift action_17
action_52 (30) = happyShift action_18
action_52 (31) = happyShift action_19
action_52 (32) = happyShift action_20
action_52 (33) = happyShift action_21
action_52 (34) = happyShift action_22
action_52 (35) = happyShift action_23
action_52 (36) = happyShift action_24
action_52 (5) = happyGoto action_78
action_52 _ = happyFail

action_53 _ = happyReduce_10

action_54 (8) = happyShift action_3
action_54 (9) = happyShift action_4
action_54 (14) = happyShift action_5
action_54 (15) = happyShift action_6
action_54 (16) = happyShift action_7
action_54 (17) = happyShift action_8
action_54 (18) = happyShift action_9
action_54 (19) = happyShift action_10
action_54 (20) = happyShift action_11
action_54 (22) = happyShift action_12
action_54 (25) = happyShift action_13
action_54 (26) = happyShift action_14
action_54 (27) = happyShift action_15
action_54 (28) = happyShift action_16
action_54 (29) = happyShift action_17
action_54 (30) = happyShift action_18
action_54 (31) = happyShift action_19
action_54 (32) = happyShift action_20
action_54 (33) = happyShift action_21
action_54 (34) = happyShift action_22
action_54 (35) = happyShift action_23
action_54 (36) = happyShift action_24
action_54 (5) = happyGoto action_77
action_54 _ = happyFail

action_55 (13) = happyShift action_76
action_55 _ = happyFail

action_56 (11) = happyShift action_75
action_56 _ = happyFail

action_57 (11) = happyShift action_74
action_57 _ = happyFail

action_58 (11) = happyShift action_73
action_58 _ = happyFail

action_59 (11) = happyShift action_72
action_59 _ = happyFail

action_60 (11) = happyShift action_71
action_60 _ = happyFail

action_61 (11) = happyShift action_70
action_61 _ = happyFail

action_62 (13) = happyShift action_69
action_62 _ = happyFail

action_63 (13) = happyShift action_68
action_63 _ = happyFail

action_64 (11) = happyShift action_67
action_64 _ = happyFail

action_65 (13) = happyShift action_66
action_65 _ = happyFail

action_66 _ = happyReduce_23

action_67 (8) = happyShift action_3
action_67 (9) = happyShift action_4
action_67 (14) = happyShift action_5
action_67 (15) = happyShift action_6
action_67 (16) = happyShift action_7
action_67 (17) = happyShift action_8
action_67 (18) = happyShift action_9
action_67 (19) = happyShift action_10
action_67 (20) = happyShift action_11
action_67 (22) = happyShift action_12
action_67 (25) = happyShift action_13
action_67 (26) = happyShift action_14
action_67 (27) = happyShift action_15
action_67 (28) = happyShift action_16
action_67 (29) = happyShift action_17
action_67 (30) = happyShift action_18
action_67 (31) = happyShift action_19
action_67 (32) = happyShift action_20
action_67 (33) = happyShift action_21
action_67 (34) = happyShift action_22
action_67 (35) = happyShift action_23
action_67 (36) = happyShift action_24
action_67 (5) = happyGoto action_99
action_67 _ = happyFail

action_68 _ = happyReduce_20

action_69 _ = happyReduce_19

action_70 (8) = happyShift action_3
action_70 (9) = happyShift action_4
action_70 (14) = happyShift action_5
action_70 (15) = happyShift action_6
action_70 (16) = happyShift action_7
action_70 (17) = happyShift action_8
action_70 (18) = happyShift action_9
action_70 (19) = happyShift action_10
action_70 (20) = happyShift action_11
action_70 (22) = happyShift action_12
action_70 (25) = happyShift action_13
action_70 (26) = happyShift action_14
action_70 (27) = happyShift action_15
action_70 (28) = happyShift action_16
action_70 (29) = happyShift action_17
action_70 (30) = happyShift action_18
action_70 (31) = happyShift action_19
action_70 (32) = happyShift action_20
action_70 (33) = happyShift action_21
action_70 (34) = happyShift action_22
action_70 (35) = happyShift action_23
action_70 (36) = happyShift action_24
action_70 (5) = happyGoto action_98
action_70 _ = happyFail

action_71 (8) = happyShift action_3
action_71 (9) = happyShift action_4
action_71 (14) = happyShift action_5
action_71 (15) = happyShift action_6
action_71 (16) = happyShift action_7
action_71 (17) = happyShift action_8
action_71 (18) = happyShift action_9
action_71 (19) = happyShift action_10
action_71 (20) = happyShift action_11
action_71 (22) = happyShift action_12
action_71 (25) = happyShift action_13
action_71 (26) = happyShift action_14
action_71 (27) = happyShift action_15
action_71 (28) = happyShift action_16
action_71 (29) = happyShift action_17
action_71 (30) = happyShift action_18
action_71 (31) = happyShift action_19
action_71 (32) = happyShift action_20
action_71 (33) = happyShift action_21
action_71 (34) = happyShift action_22
action_71 (35) = happyShift action_23
action_71 (36) = happyShift action_24
action_71 (5) = happyGoto action_97
action_71 _ = happyFail

action_72 (8) = happyShift action_3
action_72 (9) = happyShift action_4
action_72 (14) = happyShift action_5
action_72 (15) = happyShift action_6
action_72 (16) = happyShift action_7
action_72 (17) = happyShift action_8
action_72 (18) = happyShift action_9
action_72 (19) = happyShift action_10
action_72 (20) = happyShift action_11
action_72 (22) = happyShift action_12
action_72 (25) = happyShift action_13
action_72 (26) = happyShift action_14
action_72 (27) = happyShift action_15
action_72 (28) = happyShift action_16
action_72 (29) = happyShift action_17
action_72 (30) = happyShift action_18
action_72 (31) = happyShift action_19
action_72 (32) = happyShift action_20
action_72 (33) = happyShift action_21
action_72 (34) = happyShift action_22
action_72 (35) = happyShift action_23
action_72 (36) = happyShift action_24
action_72 (5) = happyGoto action_96
action_72 _ = happyFail

action_73 (8) = happyShift action_3
action_73 (9) = happyShift action_4
action_73 (14) = happyShift action_5
action_73 (15) = happyShift action_6
action_73 (16) = happyShift action_7
action_73 (17) = happyShift action_8
action_73 (18) = happyShift action_9
action_73 (19) = happyShift action_10
action_73 (20) = happyShift action_11
action_73 (22) = happyShift action_12
action_73 (25) = happyShift action_13
action_73 (26) = happyShift action_14
action_73 (27) = happyShift action_15
action_73 (28) = happyShift action_16
action_73 (29) = happyShift action_17
action_73 (30) = happyShift action_18
action_73 (31) = happyShift action_19
action_73 (32) = happyShift action_20
action_73 (33) = happyShift action_21
action_73 (34) = happyShift action_22
action_73 (35) = happyShift action_23
action_73 (36) = happyShift action_24
action_73 (5) = happyGoto action_95
action_73 _ = happyFail

action_74 (8) = happyShift action_3
action_74 (9) = happyShift action_4
action_74 (14) = happyShift action_5
action_74 (15) = happyShift action_6
action_74 (16) = happyShift action_7
action_74 (17) = happyShift action_8
action_74 (18) = happyShift action_9
action_74 (19) = happyShift action_10
action_74 (20) = happyShift action_11
action_74 (22) = happyShift action_12
action_74 (25) = happyShift action_13
action_74 (26) = happyShift action_14
action_74 (27) = happyShift action_15
action_74 (28) = happyShift action_16
action_74 (29) = happyShift action_17
action_74 (30) = happyShift action_18
action_74 (31) = happyShift action_19
action_74 (32) = happyShift action_20
action_74 (33) = happyShift action_21
action_74 (34) = happyShift action_22
action_74 (35) = happyShift action_23
action_74 (36) = happyShift action_24
action_74 (5) = happyGoto action_94
action_74 _ = happyFail

action_75 (8) = happyShift action_3
action_75 (9) = happyShift action_4
action_75 (14) = happyShift action_5
action_75 (15) = happyShift action_6
action_75 (16) = happyShift action_7
action_75 (17) = happyShift action_8
action_75 (18) = happyShift action_9
action_75 (19) = happyShift action_10
action_75 (20) = happyShift action_11
action_75 (22) = happyShift action_12
action_75 (25) = happyShift action_13
action_75 (26) = happyShift action_14
action_75 (27) = happyShift action_15
action_75 (28) = happyShift action_16
action_75 (29) = happyShift action_17
action_75 (30) = happyShift action_18
action_75 (31) = happyShift action_19
action_75 (32) = happyShift action_20
action_75 (33) = happyShift action_21
action_75 (34) = happyShift action_22
action_75 (35) = happyShift action_23
action_75 (36) = happyShift action_24
action_75 (5) = happyGoto action_93
action_75 _ = happyFail

action_76 _ = happyReduce_12

action_77 (24) = happyShift action_92
action_77 _ = happyFail

action_78 (9) = happyShift action_39
action_78 (21) = happyShift action_91
action_78 (6) = happyGoto action_90
action_78 _ = happyFail

action_79 (8) = happyShift action_3
action_79 (9) = happyShift action_4
action_79 (14) = happyShift action_5
action_79 (15) = happyShift action_6
action_79 (16) = happyShift action_7
action_79 (17) = happyShift action_8
action_79 (18) = happyShift action_9
action_79 (19) = happyShift action_10
action_79 (20) = happyShift action_11
action_79 (22) = happyShift action_12
action_79 (25) = happyShift action_13
action_79 (26) = happyShift action_14
action_79 (27) = happyShift action_15
action_79 (28) = happyShift action_16
action_79 (29) = happyShift action_17
action_79 (30) = happyShift action_18
action_79 (31) = happyShift action_19
action_79 (32) = happyShift action_20
action_79 (33) = happyShift action_21
action_79 (34) = happyShift action_22
action_79 (35) = happyShift action_23
action_79 (36) = happyShift action_24
action_79 (5) = happyGoto action_89
action_79 _ = happyFail

action_80 (8) = happyShift action_3
action_80 (9) = happyShift action_4
action_80 (14) = happyShift action_5
action_80 (15) = happyShift action_6
action_80 (16) = happyShift action_7
action_80 (17) = happyShift action_8
action_80 (18) = happyShift action_9
action_80 (19) = happyShift action_10
action_80 (20) = happyShift action_11
action_80 (22) = happyShift action_12
action_80 (25) = happyShift action_13
action_80 (26) = happyShift action_14
action_80 (27) = happyShift action_15
action_80 (28) = happyShift action_16
action_80 (29) = happyShift action_17
action_80 (30) = happyShift action_18
action_80 (31) = happyShift action_19
action_80 (32) = happyShift action_20
action_80 (33) = happyShift action_21
action_80 (34) = happyShift action_22
action_80 (35) = happyShift action_23
action_80 (36) = happyShift action_24
action_80 (5) = happyGoto action_88
action_80 _ = happyFail

action_81 (8) = happyShift action_3
action_81 (9) = happyShift action_4
action_81 (14) = happyShift action_5
action_81 (15) = happyShift action_6
action_81 (16) = happyShift action_7
action_81 (17) = happyShift action_8
action_81 (18) = happyShift action_9
action_81 (19) = happyShift action_10
action_81 (20) = happyShift action_11
action_81 (22) = happyShift action_12
action_81 (25) = happyShift action_13
action_81 (26) = happyShift action_14
action_81 (27) = happyShift action_15
action_81 (28) = happyShift action_16
action_81 (29) = happyShift action_17
action_81 (30) = happyShift action_18
action_81 (31) = happyShift action_19
action_81 (32) = happyShift action_20
action_81 (33) = happyShift action_21
action_81 (34) = happyShift action_22
action_81 (35) = happyShift action_23
action_81 (36) = happyShift action_24
action_81 (5) = happyGoto action_87
action_81 _ = happyFail

action_82 (8) = happyShift action_3
action_82 (9) = happyShift action_4
action_82 (14) = happyShift action_5
action_82 (15) = happyShift action_6
action_82 (16) = happyShift action_7
action_82 (17) = happyShift action_8
action_82 (18) = happyShift action_9
action_82 (19) = happyShift action_10
action_82 (20) = happyShift action_11
action_82 (22) = happyShift action_12
action_82 (25) = happyShift action_13
action_82 (26) = happyShift action_14
action_82 (27) = happyShift action_15
action_82 (28) = happyShift action_16
action_82 (29) = happyShift action_17
action_82 (30) = happyShift action_18
action_82 (31) = happyShift action_19
action_82 (32) = happyShift action_20
action_82 (33) = happyShift action_21
action_82 (34) = happyShift action_22
action_82 (35) = happyShift action_23
action_82 (36) = happyShift action_24
action_82 (5) = happyGoto action_86
action_82 _ = happyFail

action_83 (8) = happyShift action_3
action_83 (9) = happyShift action_4
action_83 (14) = happyShift action_5
action_83 (15) = happyShift action_6
action_83 (16) = happyShift action_7
action_83 (17) = happyShift action_8
action_83 (18) = happyShift action_9
action_83 (19) = happyShift action_10
action_83 (20) = happyShift action_11
action_83 (22) = happyShift action_12
action_83 (25) = happyShift action_13
action_83 (26) = happyShift action_14
action_83 (27) = happyShift action_15
action_83 (28) = happyShift action_16
action_83 (29) = happyShift action_17
action_83 (30) = happyShift action_18
action_83 (31) = happyShift action_19
action_83 (32) = happyShift action_20
action_83 (33) = happyShift action_21
action_83 (34) = happyShift action_22
action_83 (35) = happyShift action_23
action_83 (36) = happyShift action_24
action_83 (5) = happyGoto action_85
action_83 _ = happyFail

action_84 _ = happyReduce_9

action_85 (13) = happyShift action_112
action_85 _ = happyFail

action_86 (13) = happyShift action_111
action_86 _ = happyFail

action_87 (13) = happyShift action_110
action_87 _ = happyFail

action_88 (13) = happyShift action_109
action_88 _ = happyFail

action_89 (13) = happyShift action_108
action_89 _ = happyFail

action_90 _ = happyReduce_25

action_91 _ = happyReduce_24

action_92 (8) = happyShift action_3
action_92 (9) = happyShift action_4
action_92 (14) = happyShift action_5
action_92 (15) = happyShift action_6
action_92 (16) = happyShift action_7
action_92 (17) = happyShift action_8
action_92 (18) = happyShift action_9
action_92 (19) = happyShift action_10
action_92 (20) = happyShift action_11
action_92 (22) = happyShift action_12
action_92 (25) = happyShift action_13
action_92 (26) = happyShift action_14
action_92 (27) = happyShift action_15
action_92 (28) = happyShift action_16
action_92 (29) = happyShift action_17
action_92 (30) = happyShift action_18
action_92 (31) = happyShift action_19
action_92 (32) = happyShift action_20
action_92 (33) = happyShift action_21
action_92 (34) = happyShift action_22
action_92 (35) = happyShift action_23
action_92 (36) = happyShift action_24
action_92 (5) = happyGoto action_107
action_92 _ = happyFail

action_93 (13) = happyShift action_106
action_93 _ = happyFail

action_94 (13) = happyShift action_105
action_94 _ = happyFail

action_95 (13) = happyShift action_104
action_95 _ = happyFail

action_96 (13) = happyShift action_103
action_96 _ = happyFail

action_97 (13) = happyShift action_102
action_97 _ = happyFail

action_98 (13) = happyShift action_101
action_98 _ = happyFail

action_99 (13) = happyShift action_100
action_99 _ = happyFail

action_100 _ = happyReduce_22

action_101 _ = happyReduce_21

action_102 _ = happyReduce_17

action_103 _ = happyReduce_16

action_104 _ = happyReduce_15

action_105 _ = happyReduce_14

action_106 _ = happyReduce_13

action_107 _ = happyReduce_11

action_108 _ = happyReduce_8

action_109 _ = happyReduce_7

action_110 _ = happyReduce_6

action_111 _ = happyReduce_5

action_112 _ = happyReduce_4

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Pgm happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn5
		 (ConstExp happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyTerminal (TVar happy_var_1))
	 =  HappyAbsSyn5
		 (VarExp happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (SubExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 6 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AddExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (PwrExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DivExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 6 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MulExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 4 5 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyTerminal (TInt happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (NegativeExp happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (SetExp happy_var_2 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 5 happyReduction_11
happyReduction_11 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfExp happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 4 5 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsZeroExp happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 5 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsEqualExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 5 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsGreaterExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 6 5 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsLessExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 6 5 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsGreaterEqualExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 5 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsLessEqualExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (EmptyListExp
	)

happyReduce_19 = happyReduce 4 5 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetTailExp happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 5 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetHeadExp happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 5 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AddListElemExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 6 5 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (GetElemAtExp happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IsNullExp happy_var_3
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 4 6 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ListEnd happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 6 happyReduction_25
happyReduction_25 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ListPce happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_0  7 happyReduction_26
happyReduction_26  =  HappyAbsSyn7
		 ([]
	)

happyReduce_27 = happyReduce 4 7 happyReduction_27
happyReduction_27 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_1, happy_var_3):happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 8;
	TVar happy_dollar_dollar -> cont 9;
	TAssign -> cont 10;
	TComma -> cont 11;
	TLParen -> cont 12;
	TRParen -> cont 13;
	TNegative -> cont 14;
	TSub -> cont 15;
	TAdd -> cont 16;
	TPwr -> cont 17;
	TDiv -> cont 18;
	TMul -> cont 19;
	TSet -> cont 20;
	TReturn -> cont 21;
	TIf -> cont 22;
	TThen -> cont 23;
	TElse -> cont 24;
	TIsZero -> cont 25;
	TIsEqual -> cont 26;
	TIsGreater -> cont 27;
	TIsLess -> cont 28;
	TIsGreaterEqual -> cont 29;
	TIsLessEqual -> cont 30;
	TEmptyList -> cont 31;
	TAddListElem -> cont 32;
	TGetTail -> cont 33;
	TGetHead -> cont 34;
	TGetElemAt -> cont 35;
	TNull -> cont 36;
	_ -> happyError' (tk:tks)
	}

happyError_ 37 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

calc tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

-- Exported parser includes lexical analyzer front-end
parse = calc . lexer
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "G:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}

















{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}

{-# LINE 46 "templates\\GenericTemplate.hs" #-}








{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
