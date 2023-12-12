{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,332) ([8256,61752,18,1,0,0,0,0,65520,48207,16388,14368,4849,0,0,0,0,0,4096,19976,1212,8256,61752,18,57473,19396,1024,4994,303,0,0,0,0,64,33024,50400,75,0,1024,0,0,512,65472,61759,22,0,0,4,0,0,0,0,49152,16383,4853,0,2048,0,65532,12055,1,0,0,0,0,0,57473,19396,1024,4994,303,2064,48206,16388,14368,4849,33024,50400,75,33284,12051,4097,19976,1212,8256,61752,18,57473,19396,1024,4994,303,2064,48206,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,2048,16,0,16416,0,4096,19976,1212,0,0,0,57473,19396,0,32768,3104,0,0,16384,14368,4849,65280,50431,203,0,4096,0,16384,0,0,2048,194,0,0,0,0,0,0,0,49152,49151,4849,33024,50400,75,0,4096,0,0,12418,8256,61752,18,57473,19396,0,0,0,0,0,0,0,2,0,8192,776,0,0,0,0,256,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'!'","'>'","'>='","'<'","'<='","'=='","true","false","if","then","else","'['","']'","','","List","head","tail","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","%eof"]
        bit_start = st Prelude.* 42
        bit_end = (st Prelude.+ 1) Prelude.* 42
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..41]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_2
action_0 (14) = happyShift action_4
action_0 (20) = happyShift action_5
action_0 (21) = happyShift action_6
action_0 (22) = happyShift action_7
action_0 (25) = happyShift action_8
action_0 (29) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (34) = happyShift action_13
action_0 (37) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_25
action_3 (9) = happyShift action_26
action_3 (10) = happyShift action_27
action_3 (11) = happyShift action_28
action_3 (12) = happyShift action_29
action_3 (13) = happyShift action_30
action_3 (14) = happyShift action_4
action_3 (15) = happyShift action_31
action_3 (16) = happyShift action_32
action_3 (17) = happyShift action_33
action_3 (18) = happyShift action_34
action_3 (19) = happyShift action_35
action_3 (20) = happyShift action_5
action_3 (21) = happyShift action_6
action_3 (22) = happyShift action_7
action_3 (25) = happyShift action_8
action_3 (29) = happyShift action_9
action_3 (30) = happyShift action_10
action_3 (31) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (34) = happyShift action_13
action_3 (37) = happyShift action_14
action_3 (42) = happyAccept
action_3 (4) = happyGoto action_24
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_2
action_4 (14) = happyShift action_4
action_4 (20) = happyShift action_5
action_4 (21) = happyShift action_6
action_4 (22) = happyShift action_7
action_4 (25) = happyShift action_8
action_4 (29) = happyShift action_9
action_4 (30) = happyShift action_10
action_4 (31) = happyShift action_11
action_4 (32) = happyShift action_12
action_4 (34) = happyShift action_13
action_4 (37) = happyShift action_14
action_4 (4) = happyGoto action_23
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (7) = happyShift action_2
action_7 (14) = happyShift action_4
action_7 (20) = happyShift action_5
action_7 (21) = happyShift action_6
action_7 (22) = happyShift action_7
action_7 (25) = happyShift action_8
action_7 (29) = happyShift action_9
action_7 (30) = happyShift action_10
action_7 (31) = happyShift action_11
action_7 (32) = happyShift action_12
action_7 (34) = happyShift action_13
action_7 (37) = happyShift action_14
action_7 (4) = happyGoto action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_2
action_8 (14) = happyShift action_4
action_8 (20) = happyShift action_5
action_8 (21) = happyShift action_6
action_8 (22) = happyShift action_7
action_8 (25) = happyShift action_8
action_8 (29) = happyShift action_9
action_8 (30) = happyShift action_10
action_8 (31) = happyShift action_11
action_8 (32) = happyShift action_12
action_8 (34) = happyShift action_13
action_8 (37) = happyShift action_14
action_8 (4) = happyGoto action_20
action_8 (5) = happyGoto action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_2
action_9 (14) = happyShift action_4
action_9 (20) = happyShift action_5
action_9 (21) = happyShift action_6
action_9 (22) = happyShift action_7
action_9 (25) = happyShift action_8
action_9 (29) = happyShift action_9
action_9 (30) = happyShift action_10
action_9 (31) = happyShift action_11
action_9 (32) = happyShift action_12
action_9 (34) = happyShift action_13
action_9 (37) = happyShift action_14
action_9 (4) = happyGoto action_19
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (14) = happyShift action_4
action_10 (20) = happyShift action_5
action_10 (21) = happyShift action_6
action_10 (22) = happyShift action_7
action_10 (25) = happyShift action_8
action_10 (29) = happyShift action_9
action_10 (30) = happyShift action_10
action_10 (31) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (34) = happyShift action_13
action_10 (37) = happyShift action_14
action_10 (4) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_17

action_12 (31) = happyShift action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_2
action_13 (14) = happyShift action_4
action_13 (20) = happyShift action_5
action_13 (21) = happyShift action_6
action_13 (22) = happyShift action_7
action_13 (25) = happyShift action_8
action_13 (29) = happyShift action_9
action_13 (30) = happyShift action_10
action_13 (31) = happyShift action_11
action_13 (32) = happyShift action_12
action_13 (34) = happyShift action_13
action_13 (37) = happyShift action_14
action_13 (4) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (31) = happyShift action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (36) = happyShift action_52
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_25
action_16 (9) = happyShift action_26
action_16 (10) = happyShift action_27
action_16 (11) = happyShift action_28
action_16 (12) = happyShift action_29
action_16 (13) = happyShift action_30
action_16 (14) = happyShift action_4
action_16 (15) = happyShift action_31
action_16 (16) = happyShift action_32
action_16 (17) = happyShift action_33
action_16 (18) = happyShift action_34
action_16 (19) = happyShift action_35
action_16 (20) = happyShift action_5
action_16 (21) = happyShift action_6
action_16 (22) = happyShift action_7
action_16 (25) = happyShift action_8
action_16 (29) = happyShift action_9
action_16 (30) = happyShift action_10
action_16 (31) = happyShift action_11
action_16 (32) = happyShift action_12
action_16 (34) = happyShift action_13
action_16 (35) = happyShift action_51
action_16 (37) = happyShift action_14
action_16 (4) = happyGoto action_24
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (41) = happyShift action_50
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (8) = happyShift action_25
action_18 (9) = happyShift action_26
action_18 (10) = happyShift action_27
action_18 (11) = happyShift action_28
action_18 (12) = happyShift action_29
action_18 (13) = happyShift action_30
action_18 (14) = happyShift action_4
action_18 (15) = happyShift action_31
action_18 (16) = happyShift action_32
action_18 (17) = happyShift action_33
action_18 (18) = happyShift action_34
action_18 (19) = happyShift action_35
action_18 (20) = happyShift action_5
action_18 (21) = happyShift action_6
action_18 (22) = happyShift action_7
action_18 (25) = happyShift action_8
action_18 (29) = happyShift action_9
action_18 (30) = happyShift action_10
action_18 (31) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (34) = happyShift action_13
action_18 (37) = happyShift action_14
action_18 (4) = happyGoto action_24
action_18 _ = happyReduce_24

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_25
action_19 (9) = happyShift action_26
action_19 (10) = happyShift action_27
action_19 (11) = happyShift action_28
action_19 (12) = happyShift action_29
action_19 (13) = happyShift action_30
action_19 (14) = happyShift action_4
action_19 (15) = happyShift action_31
action_19 (16) = happyShift action_32
action_19 (17) = happyShift action_33
action_19 (18) = happyShift action_34
action_19 (19) = happyShift action_35
action_19 (20) = happyShift action_5
action_19 (21) = happyShift action_6
action_19 (22) = happyShift action_7
action_19 (25) = happyShift action_8
action_19 (29) = happyShift action_9
action_19 (30) = happyShift action_10
action_19 (31) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (34) = happyShift action_13
action_19 (37) = happyShift action_14
action_19 (4) = happyGoto action_24
action_19 _ = happyReduce_23

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_25
action_20 (9) = happyShift action_26
action_20 (10) = happyShift action_27
action_20 (11) = happyShift action_28
action_20 (12) = happyShift action_29
action_20 (13) = happyShift action_30
action_20 (14) = happyShift action_4
action_20 (15) = happyShift action_31
action_20 (16) = happyShift action_32
action_20 (17) = happyShift action_33
action_20 (18) = happyShift action_34
action_20 (19) = happyShift action_35
action_20 (20) = happyShift action_5
action_20 (21) = happyShift action_6
action_20 (22) = happyShift action_7
action_20 (25) = happyShift action_8
action_20 (27) = happyShift action_49
action_20 (29) = happyShift action_9
action_20 (30) = happyShift action_10
action_20 (31) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (34) = happyShift action_13
action_20 (37) = happyShift action_14
action_20 (4) = happyGoto action_24
action_20 _ = happyReduce_25

action_21 (26) = happyShift action_48
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_25
action_22 (9) = happyShift action_26
action_22 (10) = happyShift action_27
action_22 (11) = happyShift action_28
action_22 (12) = happyShift action_29
action_22 (13) = happyShift action_30
action_22 (14) = happyShift action_4
action_22 (15) = happyShift action_31
action_22 (16) = happyShift action_32
action_22 (17) = happyShift action_33
action_22 (18) = happyShift action_34
action_22 (19) = happyShift action_35
action_22 (20) = happyShift action_5
action_22 (21) = happyShift action_6
action_22 (22) = happyShift action_7
action_22 (23) = happyShift action_47
action_22 (25) = happyShift action_8
action_22 (29) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (31) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (34) = happyShift action_13
action_22 (37) = happyShift action_14
action_22 (4) = happyGoto action_24
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_25
action_23 (9) = happyShift action_26
action_23 (10) = happyShift action_27
action_23 (11) = happyShift action_28
action_23 (12) = happyShift action_29
action_23 (13) = happyShift action_30
action_23 (14) = happyShift action_4
action_23 (15) = happyShift action_31
action_23 (16) = happyShift action_32
action_23 (17) = happyShift action_33
action_23 (18) = happyShift action_34
action_23 (19) = happyShift action_35
action_23 (20) = happyShift action_5
action_23 (21) = happyShift action_6
action_23 (22) = happyShift action_7
action_23 (25) = happyShift action_8
action_23 (29) = happyShift action_9
action_23 (30) = happyShift action_10
action_23 (31) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (34) = happyShift action_13
action_23 (37) = happyShift action_14
action_23 (4) = happyGoto action_24
action_23 _ = happyReduce_10

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_25
action_24 (9) = happyShift action_26
action_24 (10) = happyShift action_27
action_24 (11) = happyShift action_28
action_24 (12) = happyShift action_29
action_24 (13) = happyShift action_30
action_24 (14) = happyShift action_4
action_24 (15) = happyShift action_31
action_24 (16) = happyShift action_32
action_24 (17) = happyShift action_33
action_24 (18) = happyShift action_34
action_24 (19) = happyShift action_35
action_24 (20) = happyShift action_5
action_24 (21) = happyShift action_6
action_24 (22) = happyShift action_7
action_24 (25) = happyShift action_8
action_24 (29) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (31) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (34) = happyShift action_13
action_24 (37) = happyShift action_14
action_24 (4) = happyGoto action_24
action_24 _ = happyReduce_19

action_25 (7) = happyShift action_2
action_25 (14) = happyShift action_4
action_25 (20) = happyShift action_5
action_25 (21) = happyShift action_6
action_25 (22) = happyShift action_7
action_25 (25) = happyShift action_8
action_25 (29) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (31) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (34) = happyShift action_13
action_25 (37) = happyShift action_14
action_25 (4) = happyGoto action_46
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (14) = happyShift action_4
action_26 (20) = happyShift action_5
action_26 (21) = happyShift action_6
action_26 (22) = happyShift action_7
action_26 (25) = happyShift action_8
action_26 (29) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (31) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (34) = happyShift action_13
action_26 (37) = happyShift action_14
action_26 (4) = happyGoto action_45
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (14) = happyShift action_4
action_27 (20) = happyShift action_5
action_27 (21) = happyShift action_6
action_27 (22) = happyShift action_7
action_27 (25) = happyShift action_8
action_27 (29) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (31) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (34) = happyShift action_13
action_27 (37) = happyShift action_14
action_27 (4) = happyGoto action_44
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (14) = happyShift action_4
action_28 (20) = happyShift action_5
action_28 (21) = happyShift action_6
action_28 (22) = happyShift action_7
action_28 (25) = happyShift action_8
action_28 (29) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (31) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (34) = happyShift action_13
action_28 (37) = happyShift action_14
action_28 (4) = happyGoto action_43
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_2
action_29 (14) = happyShift action_4
action_29 (20) = happyShift action_5
action_29 (21) = happyShift action_6
action_29 (22) = happyShift action_7
action_29 (25) = happyShift action_8
action_29 (29) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (31) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (34) = happyShift action_13
action_29 (37) = happyShift action_14
action_29 (4) = happyGoto action_42
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (14) = happyShift action_4
action_30 (20) = happyShift action_5
action_30 (21) = happyShift action_6
action_30 (22) = happyShift action_7
action_30 (25) = happyShift action_8
action_30 (29) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (31) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (34) = happyShift action_13
action_30 (37) = happyShift action_14
action_30 (4) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (14) = happyShift action_4
action_31 (20) = happyShift action_5
action_31 (21) = happyShift action_6
action_31 (22) = happyShift action_7
action_31 (25) = happyShift action_8
action_31 (29) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (31) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (34) = happyShift action_13
action_31 (37) = happyShift action_14
action_31 (4) = happyGoto action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_2
action_32 (14) = happyShift action_4
action_32 (20) = happyShift action_5
action_32 (21) = happyShift action_6
action_32 (22) = happyShift action_7
action_32 (25) = happyShift action_8
action_32 (29) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (31) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (34) = happyShift action_13
action_32 (37) = happyShift action_14
action_32 (4) = happyGoto action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_2
action_33 (14) = happyShift action_4
action_33 (20) = happyShift action_5
action_33 (21) = happyShift action_6
action_33 (22) = happyShift action_7
action_33 (25) = happyShift action_8
action_33 (29) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (31) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (34) = happyShift action_13
action_33 (37) = happyShift action_14
action_33 (4) = happyGoto action_38
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_2
action_34 (14) = happyShift action_4
action_34 (20) = happyShift action_5
action_34 (21) = happyShift action_6
action_34 (22) = happyShift action_7
action_34 (25) = happyShift action_8
action_34 (29) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (31) = happyShift action_11
action_34 (32) = happyShift action_12
action_34 (34) = happyShift action_13
action_34 (37) = happyShift action_14
action_34 (4) = happyGoto action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_2
action_35 (14) = happyShift action_4
action_35 (20) = happyShift action_5
action_35 (21) = happyShift action_6
action_35 (22) = happyShift action_7
action_35 (25) = happyShift action_8
action_35 (29) = happyShift action_9
action_35 (30) = happyShift action_10
action_35 (31) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (34) = happyShift action_13
action_35 (37) = happyShift action_14
action_35 (4) = happyGoto action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (11) = happyShift action_28
action_36 (12) = happyShift action_29
action_36 (13) = happyShift action_30
action_36 (14) = happyShift action_4
action_36 (15) = happyShift action_31
action_36 (16) = happyShift action_32
action_36 (17) = happyShift action_33
action_36 (18) = happyShift action_34
action_36 (20) = happyShift action_5
action_36 (21) = happyShift action_6
action_36 (22) = happyShift action_7
action_36 (25) = happyShift action_8
action_36 (29) = happyShift action_9
action_36 (30) = happyShift action_10
action_36 (31) = happyShift action_11
action_36 (32) = happyShift action_12
action_36 (34) = happyShift action_13
action_36 (37) = happyShift action_14
action_36 (4) = happyGoto action_24
action_36 _ = happyReduce_15

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_25
action_37 (9) = happyShift action_26
action_37 (10) = happyShift action_27
action_37 (11) = happyShift action_28
action_37 (12) = happyShift action_29
action_37 (13) = happyShift action_30
action_37 (14) = happyShift action_4
action_37 (15) = happyShift action_31
action_37 (16) = happyShift action_32
action_37 (17) = happyShift action_33
action_37 (18) = happyShift action_34
action_37 (19) = happyShift action_35
action_37 (20) = happyShift action_5
action_37 (21) = happyShift action_6
action_37 (22) = happyShift action_7
action_37 (25) = happyShift action_8
action_37 (29) = happyShift action_9
action_37 (30) = happyShift action_10
action_37 (31) = happyShift action_11
action_37 (32) = happyShift action_12
action_37 (34) = happyShift action_13
action_37 (37) = happyShift action_14
action_37 (4) = happyGoto action_24
action_37 _ = happyReduce_14

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_25
action_38 (9) = happyShift action_26
action_38 (10) = happyShift action_27
action_38 (11) = happyShift action_28
action_38 (12) = happyShift action_29
action_38 (13) = happyShift action_30
action_38 (14) = happyShift action_4
action_38 (15) = happyShift action_31
action_38 (16) = happyShift action_32
action_38 (17) = happyShift action_33
action_38 (18) = happyShift action_34
action_38 (19) = happyShift action_35
action_38 (20) = happyShift action_5
action_38 (21) = happyShift action_6
action_38 (22) = happyShift action_7
action_38 (25) = happyShift action_8
action_38 (29) = happyShift action_9
action_38 (30) = happyShift action_10
action_38 (31) = happyShift action_11
action_38 (32) = happyShift action_12
action_38 (34) = happyShift action_13
action_38 (37) = happyShift action_14
action_38 (4) = happyGoto action_24
action_38 _ = happyReduce_13

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_25
action_39 (9) = happyShift action_26
action_39 (10) = happyShift action_27
action_39 (11) = happyShift action_28
action_39 (12) = happyShift action_29
action_39 (13) = happyShift action_30
action_39 (14) = happyShift action_4
action_39 (15) = happyShift action_31
action_39 (16) = happyShift action_32
action_39 (17) = happyShift action_33
action_39 (18) = happyShift action_34
action_39 (19) = happyShift action_35
action_39 (20) = happyShift action_5
action_39 (21) = happyShift action_6
action_39 (22) = happyShift action_7
action_39 (25) = happyShift action_8
action_39 (29) = happyShift action_9
action_39 (30) = happyShift action_10
action_39 (31) = happyShift action_11
action_39 (32) = happyShift action_12
action_39 (34) = happyShift action_13
action_39 (37) = happyShift action_14
action_39 (4) = happyGoto action_24
action_39 _ = happyReduce_12

action_40 (7) = happyShift action_2
action_40 (8) = happyShift action_25
action_40 (9) = happyShift action_26
action_40 (10) = happyShift action_27
action_40 (11) = happyShift action_28
action_40 (12) = happyShift action_29
action_40 (13) = happyShift action_30
action_40 (14) = happyShift action_4
action_40 (15) = happyShift action_31
action_40 (16) = happyShift action_32
action_40 (17) = happyShift action_33
action_40 (18) = happyShift action_34
action_40 (19) = happyShift action_35
action_40 (20) = happyShift action_5
action_40 (21) = happyShift action_6
action_40 (22) = happyShift action_7
action_40 (25) = happyShift action_8
action_40 (29) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (31) = happyShift action_11
action_40 (32) = happyShift action_12
action_40 (34) = happyShift action_13
action_40 (37) = happyShift action_14
action_40 (4) = happyGoto action_24
action_40 _ = happyReduce_11

action_41 (7) = happyShift action_2
action_41 (8) = happyShift action_25
action_41 (9) = happyShift action_26
action_41 (10) = happyShift action_27
action_41 (11) = happyShift action_28
action_41 (12) = happyShift action_29
action_41 (13) = happyShift action_30
action_41 (14) = happyShift action_4
action_41 (15) = happyShift action_31
action_41 (16) = happyShift action_32
action_41 (17) = happyShift action_33
action_41 (18) = happyShift action_34
action_41 (19) = happyShift action_35
action_41 (20) = happyShift action_5
action_41 (21) = happyShift action_6
action_41 (22) = happyShift action_7
action_41 (25) = happyShift action_8
action_41 (29) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (31) = happyShift action_11
action_41 (32) = happyShift action_12
action_41 (34) = happyShift action_13
action_41 (37) = happyShift action_14
action_41 (4) = happyGoto action_24
action_41 _ = happyReduce_9

action_42 (7) = happyShift action_2
action_42 (8) = happyShift action_25
action_42 (9) = happyShift action_26
action_42 (10) = happyShift action_27
action_42 (11) = happyShift action_28
action_42 (12) = happyShift action_29
action_42 (13) = happyShift action_30
action_42 (14) = happyShift action_4
action_42 (15) = happyShift action_31
action_42 (16) = happyShift action_32
action_42 (17) = happyShift action_33
action_42 (18) = happyShift action_34
action_42 (19) = happyShift action_35
action_42 (20) = happyShift action_5
action_42 (21) = happyShift action_6
action_42 (22) = happyShift action_7
action_42 (25) = happyShift action_8
action_42 (29) = happyShift action_9
action_42 (30) = happyShift action_10
action_42 (31) = happyShift action_11
action_42 (32) = happyShift action_12
action_42 (34) = happyShift action_13
action_42 (37) = happyShift action_14
action_42 (4) = happyGoto action_24
action_42 _ = happyReduce_8

action_43 (7) = happyShift action_2
action_43 (8) = happyShift action_25
action_43 (9) = happyShift action_26
action_43 (10) = happyShift action_27
action_43 (11) = happyShift action_28
action_43 (12) = happyShift action_29
action_43 (13) = happyShift action_30
action_43 (14) = happyShift action_4
action_43 (15) = happyShift action_31
action_43 (16) = happyShift action_32
action_43 (17) = happyShift action_33
action_43 (18) = happyShift action_34
action_43 (19) = happyShift action_35
action_43 (20) = happyShift action_5
action_43 (21) = happyShift action_6
action_43 (22) = happyShift action_7
action_43 (25) = happyShift action_8
action_43 (29) = happyShift action_9
action_43 (30) = happyShift action_10
action_43 (31) = happyShift action_11
action_43 (32) = happyShift action_12
action_43 (34) = happyShift action_13
action_43 (37) = happyShift action_14
action_43 (4) = happyGoto action_24
action_43 _ = happyReduce_7

action_44 (7) = happyShift action_2
action_44 (11) = happyShift action_28
action_44 (12) = happyShift action_29
action_44 (13) = happyShift action_30
action_44 (14) = happyShift action_4
action_44 (15) = happyShift action_31
action_44 (16) = happyShift action_32
action_44 (17) = happyShift action_33
action_44 (18) = happyShift action_34
action_44 (19) = happyShift action_35
action_44 (20) = happyShift action_5
action_44 (21) = happyShift action_6
action_44 (22) = happyShift action_7
action_44 (25) = happyShift action_8
action_44 (29) = happyShift action_9
action_44 (30) = happyShift action_10
action_44 (31) = happyShift action_11
action_44 (32) = happyShift action_12
action_44 (34) = happyShift action_13
action_44 (37) = happyShift action_14
action_44 (4) = happyGoto action_24
action_44 _ = happyReduce_6

action_45 (7) = happyShift action_2
action_45 (10) = happyShift action_27
action_45 (11) = happyShift action_28
action_45 (12) = happyShift action_29
action_45 (13) = happyShift action_30
action_45 (14) = happyShift action_4
action_45 (15) = happyShift action_31
action_45 (16) = happyShift action_32
action_45 (17) = happyShift action_33
action_45 (18) = happyShift action_34
action_45 (19) = happyShift action_35
action_45 (20) = happyShift action_5
action_45 (21) = happyShift action_6
action_45 (22) = happyShift action_7
action_45 (25) = happyShift action_8
action_45 (29) = happyShift action_9
action_45 (30) = happyShift action_10
action_45 (31) = happyShift action_11
action_45 (32) = happyShift action_12
action_45 (34) = happyShift action_13
action_45 (37) = happyShift action_14
action_45 (4) = happyGoto action_24
action_45 _ = happyReduce_5

action_46 (7) = happyShift action_2
action_46 (10) = happyShift action_27
action_46 (11) = happyShift action_28
action_46 (12) = happyShift action_29
action_46 (13) = happyShift action_30
action_46 (14) = happyShift action_4
action_46 (15) = happyShift action_31
action_46 (16) = happyShift action_32
action_46 (17) = happyShift action_33
action_46 (18) = happyShift action_34
action_46 (19) = happyShift action_35
action_46 (20) = happyShift action_5
action_46 (21) = happyShift action_6
action_46 (22) = happyShift action_7
action_46 (25) = happyShift action_8
action_46 (29) = happyShift action_9
action_46 (30) = happyShift action_10
action_46 (31) = happyShift action_11
action_46 (32) = happyShift action_12
action_46 (34) = happyShift action_13
action_46 (37) = happyShift action_14
action_46 (4) = happyGoto action_24
action_46 _ = happyReduce_4

action_47 (7) = happyShift action_2
action_47 (14) = happyShift action_4
action_47 (20) = happyShift action_5
action_47 (21) = happyShift action_6
action_47 (22) = happyShift action_7
action_47 (25) = happyShift action_8
action_47 (29) = happyShift action_9
action_47 (30) = happyShift action_10
action_47 (31) = happyShift action_11
action_47 (32) = happyShift action_12
action_47 (34) = happyShift action_13
action_47 (37) = happyShift action_14
action_47 (4) = happyGoto action_60
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_22

action_49 (7) = happyShift action_2
action_49 (14) = happyShift action_4
action_49 (20) = happyShift action_5
action_49 (21) = happyShift action_6
action_49 (22) = happyShift action_7
action_49 (25) = happyShift action_8
action_49 (29) = happyShift action_9
action_49 (30) = happyShift action_10
action_49 (31) = happyShift action_11
action_49 (32) = happyShift action_12
action_49 (34) = happyShift action_13
action_49 (37) = happyShift action_14
action_49 (4) = happyGoto action_20
action_49 (5) = happyGoto action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (28) = happyShift action_55
action_50 (34) = happyShift action_56
action_50 (39) = happyShift action_57
action_50 (40) = happyShift action_58
action_50 (6) = happyGoto action_54
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_20

action_52 (7) = happyShift action_2
action_52 (14) = happyShift action_4
action_52 (20) = happyShift action_5
action_52 (21) = happyShift action_6
action_52 (22) = happyShift action_7
action_52 (25) = happyShift action_8
action_52 (29) = happyShift action_9
action_52 (30) = happyShift action_10
action_52 (31) = happyShift action_11
action_52 (32) = happyShift action_12
action_52 (34) = happyShift action_13
action_52 (37) = happyShift action_14
action_52 (4) = happyGoto action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_2
action_53 (8) = happyShift action_25
action_53 (9) = happyShift action_26
action_53 (10) = happyShift action_27
action_53 (11) = happyShift action_28
action_53 (12) = happyShift action_29
action_53 (13) = happyShift action_30
action_53 (14) = happyShift action_4
action_53 (15) = happyShift action_31
action_53 (16) = happyShift action_32
action_53 (17) = happyShift action_33
action_53 (18) = happyShift action_34
action_53 (19) = happyShift action_35
action_53 (20) = happyShift action_5
action_53 (21) = happyShift action_6
action_53 (22) = happyShift action_7
action_53 (25) = happyShift action_8
action_53 (29) = happyShift action_9
action_53 (30) = happyShift action_10
action_53 (31) = happyShift action_11
action_53 (32) = happyShift action_12
action_53 (34) = happyShift action_13
action_53 (37) = happyShift action_14
action_53 (38) = happyShift action_65
action_53 (4) = happyGoto action_24
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (33) = happyShift action_64
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (25) = happyShift action_63
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (28) = happyShift action_55
action_56 (34) = happyShift action_56
action_56 (39) = happyShift action_57
action_56 (40) = happyShift action_58
action_56 (6) = happyGoto action_62
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_27

action_58 _ = happyReduce_28

action_59 _ = happyReduce_26

action_60 (7) = happyShift action_2
action_60 (8) = happyShift action_25
action_60 (9) = happyShift action_26
action_60 (10) = happyShift action_27
action_60 (11) = happyShift action_28
action_60 (12) = happyShift action_29
action_60 (13) = happyShift action_30
action_60 (14) = happyShift action_4
action_60 (15) = happyShift action_31
action_60 (16) = happyShift action_32
action_60 (17) = happyShift action_33
action_60 (18) = happyShift action_34
action_60 (19) = happyShift action_35
action_60 (20) = happyShift action_5
action_60 (21) = happyShift action_6
action_60 (22) = happyShift action_7
action_60 (24) = happyShift action_61
action_60 (25) = happyShift action_8
action_60 (29) = happyShift action_9
action_60 (30) = happyShift action_10
action_60 (31) = happyShift action_11
action_60 (32) = happyShift action_12
action_60 (34) = happyShift action_13
action_60 (37) = happyShift action_14
action_60 (4) = happyGoto action_24
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (7) = happyShift action_2
action_61 (14) = happyShift action_4
action_61 (20) = happyShift action_5
action_61 (21) = happyShift action_6
action_61 (22) = happyShift action_7
action_61 (25) = happyShift action_8
action_61 (29) = happyShift action_9
action_61 (30) = happyShift action_10
action_61 (31) = happyShift action_11
action_61 (32) = happyShift action_12
action_61 (34) = happyShift action_13
action_61 (37) = happyShift action_14
action_61 (4) = happyGoto action_70
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (33) = happyShift action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (28) = happyShift action_55
action_63 (34) = happyShift action_56
action_63 (39) = happyShift action_57
action_63 (40) = happyShift action_58
action_63 (6) = happyGoto action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_2
action_64 (14) = happyShift action_4
action_64 (20) = happyShift action_5
action_64 (21) = happyShift action_6
action_64 (22) = happyShift action_7
action_64 (25) = happyShift action_8
action_64 (29) = happyShift action_9
action_64 (30) = happyShift action_10
action_64 (31) = happyShift action_11
action_64 (32) = happyShift action_12
action_64 (34) = happyShift action_13
action_64 (37) = happyShift action_14
action_64 (4) = happyGoto action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_2
action_65 (14) = happyShift action_4
action_65 (20) = happyShift action_5
action_65 (21) = happyShift action_6
action_65 (22) = happyShift action_7
action_65 (25) = happyShift action_8
action_65 (29) = happyShift action_9
action_65 (30) = happyShift action_10
action_65 (31) = happyShift action_11
action_65 (32) = happyShift action_12
action_65 (34) = happyShift action_13
action_65 (37) = happyShift action_14
action_65 (4) = happyGoto action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (7) = happyShift action_2
action_66 (8) = happyShift action_25
action_66 (9) = happyShift action_26
action_66 (10) = happyShift action_27
action_66 (11) = happyShift action_28
action_66 (12) = happyShift action_29
action_66 (13) = happyShift action_30
action_66 (14) = happyShift action_4
action_66 (15) = happyShift action_31
action_66 (16) = happyShift action_32
action_66 (17) = happyShift action_33
action_66 (18) = happyShift action_34
action_66 (19) = happyShift action_35
action_66 (20) = happyShift action_5
action_66 (21) = happyShift action_6
action_66 (22) = happyShift action_7
action_66 (25) = happyShift action_8
action_66 (29) = happyShift action_9
action_66 (30) = happyShift action_10
action_66 (31) = happyShift action_11
action_66 (32) = happyShift action_12
action_66 (34) = happyShift action_13
action_66 (37) = happyShift action_14
action_66 (4) = happyGoto action_24
action_66 _ = happyReduce_21

action_67 (7) = happyShift action_2
action_67 (8) = happyShift action_25
action_67 (9) = happyShift action_26
action_67 (10) = happyShift action_27
action_67 (11) = happyShift action_28
action_67 (12) = happyShift action_29
action_67 (13) = happyShift action_30
action_67 (14) = happyShift action_4
action_67 (15) = happyShift action_31
action_67 (16) = happyShift action_32
action_67 (17) = happyShift action_33
action_67 (18) = happyShift action_34
action_67 (19) = happyShift action_35
action_67 (20) = happyShift action_5
action_67 (21) = happyShift action_6
action_67 (22) = happyShift action_7
action_67 (25) = happyShift action_8
action_67 (29) = happyShift action_9
action_67 (30) = happyShift action_10
action_67 (31) = happyShift action_11
action_67 (32) = happyShift action_12
action_67 (34) = happyShift action_13
action_67 (37) = happyShift action_14
action_67 (4) = happyGoto action_24
action_67 _ = happyReduce_18

action_68 (26) = happyShift action_72
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (28) = happyShift action_55
action_69 (34) = happyShift action_56
action_69 (39) = happyShift action_57
action_69 (40) = happyShift action_58
action_69 (6) = happyGoto action_71
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (7) = happyShift action_2
action_70 (8) = happyShift action_25
action_70 (9) = happyShift action_26
action_70 (10) = happyShift action_27
action_70 (11) = happyShift action_28
action_70 (12) = happyShift action_29
action_70 (13) = happyShift action_30
action_70 (14) = happyShift action_4
action_70 (15) = happyShift action_31
action_70 (16) = happyShift action_32
action_70 (17) = happyShift action_33
action_70 (18) = happyShift action_34
action_70 (19) = happyShift action_35
action_70 (20) = happyShift action_5
action_70 (21) = happyShift action_6
action_70 (22) = happyShift action_7
action_70 (25) = happyShift action_8
action_70 (29) = happyShift action_9
action_70 (30) = happyShift action_10
action_70 (31) = happyShift action_11
action_70 (32) = happyShift action_12
action_70 (34) = happyShift action_13
action_70 (37) = happyShift action_14
action_70 (4) = happyGoto action_24
action_70 _ = happyReduce_16

action_71 (35) = happyShift action_73
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_30

action_73 _ = happyReduce_29

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterOrEqual happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessOrEqual happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  4 happyReduction_17
happyReduction_17 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_28 = happySpecReduce_1  6 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_29 = happyReduce 5 6 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 6 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenAdd -> cont 8;
	TokenSub -> cont 9;
	TokenMul -> cont 10;
	TokenDiv -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenGreaterThan -> cont 15;
	TokenGreaterOrEqual -> cont 16;
	TokenLessThan -> cont 17;
	TokenLessOrEqual -> cont 18;
	TokenEqual -> cont 19;
	TokenTrue -> cont 20;
	TokenFalse -> cont 21;
	TokenIf -> cont 22;
	TokenThen -> cont 23;
	TokenElse -> cont 24;
	TokenLBracket -> cont 25;
	TokenRBracket -> cont 26;
	TokenComma -> cont 27;
	TokenList -> cont 28;
	TokenHead -> cont 29;
	TokenTail -> cont 30;
	TokenVar happy_dollar_dollar -> cont 31;
	TokenLam -> cont 32;
	TokenArrow -> cont 33;
	TokenLParen -> cont 34;
	TokenRParen -> cont 35;
	TokenEq -> cont 36;
	TokenLet -> cont 37;
	TokenIn -> cont 38;
	TokenBoolean -> cont 39;
	TokenNumber -> cont 40;
	TokenColon -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
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
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









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
