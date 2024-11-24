{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,378) ([0,128,0,0,0,128,0,0,0,256,0,0,0,0,0,0,0,0,0,1,0,0,0,2,0,0,0,4,0,0,0,0,0,64,24703,25601,0,0,0,8,0,64,24703,25601,0,0,0,0,0,49152,0,0,0,0,0,0,0,0,0,2048,0,0,0,4096,0,0,0,48,0,0,0,960,0,1536,0,0,0,14336,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,16384,0,0,0,16384,0,0,0,1,0,0,0,1,0,64,31,25601,0,64,3,25601,0,0,0,0,0,0,8064,0,0,64,31,25601,0,64,31,25601,0,64,31,25601,0,64,31,25601,0,64,31,25601,0,64,31,25601,0,0,0,0,0,0,0,0,0,0,0,2,0,64,31,25601,0,64,31,25601,0,0,128,0,0,0,128,0,0,0,0,2,0,64,31,25601,0,64,31,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,64,3,25601,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,48,0,0,0,960,0,0,0,960,0,1536,0,0,0,1536,0,0,0,1536,0,0,0,1536,0,0,0,14336,0,0,0,14336,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,0,64,31,25601,0,64,31,25601,0,0,0,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,24703,25605,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,24703,25601,0,0,0,4,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr_stmt","expr","assign_stmt","or_expr","and_expr","eq_expr","rel_expr","add_expr","mul_expr","unary_expr","primary","decl_stmt","if_stmt","if_block","while_stmt","num","\"fun\"","\"main\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"println\"","\"readln\"","\"val\"","\"var\"","\"=\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","string","id","%eof"]
        bit_start = st Prelude.* 64
        bit_end = (st Prelude.+ 1) Prelude.* 64
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..63]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (24) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (24) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (25) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (64) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (49) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (50) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (51) = happyShift action_8
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (23) = happyShift action_26
action_8 (33) = happyShift action_27
action_8 (34) = happyShift action_28
action_8 (35) = happyShift action_29
action_8 (36) = happyShift action_30
action_8 (37) = happyShift action_31
action_8 (38) = happyShift action_32
action_8 (39) = happyShift action_33
action_8 (46) = happyShift action_34
action_8 (47) = happyShift action_35
action_8 (49) = happyShift action_36
action_8 (59) = happyShift action_37
action_8 (62) = happyShift action_38
action_8 (63) = happyShift action_39
action_8 (6) = happyGoto action_9
action_8 (7) = happyGoto action_10
action_8 (8) = happyGoto action_11
action_8 (9) = happyGoto action_12
action_8 (10) = happyGoto action_13
action_8 (11) = happyGoto action_14
action_8 (12) = happyGoto action_15
action_8 (13) = happyGoto action_16
action_8 (14) = happyGoto action_17
action_8 (15) = happyGoto action_18
action_8 (16) = happyGoto action_19
action_8 (17) = happyGoto action_20
action_8 (18) = happyGoto action_21
action_8 (19) = happyGoto action_22
action_8 (20) = happyGoto action_23
action_8 (21) = happyGoto action_24
action_8 (22) = happyGoto action_25
action_8 _ = happyReduce_4

action_9 (52) = happyShift action_72
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_26
action_10 (33) = happyShift action_27
action_10 (34) = happyShift action_28
action_10 (35) = happyShift action_29
action_10 (36) = happyShift action_30
action_10 (37) = happyShift action_31
action_10 (38) = happyShift action_32
action_10 (39) = happyShift action_33
action_10 (46) = happyShift action_34
action_10 (47) = happyShift action_35
action_10 (49) = happyShift action_36
action_10 (59) = happyShift action_37
action_10 (62) = happyShift action_38
action_10 (63) = happyShift action_39
action_10 (6) = happyGoto action_71
action_10 (7) = happyGoto action_10
action_10 (8) = happyGoto action_11
action_10 (9) = happyGoto action_12
action_10 (10) = happyGoto action_13
action_10 (11) = happyGoto action_14
action_10 (12) = happyGoto action_15
action_10 (13) = happyGoto action_16
action_10 (14) = happyGoto action_17
action_10 (15) = happyGoto action_18
action_10 (16) = happyGoto action_19
action_10 (17) = happyGoto action_20
action_10 (18) = happyGoto action_21
action_10 (19) = happyGoto action_22
action_10 (20) = happyGoto action_23
action_10 (21) = happyGoto action_24
action_10 (22) = happyGoto action_25
action_10 _ = happyReduce_4

action_11 _ = happyReduce_10

action_12 (31) = happyShift action_69
action_12 (32) = happyShift action_70
action_12 _ = happyReduce_11

action_13 _ = happyReduce_6

action_14 (60) = happyShift action_68
action_14 _ = happyReduce_12

action_15 (61) = happyShift action_67
action_15 _ = happyReduce_25

action_16 (53) = happyShift action_65
action_16 (54) = happyShift action_66
action_16 _ = happyReduce_27

action_17 (55) = happyShift action_61
action_17 (56) = happyShift action_62
action_17 (57) = happyShift action_63
action_17 (58) = happyShift action_64
action_17 _ = happyReduce_30

action_18 (26) = happyShift action_59
action_18 (27) = happyShift action_60
action_18 _ = happyReduce_35

action_19 (28) = happyShift action_56
action_19 (29) = happyShift action_57
action_19 (30) = happyShift action_58
action_19 _ = happyReduce_38

action_20 _ = happyReduce_42

action_21 _ = happyReduce_44

action_22 _ = happyReduce_5

action_23 _ = happyReduce_7

action_24 _ = happyReduce_8

action_25 _ = happyReduce_9

action_26 _ = happyReduce_45

action_27 _ = happyReduce_47

action_28 _ = happyReduce_48

action_29 (49) = happyShift action_55
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (49) = happyShift action_54
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (49) = happyShift action_53
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (63) = happyShift action_52
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (63) = happyShift action_51
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (49) = happyShift action_50
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (49) = happyShift action_49
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (23) = happyShift action_26
action_36 (33) = happyShift action_27
action_36 (34) = happyShift action_28
action_36 (35) = happyShift action_29
action_36 (36) = happyShift action_30
action_36 (37) = happyShift action_31
action_36 (49) = happyShift action_36
action_36 (59) = happyShift action_37
action_36 (62) = happyShift action_38
action_36 (63) = happyShift action_47
action_36 (9) = happyGoto action_48
action_36 (11) = happyGoto action_14
action_36 (12) = happyGoto action_15
action_36 (13) = happyGoto action_16
action_36 (14) = happyGoto action_17
action_36 (15) = happyGoto action_18
action_36 (16) = happyGoto action_19
action_36 (17) = happyGoto action_20
action_36 (18) = happyGoto action_21
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (23) = happyShift action_26
action_37 (33) = happyShift action_27
action_37 (34) = happyShift action_28
action_37 (49) = happyShift action_36
action_37 (59) = happyShift action_37
action_37 (62) = happyShift action_38
action_37 (63) = happyShift action_47
action_37 (17) = happyGoto action_46
action_37 (18) = happyGoto action_21
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_50

action_39 (40) = happyShift action_40
action_39 (41) = happyShift action_41
action_39 (42) = happyShift action_42
action_39 (43) = happyShift action_43
action_39 (44) = happyShift action_44
action_39 (45) = happyShift action_45
action_39 _ = happyReduce_46

action_40 (23) = happyShift action_26
action_40 (33) = happyShift action_27
action_40 (34) = happyShift action_28
action_40 (35) = happyShift action_29
action_40 (36) = happyShift action_30
action_40 (37) = happyShift action_31
action_40 (49) = happyShift action_36
action_40 (59) = happyShift action_37
action_40 (62) = happyShift action_38
action_40 (63) = happyShift action_47
action_40 (9) = happyGoto action_99
action_40 (11) = happyGoto action_14
action_40 (12) = happyGoto action_15
action_40 (13) = happyGoto action_16
action_40 (14) = happyGoto action_17
action_40 (15) = happyGoto action_18
action_40 (16) = happyGoto action_19
action_40 (17) = happyGoto action_20
action_40 (18) = happyGoto action_21
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (23) = happyShift action_26
action_41 (33) = happyShift action_27
action_41 (34) = happyShift action_28
action_41 (35) = happyShift action_29
action_41 (36) = happyShift action_30
action_41 (37) = happyShift action_31
action_41 (49) = happyShift action_36
action_41 (59) = happyShift action_37
action_41 (62) = happyShift action_38
action_41 (63) = happyShift action_47
action_41 (9) = happyGoto action_98
action_41 (11) = happyGoto action_14
action_41 (12) = happyGoto action_15
action_41 (13) = happyGoto action_16
action_41 (14) = happyGoto action_17
action_41 (15) = happyGoto action_18
action_41 (16) = happyGoto action_19
action_41 (17) = happyGoto action_20
action_41 (18) = happyGoto action_21
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_26
action_42 (33) = happyShift action_27
action_42 (34) = happyShift action_28
action_42 (35) = happyShift action_29
action_42 (36) = happyShift action_30
action_42 (37) = happyShift action_31
action_42 (49) = happyShift action_36
action_42 (59) = happyShift action_37
action_42 (62) = happyShift action_38
action_42 (63) = happyShift action_47
action_42 (9) = happyGoto action_97
action_42 (11) = happyGoto action_14
action_42 (12) = happyGoto action_15
action_42 (13) = happyGoto action_16
action_42 (14) = happyGoto action_17
action_42 (15) = happyGoto action_18
action_42 (16) = happyGoto action_19
action_42 (17) = happyGoto action_20
action_42 (18) = happyGoto action_21
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (23) = happyShift action_26
action_43 (33) = happyShift action_27
action_43 (34) = happyShift action_28
action_43 (35) = happyShift action_29
action_43 (36) = happyShift action_30
action_43 (37) = happyShift action_31
action_43 (49) = happyShift action_36
action_43 (59) = happyShift action_37
action_43 (62) = happyShift action_38
action_43 (63) = happyShift action_47
action_43 (9) = happyGoto action_96
action_43 (11) = happyGoto action_14
action_43 (12) = happyGoto action_15
action_43 (13) = happyGoto action_16
action_43 (14) = happyGoto action_17
action_43 (15) = happyGoto action_18
action_43 (16) = happyGoto action_19
action_43 (17) = happyGoto action_20
action_43 (18) = happyGoto action_21
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (23) = happyShift action_26
action_44 (33) = happyShift action_27
action_44 (34) = happyShift action_28
action_44 (35) = happyShift action_29
action_44 (36) = happyShift action_30
action_44 (37) = happyShift action_31
action_44 (49) = happyShift action_36
action_44 (59) = happyShift action_37
action_44 (62) = happyShift action_38
action_44 (63) = happyShift action_47
action_44 (9) = happyGoto action_95
action_44 (11) = happyGoto action_14
action_44 (12) = happyGoto action_15
action_44 (13) = happyGoto action_16
action_44 (14) = happyGoto action_17
action_44 (15) = happyGoto action_18
action_44 (16) = happyGoto action_19
action_44 (17) = happyGoto action_20
action_44 (18) = happyGoto action_21
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (23) = happyShift action_26
action_45 (33) = happyShift action_27
action_45 (34) = happyShift action_28
action_45 (35) = happyShift action_29
action_45 (36) = happyShift action_30
action_45 (37) = happyShift action_31
action_45 (49) = happyShift action_36
action_45 (59) = happyShift action_37
action_45 (62) = happyShift action_38
action_45 (63) = happyShift action_47
action_45 (9) = happyGoto action_94
action_45 (11) = happyGoto action_14
action_45 (12) = happyGoto action_15
action_45 (13) = happyGoto action_16
action_45 (14) = happyGoto action_17
action_45 (15) = happyGoto action_18
action_45 (16) = happyGoto action_19
action_45 (17) = happyGoto action_20
action_45 (18) = happyGoto action_21
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_43

action_47 _ = happyReduce_46

action_48 (50) = happyShift action_93
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (23) = happyShift action_26
action_49 (33) = happyShift action_27
action_49 (34) = happyShift action_28
action_49 (35) = happyShift action_29
action_49 (36) = happyShift action_30
action_49 (37) = happyShift action_31
action_49 (49) = happyShift action_36
action_49 (59) = happyShift action_37
action_49 (62) = happyShift action_38
action_49 (63) = happyShift action_47
action_49 (9) = happyGoto action_92
action_49 (11) = happyGoto action_14
action_49 (12) = happyGoto action_15
action_49 (13) = happyGoto action_16
action_49 (14) = happyGoto action_17
action_49 (15) = happyGoto action_18
action_49 (16) = happyGoto action_19
action_49 (17) = happyGoto action_20
action_49 (18) = happyGoto action_21
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (23) = happyShift action_26
action_50 (33) = happyShift action_27
action_50 (34) = happyShift action_28
action_50 (35) = happyShift action_29
action_50 (36) = happyShift action_30
action_50 (37) = happyShift action_31
action_50 (49) = happyShift action_36
action_50 (59) = happyShift action_37
action_50 (62) = happyShift action_38
action_50 (63) = happyShift action_47
action_50 (9) = happyGoto action_91
action_50 (11) = happyGoto action_14
action_50 (12) = happyGoto action_15
action_50 (13) = happyGoto action_16
action_50 (14) = happyGoto action_17
action_50 (15) = happyGoto action_18
action_50 (16) = happyGoto action_19
action_50 (17) = happyGoto action_20
action_50 (18) = happyGoto action_21
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (40) = happyShift action_90
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (40) = happyShift action_89
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (50) = happyShift action_88
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (23) = happyShift action_26
action_54 (33) = happyShift action_27
action_54 (34) = happyShift action_28
action_54 (35) = happyShift action_29
action_54 (36) = happyShift action_30
action_54 (37) = happyShift action_31
action_54 (49) = happyShift action_36
action_54 (59) = happyShift action_37
action_54 (62) = happyShift action_38
action_54 (63) = happyShift action_47
action_54 (9) = happyGoto action_87
action_54 (11) = happyGoto action_14
action_54 (12) = happyGoto action_15
action_54 (13) = happyGoto action_16
action_54 (14) = happyGoto action_17
action_54 (15) = happyGoto action_18
action_54 (16) = happyGoto action_19
action_54 (17) = happyGoto action_20
action_54 (18) = happyGoto action_21
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (23) = happyShift action_26
action_55 (33) = happyShift action_27
action_55 (34) = happyShift action_28
action_55 (35) = happyShift action_29
action_55 (36) = happyShift action_30
action_55 (37) = happyShift action_31
action_55 (49) = happyShift action_36
action_55 (59) = happyShift action_37
action_55 (62) = happyShift action_38
action_55 (63) = happyShift action_47
action_55 (9) = happyGoto action_86
action_55 (11) = happyGoto action_14
action_55 (12) = happyGoto action_15
action_55 (13) = happyGoto action_16
action_55 (14) = happyGoto action_17
action_55 (15) = happyGoto action_18
action_55 (16) = happyGoto action_19
action_55 (17) = happyGoto action_20
action_55 (18) = happyGoto action_21
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_26
action_56 (33) = happyShift action_27
action_56 (34) = happyShift action_28
action_56 (49) = happyShift action_36
action_56 (59) = happyShift action_37
action_56 (62) = happyShift action_38
action_56 (63) = happyShift action_47
action_56 (17) = happyGoto action_85
action_56 (18) = happyGoto action_21
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (23) = happyShift action_26
action_57 (33) = happyShift action_27
action_57 (34) = happyShift action_28
action_57 (49) = happyShift action_36
action_57 (59) = happyShift action_37
action_57 (62) = happyShift action_38
action_57 (63) = happyShift action_47
action_57 (17) = happyGoto action_84
action_57 (18) = happyGoto action_21
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (23) = happyShift action_26
action_58 (33) = happyShift action_27
action_58 (34) = happyShift action_28
action_58 (49) = happyShift action_36
action_58 (59) = happyShift action_37
action_58 (62) = happyShift action_38
action_58 (63) = happyShift action_47
action_58 (17) = happyGoto action_83
action_58 (18) = happyGoto action_21
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (23) = happyShift action_26
action_59 (33) = happyShift action_27
action_59 (34) = happyShift action_28
action_59 (49) = happyShift action_36
action_59 (59) = happyShift action_37
action_59 (62) = happyShift action_38
action_59 (63) = happyShift action_47
action_59 (16) = happyGoto action_82
action_59 (17) = happyGoto action_20
action_59 (18) = happyGoto action_21
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (23) = happyShift action_26
action_60 (33) = happyShift action_27
action_60 (34) = happyShift action_28
action_60 (49) = happyShift action_36
action_60 (59) = happyShift action_37
action_60 (62) = happyShift action_38
action_60 (63) = happyShift action_47
action_60 (16) = happyGoto action_81
action_60 (17) = happyGoto action_20
action_60 (18) = happyGoto action_21
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (23) = happyShift action_26
action_61 (33) = happyShift action_27
action_61 (34) = happyShift action_28
action_61 (49) = happyShift action_36
action_61 (59) = happyShift action_37
action_61 (62) = happyShift action_38
action_61 (63) = happyShift action_47
action_61 (15) = happyGoto action_80
action_61 (16) = happyGoto action_19
action_61 (17) = happyGoto action_20
action_61 (18) = happyGoto action_21
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (23) = happyShift action_26
action_62 (33) = happyShift action_27
action_62 (34) = happyShift action_28
action_62 (49) = happyShift action_36
action_62 (59) = happyShift action_37
action_62 (62) = happyShift action_38
action_62 (63) = happyShift action_47
action_62 (15) = happyGoto action_79
action_62 (16) = happyGoto action_19
action_62 (17) = happyGoto action_20
action_62 (18) = happyGoto action_21
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (23) = happyShift action_26
action_63 (33) = happyShift action_27
action_63 (34) = happyShift action_28
action_63 (49) = happyShift action_36
action_63 (59) = happyShift action_37
action_63 (62) = happyShift action_38
action_63 (63) = happyShift action_47
action_63 (15) = happyGoto action_78
action_63 (16) = happyGoto action_19
action_63 (17) = happyGoto action_20
action_63 (18) = happyGoto action_21
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (23) = happyShift action_26
action_64 (33) = happyShift action_27
action_64 (34) = happyShift action_28
action_64 (49) = happyShift action_36
action_64 (59) = happyShift action_37
action_64 (62) = happyShift action_38
action_64 (63) = happyShift action_47
action_64 (15) = happyGoto action_77
action_64 (16) = happyGoto action_19
action_64 (17) = happyGoto action_20
action_64 (18) = happyGoto action_21
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (23) = happyShift action_26
action_65 (33) = happyShift action_27
action_65 (34) = happyShift action_28
action_65 (49) = happyShift action_36
action_65 (59) = happyShift action_37
action_65 (62) = happyShift action_38
action_65 (63) = happyShift action_47
action_65 (14) = happyGoto action_76
action_65 (15) = happyGoto action_18
action_65 (16) = happyGoto action_19
action_65 (17) = happyGoto action_20
action_65 (18) = happyGoto action_21
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (23) = happyShift action_26
action_66 (33) = happyShift action_27
action_66 (34) = happyShift action_28
action_66 (49) = happyShift action_36
action_66 (59) = happyShift action_37
action_66 (62) = happyShift action_38
action_66 (63) = happyShift action_47
action_66 (14) = happyGoto action_75
action_66 (15) = happyGoto action_18
action_66 (16) = happyGoto action_19
action_66 (17) = happyGoto action_20
action_66 (18) = happyGoto action_21
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (23) = happyShift action_26
action_67 (33) = happyShift action_27
action_67 (34) = happyShift action_28
action_67 (49) = happyShift action_36
action_67 (59) = happyShift action_37
action_67 (62) = happyShift action_38
action_67 (63) = happyShift action_47
action_67 (13) = happyGoto action_74
action_67 (14) = happyGoto action_17
action_67 (15) = happyGoto action_18
action_67 (16) = happyGoto action_19
action_67 (17) = happyGoto action_20
action_67 (18) = happyGoto action_21
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (23) = happyShift action_26
action_68 (33) = happyShift action_27
action_68 (34) = happyShift action_28
action_68 (49) = happyShift action_36
action_68 (59) = happyShift action_37
action_68 (62) = happyShift action_38
action_68 (63) = happyShift action_47
action_68 (12) = happyGoto action_73
action_68 (13) = happyGoto action_16
action_68 (14) = happyGoto action_17
action_68 (15) = happyGoto action_18
action_68 (16) = happyGoto action_19
action_68 (17) = happyGoto action_20
action_68 (18) = happyGoto action_21
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_22

action_70 _ = happyReduce_23

action_71 _ = happyReduce_3

action_72 _ = happyReduce_2

action_73 (61) = happyShift action_67
action_73 _ = happyReduce_24

action_74 (53) = happyShift action_65
action_74 (54) = happyShift action_66
action_74 _ = happyReduce_26

action_75 (55) = happyShift action_61
action_75 (56) = happyShift action_62
action_75 (57) = happyShift action_63
action_75 (58) = happyShift action_64
action_75 _ = happyReduce_29

action_76 (55) = happyShift action_61
action_76 (56) = happyShift action_62
action_76 (57) = happyShift action_63
action_76 (58) = happyShift action_64
action_76 _ = happyReduce_28

action_77 (26) = happyShift action_59
action_77 (27) = happyShift action_60
action_77 _ = happyReduce_32

action_78 (26) = happyShift action_59
action_78 (27) = happyShift action_60
action_78 _ = happyReduce_34

action_79 (26) = happyShift action_59
action_79 (27) = happyShift action_60
action_79 _ = happyReduce_31

action_80 (26) = happyShift action_59
action_80 (27) = happyShift action_60
action_80 _ = happyReduce_33

action_81 (28) = happyShift action_56
action_81 (29) = happyShift action_57
action_81 (30) = happyShift action_58
action_81 _ = happyReduce_37

action_82 (28) = happyShift action_56
action_82 (29) = happyShift action_57
action_82 (30) = happyShift action_58
action_82 _ = happyReduce_36

action_83 _ = happyReduce_41

action_84 _ = happyReduce_40

action_85 _ = happyReduce_39

action_86 (50) = happyShift action_105
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (50) = happyShift action_104
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_13

action_89 (23) = happyShift action_26
action_89 (33) = happyShift action_27
action_89 (34) = happyShift action_28
action_89 (35) = happyShift action_29
action_89 (36) = happyShift action_30
action_89 (37) = happyShift action_31
action_89 (49) = happyShift action_36
action_89 (59) = happyShift action_37
action_89 (62) = happyShift action_38
action_89 (63) = happyShift action_47
action_89 (9) = happyGoto action_103
action_89 (11) = happyGoto action_14
action_89 (12) = happyGoto action_15
action_89 (13) = happyGoto action_16
action_89 (14) = happyGoto action_17
action_89 (15) = happyGoto action_18
action_89 (16) = happyGoto action_19
action_89 (17) = happyGoto action_20
action_89 (18) = happyGoto action_21
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (23) = happyShift action_26
action_90 (33) = happyShift action_27
action_90 (34) = happyShift action_28
action_90 (35) = happyShift action_29
action_90 (36) = happyShift action_30
action_90 (37) = happyShift action_31
action_90 (49) = happyShift action_36
action_90 (59) = happyShift action_37
action_90 (62) = happyShift action_38
action_90 (63) = happyShift action_47
action_90 (9) = happyGoto action_102
action_90 (11) = happyGoto action_14
action_90 (12) = happyGoto action_15
action_90 (13) = happyGoto action_16
action_90 (14) = happyGoto action_17
action_90 (15) = happyGoto action_18
action_90 (16) = happyGoto action_19
action_90 (17) = happyGoto action_20
action_90 (18) = happyGoto action_21
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (50) = happyShift action_101
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (50) = happyShift action_100
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_49

action_94 _ = happyReduce_21

action_95 _ = happyReduce_20

action_96 _ = happyReduce_19

action_97 _ = happyReduce_18

action_98 _ = happyReduce_17

action_99 _ = happyReduce_16

action_100 (23) = happyShift action_26
action_100 (33) = happyShift action_27
action_100 (34) = happyShift action_28
action_100 (35) = happyShift action_29
action_100 (36) = happyShift action_30
action_100 (37) = happyShift action_31
action_100 (38) = happyShift action_32
action_100 (39) = happyShift action_33
action_100 (46) = happyShift action_34
action_100 (47) = happyShift action_35
action_100 (49) = happyShift action_36
action_100 (51) = happyShift action_8
action_100 (59) = happyShift action_37
action_100 (62) = happyShift action_38
action_100 (63) = happyShift action_39
action_100 (5) = happyGoto action_107
action_100 (7) = happyGoto action_108
action_100 (8) = happyGoto action_11
action_100 (9) = happyGoto action_12
action_100 (10) = happyGoto action_13
action_100 (11) = happyGoto action_14
action_100 (12) = happyGoto action_15
action_100 (13) = happyGoto action_16
action_100 (14) = happyGoto action_17
action_100 (15) = happyGoto action_18
action_100 (16) = happyGoto action_19
action_100 (17) = happyGoto action_20
action_100 (18) = happyGoto action_21
action_100 (19) = happyGoto action_22
action_100 (20) = happyGoto action_23
action_100 (21) = happyGoto action_24
action_100 (22) = happyGoto action_25
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (51) = happyShift action_8
action_101 (5) = happyGoto action_106
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_51

action_103 _ = happyReduce_52

action_104 _ = happyReduce_15

action_105 _ = happyReduce_14

action_106 _ = happyReduce_57

action_107 (48) = happyShift action_110
action_107 _ = happyReduce_56

action_108 (48) = happyShift action_109
action_108 _ = happyReduce_54

action_109 (23) = happyShift action_26
action_109 (33) = happyShift action_27
action_109 (34) = happyShift action_28
action_109 (35) = happyShift action_29
action_109 (36) = happyShift action_30
action_109 (37) = happyShift action_31
action_109 (38) = happyShift action_32
action_109 (39) = happyShift action_33
action_109 (46) = happyShift action_34
action_109 (47) = happyShift action_35
action_109 (49) = happyShift action_36
action_109 (59) = happyShift action_37
action_109 (62) = happyShift action_38
action_109 (63) = happyShift action_39
action_109 (7) = happyGoto action_112
action_109 (8) = happyGoto action_11
action_109 (9) = happyGoto action_12
action_109 (10) = happyGoto action_13
action_109 (11) = happyGoto action_14
action_109 (12) = happyGoto action_15
action_109 (13) = happyGoto action_16
action_109 (14) = happyGoto action_17
action_109 (15) = happyGoto action_18
action_109 (16) = happyGoto action_19
action_109 (17) = happyGoto action_20
action_109 (18) = happyGoto action_21
action_109 (19) = happyGoto action_22
action_109 (20) = happyGoto action_23
action_109 (21) = happyGoto action_24
action_109 (22) = happyGoto action_25
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (51) = happyShift action_8
action_110 (5) = happyGoto action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_55

action_112 _ = happyReduce_53

happyReduce_1 = happyReduce 5 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_5
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  5 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Block happy_var_2
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  6 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_0  6 happyReduction_4
happyReduction_4  =  HappyAbsSyn6
		 ([]
	)

happyReduce_5 = happySpecReduce_1  7 happyReduction_5
happyReduction_5 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (ExprStmt happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 _
	_
	_
	 =  HappyAbsSyn9
		 (Readln
	)

happyReduce_14 = happyReduce 4 9 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 9 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Println happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Add (Var happy_var_1) happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Sub (Var happy_var_1) happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Mult (Var happy_var_1) happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Div (Var happy_var_1) happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Mod (Var happy_var_1) happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  10 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (Incr happy_var_1
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  10 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (Decr happy_var_1
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  12 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  13 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Less happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  14 happyReduction_33
happyReduction_33 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  14 happyReduction_34
happyReduction_34 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  14 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Add happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  15 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  16 happyReduction_42
happyReduction_42 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  17 happyReduction_43
happyReduction_43 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  17 happyReduction_44
happyReduction_44 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  18 happyReduction_45
happyReduction_45 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn18
		 (Num happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  18 happyReduction_46
happyReduction_46 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn18
		 (Var happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  18 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn18
		 (Bool True
	)

happyReduce_48 = happySpecReduce_1  18 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn18
		 (Bool False
	)

happyReduce_49 = happySpecReduce_3  18 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  18 happyReduction_50
happyReduction_50 (HappyTerminal (TString happy_var_1))
	 =  HappyAbsSyn18
		 (String happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happyReduce 4 19 happyReduction_51
happyReduction_51 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_52 = happyReduce 4 19 happyReduction_52
happyReduction_52 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl [Assign (Val happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_53 = happyReduce 7 20 happyReduction_53
happyReduction_53 ((HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 5 20 happyReduction_54
happyReduction_54 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 7 21 happyReduction_55
happyReduction_55 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_56 = happyReduce 5 21 happyReduction_56
happyReduction_56 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 5 22 happyReduction_57
happyReduction_57 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TNum happy_dollar_dollar -> cont 23;
	TFun -> cont 24;
	TMain -> cont 25;
	TPlus -> cont 26;
	TMinus -> cont 27;
	TMult -> cont 28;
	TDiv -> cont 29;
	TMod -> cont 30;
	TIncr -> cont 31;
	TDecr -> cont 32;
	TTrue -> cont 33;
	TFalse -> cont 34;
	TPrint -> cont 35;
	TPrintln -> cont 36;
	TReadln -> cont 37;
	TVal -> cont 38;
	TVar -> cont 39;
	TAssign -> cont 40;
	TPlusAssign -> cont 41;
	TMinusAssign -> cont 42;
	TMultAssign -> cont 43;
	TDivAssign -> cont 44;
	TModAssign -> cont 45;
	TWhile -> cont 46;
	TIf -> cont 47;
	TElse -> cont 48;
	TLParen -> cont 49;
	TRParen -> cont 50;
	TLBraces -> cont 51;
	TRBraces -> cont 52;
	TEqual -> cont 53;
	TDifferent -> cont 54;
	TGreater -> cont 55;
	TLess -> cont 56;
	TGreaterEq -> cont 57;
	TLessEq -> cont 58;
	TNot -> cont 59;
	TOr -> cont 60;
	TAnd -> cont 61;
	TString happy_dollar_dollar -> cont 62;
	TId happy_dollar_dollar -> cont 63;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 64 tk tks = happyError' (tks, explist)
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
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError toks = error $ "Parse error at: " ++ show toks
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
