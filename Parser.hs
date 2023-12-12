{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,471) ([4128,48156,8196,0,0,0,0,57344,8191,1212,4128,48156,4,0,0,0,0,8192,7184,1212,0,128,0,32768,0,0,0,0,0,16,4128,48156,4,0,16,0,0,57346,8191,1468,0,0,8256,7184,1212,4128,48156,57348,16383,1212,0,0,0,0,0,4128,48156,8196,7184,1212,4128,48156,8196,7184,1212,4128,48156,8196,7184,1212,4128,48156,8196,7184,1212,4128,48156,8196,7184,1212,4128,48156,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,256,2,0,513,0,4128,48156,57348,8191,1214,65504,48671,4,32768,12416,0,0,8192,7184,1212,65504,48159,12,0,64,0,32896,48,32768,12416,0,0,0,0,0,4128,48156,8196,7184,1212,65504,48223,8196,7184,1212,65504,48671,57348,8191,1214,0,16384,0,0,2,4128,48156,8196,7184,1212,0,0,0,0,0,0,256,0,32768,12416,4128,48156,8196,7184,1212,0,0,57344,8191,1213,65504,48415,4,0,256,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'!'","'>'","'>='","'<'","'<='","'=='","true","false","if","then","else","'['","']'","','","head","tail","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","%eof"]
        bit_start = st Prelude.* 40
        bit_end = (st Prelude.+ 1) Prelude.* 40
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..39]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (13) = happyShift action_4
action_0 (19) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (27) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (29) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (35) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_22
action_3 (8) = happyShift action_23
action_3 (9) = happyShift action_24
action_3 (10) = happyShift action_25
action_3 (11) = happyShift action_26
action_3 (12) = happyShift action_27
action_3 (13) = happyShift action_4
action_3 (14) = happyShift action_28
action_3 (15) = happyShift action_29
action_3 (16) = happyShift action_30
action_3 (17) = happyShift action_31
action_3 (18) = happyShift action_32
action_3 (19) = happyShift action_5
action_3 (20) = happyShift action_6
action_3 (21) = happyShift action_7
action_3 (27) = happyShift action_8
action_3 (28) = happyShift action_9
action_3 (29) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (35) = happyShift action_13
action_3 (40) = happyAccept
action_3 (4) = happyGoto action_21
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (13) = happyShift action_4
action_4 (19) = happyShift action_5
action_4 (20) = happyShift action_6
action_4 (21) = happyShift action_7
action_4 (27) = happyShift action_8
action_4 (28) = happyShift action_9
action_4 (29) = happyShift action_10
action_4 (30) = happyShift action_11
action_4 (32) = happyShift action_12
action_4 (35) = happyShift action_13
action_4 (4) = happyGoto action_20
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (6) = happyShift action_2
action_7 (13) = happyShift action_4
action_7 (19) = happyShift action_5
action_7 (20) = happyShift action_6
action_7 (21) = happyShift action_7
action_7 (27) = happyShift action_8
action_7 (28) = happyShift action_9
action_7 (29) = happyShift action_10
action_7 (30) = happyShift action_11
action_7 (32) = happyShift action_12
action_7 (35) = happyShift action_13
action_7 (4) = happyGoto action_19
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (24) = happyShift action_18
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (24) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_17

action_11 (29) = happyShift action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (13) = happyShift action_4
action_12 (19) = happyShift action_5
action_12 (20) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (27) = happyShift action_8
action_12 (28) = happyShift action_9
action_12 (29) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (35) = happyShift action_13
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (29) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (34) = happyShift action_49
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_22
action_15 (8) = happyShift action_23
action_15 (9) = happyShift action_24
action_15 (10) = happyShift action_25
action_15 (11) = happyShift action_26
action_15 (12) = happyShift action_27
action_15 (13) = happyShift action_4
action_15 (14) = happyShift action_28
action_15 (15) = happyShift action_29
action_15 (16) = happyShift action_30
action_15 (17) = happyShift action_31
action_15 (18) = happyShift action_32
action_15 (19) = happyShift action_5
action_15 (20) = happyShift action_6
action_15 (21) = happyShift action_7
action_15 (27) = happyShift action_8
action_15 (28) = happyShift action_9
action_15 (29) = happyShift action_10
action_15 (30) = happyShift action_11
action_15 (32) = happyShift action_12
action_15 (33) = happyShift action_48
action_15 (35) = happyShift action_13
action_15 (4) = happyGoto action_21
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (39) = happyShift action_47
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (13) = happyShift action_4
action_17 (19) = happyShift action_5
action_17 (20) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (27) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (29) = happyShift action_10
action_17 (30) = happyShift action_11
action_17 (32) = happyShift action_12
action_17 (35) = happyShift action_13
action_17 (4) = happyGoto action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (13) = happyShift action_4
action_18 (19) = happyShift action_5
action_18 (20) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (27) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (29) = happyShift action_10
action_18 (30) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (35) = happyShift action_13
action_18 (4) = happyGoto action_45
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_22
action_19 (8) = happyShift action_23
action_19 (9) = happyShift action_24
action_19 (10) = happyShift action_25
action_19 (11) = happyShift action_26
action_19 (12) = happyShift action_27
action_19 (13) = happyShift action_4
action_19 (14) = happyShift action_28
action_19 (15) = happyShift action_29
action_19 (16) = happyShift action_30
action_19 (17) = happyShift action_31
action_19 (18) = happyShift action_32
action_19 (19) = happyShift action_5
action_19 (20) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (22) = happyShift action_44
action_19 (27) = happyShift action_8
action_19 (28) = happyShift action_9
action_19 (29) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (35) = happyShift action_13
action_19 (4) = happyGoto action_21
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_22
action_20 (8) = happyShift action_23
action_20 (9) = happyShift action_24
action_20 (10) = happyShift action_25
action_20 (11) = happyShift action_26
action_20 (12) = happyShift action_27
action_20 (13) = happyShift action_4
action_20 (14) = happyShift action_28
action_20 (15) = happyShift action_29
action_20 (16) = happyShift action_30
action_20 (17) = happyShift action_31
action_20 (18) = happyShift action_32
action_20 (19) = happyShift action_5
action_20 (20) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (27) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (29) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (35) = happyShift action_13
action_20 (4) = happyGoto action_21
action_20 _ = happyReduce_10

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_22
action_21 (8) = happyShift action_23
action_21 (9) = happyShift action_24
action_21 (10) = happyShift action_25
action_21 (11) = happyShift action_26
action_21 (12) = happyShift action_27
action_21 (13) = happyShift action_4
action_21 (14) = happyShift action_28
action_21 (15) = happyShift action_29
action_21 (16) = happyShift action_30
action_21 (17) = happyShift action_31
action_21 (18) = happyShift action_32
action_21 (19) = happyShift action_5
action_21 (20) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (27) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (29) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (35) = happyShift action_13
action_21 (4) = happyGoto action_21
action_21 _ = happyReduce_19

action_22 (6) = happyShift action_2
action_22 (13) = happyShift action_4
action_22 (19) = happyShift action_5
action_22 (20) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (27) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (29) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (35) = happyShift action_13
action_22 (4) = happyGoto action_43
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (13) = happyShift action_4
action_23 (19) = happyShift action_5
action_23 (20) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (27) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (29) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (35) = happyShift action_13
action_23 (4) = happyGoto action_42
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (13) = happyShift action_4
action_24 (19) = happyShift action_5
action_24 (20) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (27) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (29) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (35) = happyShift action_13
action_24 (4) = happyGoto action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (13) = happyShift action_4
action_25 (19) = happyShift action_5
action_25 (20) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (27) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (29) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (35) = happyShift action_13
action_25 (4) = happyGoto action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (13) = happyShift action_4
action_26 (19) = happyShift action_5
action_26 (20) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (27) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (29) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (35) = happyShift action_13
action_26 (4) = happyGoto action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (13) = happyShift action_4
action_27 (19) = happyShift action_5
action_27 (20) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (27) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (29) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (35) = happyShift action_13
action_27 (4) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (13) = happyShift action_4
action_28 (19) = happyShift action_5
action_28 (20) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (27) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (29) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (35) = happyShift action_13
action_28 (4) = happyGoto action_37
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (13) = happyShift action_4
action_29 (19) = happyShift action_5
action_29 (20) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (27) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (29) = happyShift action_10
action_29 (30) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (35) = happyShift action_13
action_29 (4) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (13) = happyShift action_4
action_30 (19) = happyShift action_5
action_30 (20) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (27) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (29) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (35) = happyShift action_13
action_30 (4) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (13) = happyShift action_4
action_31 (19) = happyShift action_5
action_31 (20) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (27) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (29) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (35) = happyShift action_13
action_31 (4) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (13) = happyShift action_4
action_32 (19) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (27) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (29) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (35) = happyShift action_13
action_32 (4) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (10) = happyShift action_25
action_33 (11) = happyShift action_26
action_33 (12) = happyShift action_27
action_33 (13) = happyShift action_4
action_33 (14) = happyShift action_28
action_33 (15) = happyShift action_29
action_33 (16) = happyShift action_30
action_33 (17) = happyShift action_31
action_33 (19) = happyShift action_5
action_33 (20) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (27) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (29) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (35) = happyShift action_13
action_33 (4) = happyGoto action_21
action_33 _ = happyReduce_15

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_22
action_34 (8) = happyShift action_23
action_34 (9) = happyShift action_24
action_34 (10) = happyShift action_25
action_34 (11) = happyShift action_26
action_34 (12) = happyShift action_27
action_34 (13) = happyShift action_4
action_34 (14) = happyShift action_28
action_34 (15) = happyShift action_29
action_34 (16) = happyShift action_30
action_34 (17) = happyShift action_31
action_34 (18) = happyShift action_32
action_34 (19) = happyShift action_5
action_34 (20) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (27) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (29) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (32) = happyShift action_12
action_34 (35) = happyShift action_13
action_34 (4) = happyGoto action_21
action_34 _ = happyReduce_14

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_22
action_35 (8) = happyShift action_23
action_35 (9) = happyShift action_24
action_35 (10) = happyShift action_25
action_35 (11) = happyShift action_26
action_35 (12) = happyShift action_27
action_35 (13) = happyShift action_4
action_35 (14) = happyShift action_28
action_35 (15) = happyShift action_29
action_35 (16) = happyShift action_30
action_35 (17) = happyShift action_31
action_35 (18) = happyShift action_32
action_35 (19) = happyShift action_5
action_35 (20) = happyShift action_6
action_35 (21) = happyShift action_7
action_35 (27) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (29) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (35) = happyShift action_13
action_35 (4) = happyGoto action_21
action_35 _ = happyReduce_13

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_22
action_36 (8) = happyShift action_23
action_36 (9) = happyShift action_24
action_36 (10) = happyShift action_25
action_36 (11) = happyShift action_26
action_36 (12) = happyShift action_27
action_36 (13) = happyShift action_4
action_36 (14) = happyShift action_28
action_36 (15) = happyShift action_29
action_36 (16) = happyShift action_30
action_36 (17) = happyShift action_31
action_36 (18) = happyShift action_32
action_36 (19) = happyShift action_5
action_36 (20) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (27) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (29) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (32) = happyShift action_12
action_36 (35) = happyShift action_13
action_36 (4) = happyGoto action_21
action_36 _ = happyReduce_12

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_22
action_37 (8) = happyShift action_23
action_37 (9) = happyShift action_24
action_37 (10) = happyShift action_25
action_37 (11) = happyShift action_26
action_37 (12) = happyShift action_27
action_37 (13) = happyShift action_4
action_37 (14) = happyShift action_28
action_37 (15) = happyShift action_29
action_37 (16) = happyShift action_30
action_37 (17) = happyShift action_31
action_37 (18) = happyShift action_32
action_37 (19) = happyShift action_5
action_37 (20) = happyShift action_6
action_37 (21) = happyShift action_7
action_37 (27) = happyShift action_8
action_37 (28) = happyShift action_9
action_37 (29) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (32) = happyShift action_12
action_37 (35) = happyShift action_13
action_37 (4) = happyGoto action_21
action_37 _ = happyReduce_11

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_22
action_38 (8) = happyShift action_23
action_38 (9) = happyShift action_24
action_38 (10) = happyShift action_25
action_38 (11) = happyShift action_26
action_38 (12) = happyShift action_27
action_38 (13) = happyShift action_4
action_38 (14) = happyShift action_28
action_38 (15) = happyShift action_29
action_38 (16) = happyShift action_30
action_38 (17) = happyShift action_31
action_38 (18) = happyShift action_32
action_38 (19) = happyShift action_5
action_38 (20) = happyShift action_6
action_38 (21) = happyShift action_7
action_38 (27) = happyShift action_8
action_38 (28) = happyShift action_9
action_38 (29) = happyShift action_10
action_38 (30) = happyShift action_11
action_38 (32) = happyShift action_12
action_38 (35) = happyShift action_13
action_38 (4) = happyGoto action_21
action_38 _ = happyReduce_9

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_22
action_39 (8) = happyShift action_23
action_39 (9) = happyShift action_24
action_39 (10) = happyShift action_25
action_39 (11) = happyShift action_26
action_39 (12) = happyShift action_27
action_39 (13) = happyShift action_4
action_39 (14) = happyShift action_28
action_39 (15) = happyShift action_29
action_39 (16) = happyShift action_30
action_39 (17) = happyShift action_31
action_39 (18) = happyShift action_32
action_39 (19) = happyShift action_5
action_39 (20) = happyShift action_6
action_39 (21) = happyShift action_7
action_39 (27) = happyShift action_8
action_39 (28) = happyShift action_9
action_39 (29) = happyShift action_10
action_39 (30) = happyShift action_11
action_39 (32) = happyShift action_12
action_39 (35) = happyShift action_13
action_39 (4) = happyGoto action_21
action_39 _ = happyReduce_8

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_22
action_40 (8) = happyShift action_23
action_40 (9) = happyShift action_24
action_40 (10) = happyShift action_25
action_40 (11) = happyShift action_26
action_40 (12) = happyShift action_27
action_40 (13) = happyShift action_4
action_40 (14) = happyShift action_28
action_40 (15) = happyShift action_29
action_40 (16) = happyShift action_30
action_40 (17) = happyShift action_31
action_40 (18) = happyShift action_32
action_40 (19) = happyShift action_5
action_40 (20) = happyShift action_6
action_40 (21) = happyShift action_7
action_40 (27) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (29) = happyShift action_10
action_40 (30) = happyShift action_11
action_40 (32) = happyShift action_12
action_40 (35) = happyShift action_13
action_40 (4) = happyGoto action_21
action_40 _ = happyReduce_7

action_41 (6) = happyShift action_2
action_41 (10) = happyShift action_25
action_41 (11) = happyShift action_26
action_41 (12) = happyShift action_27
action_41 (13) = happyShift action_4
action_41 (14) = happyShift action_28
action_41 (15) = happyShift action_29
action_41 (16) = happyShift action_30
action_41 (17) = happyShift action_31
action_41 (18) = happyShift action_32
action_41 (19) = happyShift action_5
action_41 (20) = happyShift action_6
action_41 (21) = happyShift action_7
action_41 (27) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (29) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (32) = happyShift action_12
action_41 (35) = happyShift action_13
action_41 (4) = happyGoto action_21
action_41 _ = happyReduce_6

action_42 (6) = happyShift action_2
action_42 (9) = happyShift action_24
action_42 (10) = happyShift action_25
action_42 (11) = happyShift action_26
action_42 (12) = happyShift action_27
action_42 (13) = happyShift action_4
action_42 (14) = happyShift action_28
action_42 (15) = happyShift action_29
action_42 (16) = happyShift action_30
action_42 (17) = happyShift action_31
action_42 (18) = happyShift action_32
action_42 (19) = happyShift action_5
action_42 (20) = happyShift action_6
action_42 (21) = happyShift action_7
action_42 (27) = happyShift action_8
action_42 (28) = happyShift action_9
action_42 (29) = happyShift action_10
action_42 (30) = happyShift action_11
action_42 (32) = happyShift action_12
action_42 (35) = happyShift action_13
action_42 (4) = happyGoto action_21
action_42 _ = happyReduce_5

action_43 (6) = happyShift action_2
action_43 (9) = happyShift action_24
action_43 (10) = happyShift action_25
action_43 (11) = happyShift action_26
action_43 (12) = happyShift action_27
action_43 (13) = happyShift action_4
action_43 (14) = happyShift action_28
action_43 (15) = happyShift action_29
action_43 (16) = happyShift action_30
action_43 (17) = happyShift action_31
action_43 (18) = happyShift action_32
action_43 (19) = happyShift action_5
action_43 (20) = happyShift action_6
action_43 (21) = happyShift action_7
action_43 (27) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (29) = happyShift action_10
action_43 (30) = happyShift action_11
action_43 (32) = happyShift action_12
action_43 (35) = happyShift action_13
action_43 (4) = happyGoto action_21
action_43 _ = happyReduce_4

action_44 (6) = happyShift action_2
action_44 (13) = happyShift action_4
action_44 (19) = happyShift action_5
action_44 (20) = happyShift action_6
action_44 (21) = happyShift action_7
action_44 (27) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (29) = happyShift action_10
action_44 (30) = happyShift action_11
action_44 (32) = happyShift action_12
action_44 (35) = happyShift action_13
action_44 (4) = happyGoto action_58
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_22
action_45 (8) = happyShift action_23
action_45 (9) = happyShift action_24
action_45 (10) = happyShift action_25
action_45 (11) = happyShift action_26
action_45 (12) = happyShift action_27
action_45 (13) = happyShift action_4
action_45 (14) = happyShift action_28
action_45 (15) = happyShift action_29
action_45 (16) = happyShift action_30
action_45 (17) = happyShift action_31
action_45 (18) = happyShift action_32
action_45 (19) = happyShift action_5
action_45 (20) = happyShift action_6
action_45 (21) = happyShift action_7
action_45 (26) = happyShift action_57
action_45 (27) = happyShift action_8
action_45 (28) = happyShift action_9
action_45 (29) = happyShift action_10
action_45 (30) = happyShift action_11
action_45 (32) = happyShift action_12
action_45 (35) = happyShift action_13
action_45 (4) = happyGoto action_21
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_22
action_46 (8) = happyShift action_23
action_46 (9) = happyShift action_24
action_46 (10) = happyShift action_25
action_46 (11) = happyShift action_26
action_46 (12) = happyShift action_27
action_46 (13) = happyShift action_4
action_46 (14) = happyShift action_28
action_46 (15) = happyShift action_29
action_46 (16) = happyShift action_30
action_46 (17) = happyShift action_31
action_46 (18) = happyShift action_32
action_46 (19) = happyShift action_5
action_46 (20) = happyShift action_6
action_46 (21) = happyShift action_7
action_46 (26) = happyShift action_56
action_46 (27) = happyShift action_8
action_46 (28) = happyShift action_9
action_46 (29) = happyShift action_10
action_46 (30) = happyShift action_11
action_46 (32) = happyShift action_12
action_46 (35) = happyShift action_13
action_46 (4) = happyGoto action_21
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (24) = happyShift action_52
action_47 (32) = happyShift action_53
action_47 (37) = happyShift action_54
action_47 (38) = happyShift action_55
action_47 (5) = happyGoto action_51
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_20

action_49 (6) = happyShift action_2
action_49 (13) = happyShift action_4
action_49 (19) = happyShift action_5
action_49 (20) = happyShift action_6
action_49 (21) = happyShift action_7
action_49 (27) = happyShift action_8
action_49 (28) = happyShift action_9
action_49 (29) = happyShift action_10
action_49 (30) = happyShift action_11
action_49 (32) = happyShift action_12
action_49 (35) = happyShift action_13
action_49 (4) = happyGoto action_50
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_22
action_50 (8) = happyShift action_23
action_50 (9) = happyShift action_24
action_50 (10) = happyShift action_25
action_50 (11) = happyShift action_26
action_50 (12) = happyShift action_27
action_50 (13) = happyShift action_4
action_50 (14) = happyShift action_28
action_50 (15) = happyShift action_29
action_50 (16) = happyShift action_30
action_50 (17) = happyShift action_31
action_50 (18) = happyShift action_32
action_50 (19) = happyShift action_5
action_50 (20) = happyShift action_6
action_50 (21) = happyShift action_7
action_50 (27) = happyShift action_8
action_50 (28) = happyShift action_9
action_50 (29) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (32) = happyShift action_12
action_50 (35) = happyShift action_13
action_50 (36) = happyShift action_65
action_50 (4) = happyGoto action_21
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (31) = happyShift action_64
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (24) = happyShift action_52
action_52 (32) = happyShift action_53
action_52 (37) = happyShift action_54
action_52 (38) = happyShift action_55
action_52 (5) = happyGoto action_63
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (24) = happyShift action_52
action_53 (32) = happyShift action_53
action_53 (37) = happyShift action_54
action_53 (38) = happyShift action_55
action_53 (5) = happyGoto action_62
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_24

action_55 _ = happyReduce_25

action_56 (6) = happyShift action_2
action_56 (13) = happyShift action_4
action_56 (19) = happyShift action_5
action_56 (20) = happyShift action_6
action_56 (21) = happyShift action_7
action_56 (27) = happyShift action_8
action_56 (28) = happyShift action_9
action_56 (29) = happyShift action_10
action_56 (30) = happyShift action_11
action_56 (32) = happyShift action_12
action_56 (35) = happyShift action_13
action_56 (4) = happyGoto action_61
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_2
action_57 (13) = happyShift action_4
action_57 (19) = happyShift action_5
action_57 (20) = happyShift action_6
action_57 (21) = happyShift action_7
action_57 (27) = happyShift action_8
action_57 (28) = happyShift action_9
action_57 (29) = happyShift action_10
action_57 (30) = happyShift action_11
action_57 (32) = happyShift action_12
action_57 (35) = happyShift action_13
action_57 (4) = happyGoto action_60
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_2
action_58 (7) = happyShift action_22
action_58 (8) = happyShift action_23
action_58 (9) = happyShift action_24
action_58 (10) = happyShift action_25
action_58 (11) = happyShift action_26
action_58 (12) = happyShift action_27
action_58 (13) = happyShift action_4
action_58 (14) = happyShift action_28
action_58 (15) = happyShift action_29
action_58 (16) = happyShift action_30
action_58 (17) = happyShift action_31
action_58 (18) = happyShift action_32
action_58 (19) = happyShift action_5
action_58 (20) = happyShift action_6
action_58 (21) = happyShift action_7
action_58 (23) = happyShift action_59
action_58 (27) = happyShift action_8
action_58 (28) = happyShift action_9
action_58 (29) = happyShift action_10
action_58 (30) = happyShift action_11
action_58 (32) = happyShift action_12
action_58 (35) = happyShift action_13
action_58 (4) = happyGoto action_21
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_2
action_59 (13) = happyShift action_4
action_59 (19) = happyShift action_5
action_59 (20) = happyShift action_6
action_59 (21) = happyShift action_7
action_59 (27) = happyShift action_8
action_59 (28) = happyShift action_9
action_59 (29) = happyShift action_10
action_59 (30) = happyShift action_11
action_59 (32) = happyShift action_12
action_59 (35) = happyShift action_13
action_59 (4) = happyGoto action_72
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_2
action_60 (7) = happyShift action_22
action_60 (8) = happyShift action_23
action_60 (9) = happyShift action_24
action_60 (10) = happyShift action_25
action_60 (11) = happyShift action_26
action_60 (12) = happyShift action_27
action_60 (13) = happyShift action_4
action_60 (14) = happyShift action_28
action_60 (15) = happyShift action_29
action_60 (16) = happyShift action_30
action_60 (17) = happyShift action_31
action_60 (18) = happyShift action_32
action_60 (19) = happyShift action_5
action_60 (20) = happyShift action_6
action_60 (21) = happyShift action_7
action_60 (26) = happyShift action_71
action_60 (27) = happyShift action_8
action_60 (28) = happyShift action_9
action_60 (29) = happyShift action_10
action_60 (30) = happyShift action_11
action_60 (32) = happyShift action_12
action_60 (35) = happyShift action_13
action_60 (4) = happyGoto action_21
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_2
action_61 (7) = happyShift action_22
action_61 (8) = happyShift action_23
action_61 (9) = happyShift action_24
action_61 (10) = happyShift action_25
action_61 (11) = happyShift action_26
action_61 (12) = happyShift action_27
action_61 (13) = happyShift action_4
action_61 (14) = happyShift action_28
action_61 (15) = happyShift action_29
action_61 (16) = happyShift action_30
action_61 (17) = happyShift action_31
action_61 (18) = happyShift action_32
action_61 (19) = happyShift action_5
action_61 (20) = happyShift action_6
action_61 (21) = happyShift action_7
action_61 (26) = happyShift action_70
action_61 (27) = happyShift action_8
action_61 (28) = happyShift action_9
action_61 (29) = happyShift action_10
action_61 (30) = happyShift action_11
action_61 (32) = happyShift action_12
action_61 (35) = happyShift action_13
action_61 (4) = happyGoto action_21
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (31) = happyShift action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (26) = happyShift action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_2
action_64 (13) = happyShift action_4
action_64 (19) = happyShift action_5
action_64 (20) = happyShift action_6
action_64 (21) = happyShift action_7
action_64 (27) = happyShift action_8
action_64 (28) = happyShift action_9
action_64 (29) = happyShift action_10
action_64 (30) = happyShift action_11
action_64 (32) = happyShift action_12
action_64 (35) = happyShift action_13
action_64 (4) = happyGoto action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (6) = happyShift action_2
action_65 (13) = happyShift action_4
action_65 (19) = happyShift action_5
action_65 (20) = happyShift action_6
action_65 (21) = happyShift action_7
action_65 (27) = happyShift action_8
action_65 (28) = happyShift action_9
action_65 (29) = happyShift action_10
action_65 (30) = happyShift action_11
action_65 (32) = happyShift action_12
action_65 (35) = happyShift action_13
action_65 (4) = happyGoto action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (6) = happyShift action_2
action_66 (7) = happyShift action_22
action_66 (8) = happyShift action_23
action_66 (9) = happyShift action_24
action_66 (10) = happyShift action_25
action_66 (11) = happyShift action_26
action_66 (12) = happyShift action_27
action_66 (13) = happyShift action_4
action_66 (14) = happyShift action_28
action_66 (15) = happyShift action_29
action_66 (16) = happyShift action_30
action_66 (17) = happyShift action_31
action_66 (18) = happyShift action_32
action_66 (19) = happyShift action_5
action_66 (20) = happyShift action_6
action_66 (21) = happyShift action_7
action_66 (27) = happyShift action_8
action_66 (28) = happyShift action_9
action_66 (29) = happyShift action_10
action_66 (30) = happyShift action_11
action_66 (32) = happyShift action_12
action_66 (35) = happyShift action_13
action_66 (4) = happyGoto action_21
action_66 _ = happyReduce_21

action_67 (6) = happyShift action_2
action_67 (7) = happyShift action_22
action_67 (8) = happyShift action_23
action_67 (9) = happyShift action_24
action_67 (10) = happyShift action_25
action_67 (11) = happyShift action_26
action_67 (12) = happyShift action_27
action_67 (13) = happyShift action_4
action_67 (14) = happyShift action_28
action_67 (15) = happyShift action_29
action_67 (16) = happyShift action_30
action_67 (17) = happyShift action_31
action_67 (18) = happyShift action_32
action_67 (19) = happyShift action_5
action_67 (20) = happyShift action_6
action_67 (21) = happyShift action_7
action_67 (27) = happyShift action_8
action_67 (28) = happyShift action_9
action_67 (29) = happyShift action_10
action_67 (30) = happyShift action_11
action_67 (32) = happyShift action_12
action_67 (35) = happyShift action_13
action_67 (4) = happyGoto action_21
action_67 _ = happyReduce_18

action_68 (25) = happyShift action_76
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (24) = happyShift action_52
action_69 (32) = happyShift action_53
action_69 (37) = happyShift action_54
action_69 (38) = happyShift action_55
action_69 (5) = happyGoto action_75
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (6) = happyShift action_2
action_70 (13) = happyShift action_4
action_70 (19) = happyShift action_5
action_70 (20) = happyShift action_6
action_70 (21) = happyShift action_7
action_70 (27) = happyShift action_8
action_70 (28) = happyShift action_9
action_70 (29) = happyShift action_10
action_70 (30) = happyShift action_11
action_70 (32) = happyShift action_12
action_70 (35) = happyShift action_13
action_70 (4) = happyGoto action_74
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_2
action_71 (13) = happyShift action_4
action_71 (19) = happyShift action_5
action_71 (20) = happyShift action_6
action_71 (21) = happyShift action_7
action_71 (27) = happyShift action_8
action_71 (28) = happyShift action_9
action_71 (29) = happyShift action_10
action_71 (30) = happyShift action_11
action_71 (32) = happyShift action_12
action_71 (35) = happyShift action_13
action_71 (4) = happyGoto action_73
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (6) = happyShift action_2
action_72 (7) = happyShift action_22
action_72 (8) = happyShift action_23
action_72 (9) = happyShift action_24
action_72 (10) = happyShift action_25
action_72 (11) = happyShift action_26
action_72 (12) = happyShift action_27
action_72 (13) = happyShift action_4
action_72 (14) = happyShift action_28
action_72 (15) = happyShift action_29
action_72 (16) = happyShift action_30
action_72 (17) = happyShift action_31
action_72 (18) = happyShift action_32
action_72 (19) = happyShift action_5
action_72 (20) = happyShift action_6
action_72 (21) = happyShift action_7
action_72 (27) = happyShift action_8
action_72 (28) = happyShift action_9
action_72 (29) = happyShift action_10
action_72 (30) = happyShift action_11
action_72 (32) = happyShift action_12
action_72 (35) = happyShift action_13
action_72 (4) = happyGoto action_21
action_72 _ = happyReduce_16

action_73 (6) = happyShift action_2
action_73 (7) = happyShift action_22
action_73 (8) = happyShift action_23
action_73 (9) = happyShift action_24
action_73 (10) = happyShift action_25
action_73 (11) = happyShift action_26
action_73 (12) = happyShift action_27
action_73 (13) = happyShift action_4
action_73 (14) = happyShift action_28
action_73 (15) = happyShift action_29
action_73 (16) = happyShift action_30
action_73 (17) = happyShift action_31
action_73 (18) = happyShift action_32
action_73 (19) = happyShift action_5
action_73 (20) = happyShift action_6
action_73 (21) = happyShift action_7
action_73 (25) = happyShift action_79
action_73 (27) = happyShift action_8
action_73 (28) = happyShift action_9
action_73 (29) = happyShift action_10
action_73 (30) = happyShift action_11
action_73 (32) = happyShift action_12
action_73 (35) = happyShift action_13
action_73 (4) = happyGoto action_21
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (6) = happyShift action_2
action_74 (7) = happyShift action_22
action_74 (8) = happyShift action_23
action_74 (9) = happyShift action_24
action_74 (10) = happyShift action_25
action_74 (11) = happyShift action_26
action_74 (12) = happyShift action_27
action_74 (13) = happyShift action_4
action_74 (14) = happyShift action_28
action_74 (15) = happyShift action_29
action_74 (16) = happyShift action_30
action_74 (17) = happyShift action_31
action_74 (18) = happyShift action_32
action_74 (19) = happyShift action_5
action_74 (20) = happyShift action_6
action_74 (21) = happyShift action_7
action_74 (25) = happyShift action_78
action_74 (27) = happyShift action_8
action_74 (28) = happyShift action_9
action_74 (29) = happyShift action_10
action_74 (30) = happyShift action_11
action_74 (32) = happyShift action_12
action_74 (35) = happyShift action_13
action_74 (4) = happyGoto action_21
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (33) = happyShift action_77
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_27

action_77 _ = happyReduce_26

action_78 _ = happyReduce_23

action_79 _ = happyReduce_22

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
	(HappyAbsSyn5  happy_var_4) `HappyStk`
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

happyReduce_22 = happyReduce 8 4 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Head happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 8 4 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Tail happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_26 = happyReduce 5 5 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 5 happyReduction_27
happyReduction_27 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TList happy_var_2
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenDiv -> cont 10;
	TokenAnd -> cont 11;
	TokenOr -> cont 12;
	TokenNot -> cont 13;
	TokenGreaterThan -> cont 14;
	TokenGreaterOrEqual -> cont 15;
	TokenLessThan -> cont 16;
	TokenLessOrEqual -> cont 17;
	TokenEqual -> cont 18;
	TokenTrue -> cont 19;
	TokenFalse -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenLBracket -> cont 24;
	TokenRBracket -> cont 25;
	TokenComma -> cont 26;
	TokenHead -> cont 27;
	TokenTail -> cont 28;
	TokenVar happy_dollar_dollar -> cont 29;
	TokenLam -> cont 30;
	TokenArrow -> cont 31;
	TokenLParen -> cont 32;
	TokenRParen -> cont 33;
	TokenEq -> cont 34;
	TokenLet -> cont 35;
	TokenIn -> cont 36;
	TokenBoolean -> cont 37;
	TokenNumber -> cont 38;
	TokenColon -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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
