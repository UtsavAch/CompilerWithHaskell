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
happyExpList = Happy_Data_Array.listArray (0,378) ([0,128,0,0,0,2048,0,0,0,0,1,0,0,0,0,0,0,0,0,0,8,0,0,0,256,0,0,0,8192,0,0,0,0,0,0,64,1016,8203,6,0,0,1024,0,16384,63488,2819,1568,0,24576,0,0,0,0,0,0,0,0,0,0,4,0,0,0,128,0,0,0,24,0,0,0,7680,0,0,3,0,0,0,448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,8,0,0,0,128,0,0,0,0,0,0,0,0,16384,0,0,0,8,0,0,0,128,0,16384,63488,2049,1568,0,32772,32769,25088,0,0,0,0,0,0,49152,15,0,16384,63488,2049,1568,0,32772,32799,25088,0,64,504,8200,6,1024,8064,128,98,16384,63488,2049,1568,0,32772,32799,25088,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,32772,45119,25090,0,64,504,8200,6,0,0,0,16,0,0,4096,0,0,32772,32799,25088,0,64,504,8200,6,1024,384,128,98,16384,6144,2048,1568,0,32772,32769,25088,0,64,24,8200,6,1024,384,128,98,16384,6144,2048,1568,0,32772,32769,25088,0,64,24,8200,6,1024,384,128,98,16384,6144,2048,1568,0,32772,32769,25088,0,64,24,8200,6,1024,384,128,98,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,24,0,0,0,7680,0,0,0,57344,1,0,48,0,0,0,768,0,0,0,12288,0,0,0,0,3,0,0,0,448,0,0,0,7168,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,16,0,0,0,0,0,0,14,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,63488,11011,1568,0,0,0,2,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,63488,2049,1568,0,0,0,0,0,0,0,0,0,1024,16256,688,98,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr","assign_stmt","or_expr","and_expr","eq_expr","rel_expr","add_expr","mul_expr","unary_expr","primary","Types","decl_stmt","block_or_stmt","if_block_or_stmt","while_stmt","num","\"fun\"","\"main\"","\"Int\"","\"Bool\"","\"String\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"println\"","\"readln\"","\"return\"","\"var\"","\"=\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","\":\"","string","id","%eof"]
        bit_start = st Prelude.* 68
        bit_end = (st Prelude.+ 1) Prelude.* 68
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..67]
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

action_3 (68) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (52) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (53) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (54) = happyShift action_8
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (23) = happyShift action_24
action_8 (36) = happyShift action_25
action_8 (37) = happyShift action_26
action_8 (38) = happyShift action_27
action_8 (39) = happyShift action_28
action_8 (40) = happyShift action_29
action_8 (41) = happyShift action_30
action_8 (42) = happyShift action_31
action_8 (49) = happyShift action_32
action_8 (50) = happyShift action_33
action_8 (52) = happyShift action_34
action_8 (62) = happyShift action_35
action_8 (66) = happyShift action_36
action_8 (67) = happyShift action_37
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
action_8 (19) = happyGoto action_21
action_8 (21) = happyGoto action_22
action_8 (22) = happyGoto action_23
action_8 _ = happyReduce_4

action_9 (55) = happyShift action_69
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_24
action_10 (36) = happyShift action_25
action_10 (37) = happyShift action_26
action_10 (38) = happyShift action_27
action_10 (39) = happyShift action_28
action_10 (40) = happyShift action_29
action_10 (41) = happyShift action_30
action_10 (42) = happyShift action_31
action_10 (49) = happyShift action_32
action_10 (50) = happyShift action_33
action_10 (52) = happyShift action_34
action_10 (62) = happyShift action_35
action_10 (66) = happyShift action_36
action_10 (67) = happyShift action_37
action_10 (6) = happyGoto action_68
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
action_10 (19) = happyGoto action_21
action_10 (21) = happyGoto action_22
action_10 (22) = happyGoto action_23
action_10 _ = happyReduce_4

action_11 (34) = happyShift action_66
action_11 (35) = happyShift action_67
action_11 _ = happyReduce_9

action_12 _ = happyReduce_6

action_13 (63) = happyShift action_65
action_13 _ = happyReduce_10

action_14 (64) = happyShift action_64
action_14 _ = happyReduce_24

action_15 (56) = happyShift action_62
action_15 (57) = happyShift action_63
action_15 _ = happyReduce_26

action_16 (58) = happyShift action_58
action_16 (59) = happyShift action_59
action_16 (60) = happyShift action_60
action_16 (61) = happyShift action_61
action_16 _ = happyReduce_29

action_17 (29) = happyShift action_56
action_17 (30) = happyShift action_57
action_17 _ = happyReduce_34

action_18 (31) = happyShift action_53
action_18 (32) = happyShift action_54
action_18 (33) = happyShift action_55
action_18 _ = happyReduce_37

action_19 _ = happyReduce_41

action_20 _ = happyReduce_43

action_21 _ = happyReduce_5

action_22 _ = happyReduce_7

action_23 _ = happyReduce_8

action_24 _ = happyReduce_44

action_25 _ = happyReduce_46

action_26 _ = happyReduce_47

action_27 (52) = happyShift action_52
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (52) = happyShift action_51
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (52) = happyShift action_50
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_14

action_31 (67) = happyShift action_49
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (52) = happyShift action_48
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (52) = happyShift action_47
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (23) = happyShift action_24
action_34 (36) = happyShift action_25
action_34 (37) = happyShift action_26
action_34 (38) = happyShift action_27
action_34 (39) = happyShift action_28
action_34 (40) = happyShift action_29
action_34 (41) = happyShift action_30
action_34 (52) = happyShift action_34
action_34 (62) = happyShift action_35
action_34 (66) = happyShift action_36
action_34 (67) = happyShift action_45
action_34 (8) = happyGoto action_46
action_34 (10) = happyGoto action_13
action_34 (11) = happyGoto action_14
action_34 (12) = happyGoto action_15
action_34 (13) = happyGoto action_16
action_34 (14) = happyGoto action_17
action_34 (15) = happyGoto action_18
action_34 (16) = happyGoto action_19
action_34 (17) = happyGoto action_20
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_24
action_35 (36) = happyShift action_25
action_35 (37) = happyShift action_26
action_35 (52) = happyShift action_34
action_35 (62) = happyShift action_35
action_35 (66) = happyShift action_36
action_35 (67) = happyShift action_45
action_35 (16) = happyGoto action_44
action_35 (17) = happyGoto action_20
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_49

action_37 (43) = happyShift action_38
action_37 (44) = happyShift action_39
action_37 (45) = happyShift action_40
action_37 (46) = happyShift action_41
action_37 (47) = happyShift action_42
action_37 (48) = happyShift action_43
action_37 _ = happyReduce_45

action_38 (23) = happyShift action_24
action_38 (36) = happyShift action_25
action_38 (37) = happyShift action_26
action_38 (38) = happyShift action_27
action_38 (39) = happyShift action_28
action_38 (40) = happyShift action_29
action_38 (41) = happyShift action_30
action_38 (52) = happyShift action_34
action_38 (62) = happyShift action_35
action_38 (66) = happyShift action_36
action_38 (67) = happyShift action_45
action_38 (8) = happyGoto action_97
action_38 (10) = happyGoto action_13
action_38 (11) = happyGoto action_14
action_38 (12) = happyGoto action_15
action_38 (13) = happyGoto action_16
action_38 (14) = happyGoto action_17
action_38 (15) = happyGoto action_18
action_38 (16) = happyGoto action_19
action_38 (17) = happyGoto action_20
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (23) = happyShift action_24
action_39 (36) = happyShift action_25
action_39 (37) = happyShift action_26
action_39 (38) = happyShift action_27
action_39 (39) = happyShift action_28
action_39 (40) = happyShift action_29
action_39 (41) = happyShift action_30
action_39 (52) = happyShift action_34
action_39 (62) = happyShift action_35
action_39 (66) = happyShift action_36
action_39 (67) = happyShift action_45
action_39 (8) = happyGoto action_96
action_39 (10) = happyGoto action_13
action_39 (11) = happyGoto action_14
action_39 (12) = happyGoto action_15
action_39 (13) = happyGoto action_16
action_39 (14) = happyGoto action_17
action_39 (15) = happyGoto action_18
action_39 (16) = happyGoto action_19
action_39 (17) = happyGoto action_20
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (23) = happyShift action_24
action_40 (36) = happyShift action_25
action_40 (37) = happyShift action_26
action_40 (38) = happyShift action_27
action_40 (39) = happyShift action_28
action_40 (40) = happyShift action_29
action_40 (41) = happyShift action_30
action_40 (52) = happyShift action_34
action_40 (62) = happyShift action_35
action_40 (66) = happyShift action_36
action_40 (67) = happyShift action_45
action_40 (8) = happyGoto action_95
action_40 (10) = happyGoto action_13
action_40 (11) = happyGoto action_14
action_40 (12) = happyGoto action_15
action_40 (13) = happyGoto action_16
action_40 (14) = happyGoto action_17
action_40 (15) = happyGoto action_18
action_40 (16) = happyGoto action_19
action_40 (17) = happyGoto action_20
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (23) = happyShift action_24
action_41 (36) = happyShift action_25
action_41 (37) = happyShift action_26
action_41 (38) = happyShift action_27
action_41 (39) = happyShift action_28
action_41 (40) = happyShift action_29
action_41 (41) = happyShift action_30
action_41 (52) = happyShift action_34
action_41 (62) = happyShift action_35
action_41 (66) = happyShift action_36
action_41 (67) = happyShift action_45
action_41 (8) = happyGoto action_94
action_41 (10) = happyGoto action_13
action_41 (11) = happyGoto action_14
action_41 (12) = happyGoto action_15
action_41 (13) = happyGoto action_16
action_41 (14) = happyGoto action_17
action_41 (15) = happyGoto action_18
action_41 (16) = happyGoto action_19
action_41 (17) = happyGoto action_20
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_24
action_42 (36) = happyShift action_25
action_42 (37) = happyShift action_26
action_42 (38) = happyShift action_27
action_42 (39) = happyShift action_28
action_42 (40) = happyShift action_29
action_42 (41) = happyShift action_30
action_42 (52) = happyShift action_34
action_42 (62) = happyShift action_35
action_42 (66) = happyShift action_36
action_42 (67) = happyShift action_45
action_42 (8) = happyGoto action_93
action_42 (10) = happyGoto action_13
action_42 (11) = happyGoto action_14
action_42 (12) = happyGoto action_15
action_42 (13) = happyGoto action_16
action_42 (14) = happyGoto action_17
action_42 (15) = happyGoto action_18
action_42 (16) = happyGoto action_19
action_42 (17) = happyGoto action_20
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (23) = happyShift action_24
action_43 (36) = happyShift action_25
action_43 (37) = happyShift action_26
action_43 (38) = happyShift action_27
action_43 (39) = happyShift action_28
action_43 (40) = happyShift action_29
action_43 (41) = happyShift action_30
action_43 (52) = happyShift action_34
action_43 (62) = happyShift action_35
action_43 (66) = happyShift action_36
action_43 (67) = happyShift action_45
action_43 (8) = happyGoto action_92
action_43 (10) = happyGoto action_13
action_43 (11) = happyGoto action_14
action_43 (12) = happyGoto action_15
action_43 (13) = happyGoto action_16
action_43 (14) = happyGoto action_17
action_43 (15) = happyGoto action_18
action_43 (16) = happyGoto action_19
action_43 (17) = happyGoto action_20
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_42

action_45 _ = happyReduce_45

action_46 (53) = happyShift action_91
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (23) = happyShift action_24
action_47 (36) = happyShift action_25
action_47 (37) = happyShift action_26
action_47 (38) = happyShift action_27
action_47 (39) = happyShift action_28
action_47 (40) = happyShift action_29
action_47 (41) = happyShift action_30
action_47 (42) = happyShift action_31
action_47 (49) = happyShift action_32
action_47 (50) = happyShift action_33
action_47 (52) = happyShift action_34
action_47 (54) = happyShift action_8
action_47 (62) = happyShift action_35
action_47 (66) = happyShift action_36
action_47 (67) = happyShift action_37
action_47 (5) = happyGoto action_88
action_47 (7) = happyGoto action_89
action_47 (8) = happyGoto action_11
action_47 (9) = happyGoto action_12
action_47 (10) = happyGoto action_13
action_47 (11) = happyGoto action_14
action_47 (12) = happyGoto action_15
action_47 (13) = happyGoto action_16
action_47 (14) = happyGoto action_17
action_47 (15) = happyGoto action_18
action_47 (16) = happyGoto action_19
action_47 (17) = happyGoto action_20
action_47 (19) = happyGoto action_21
action_47 (20) = happyGoto action_90
action_47 (21) = happyGoto action_22
action_47 (22) = happyGoto action_23
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (23) = happyShift action_24
action_48 (36) = happyShift action_25
action_48 (37) = happyShift action_26
action_48 (38) = happyShift action_27
action_48 (39) = happyShift action_28
action_48 (40) = happyShift action_29
action_48 (41) = happyShift action_30
action_48 (52) = happyShift action_34
action_48 (62) = happyShift action_35
action_48 (66) = happyShift action_36
action_48 (67) = happyShift action_45
action_48 (8) = happyGoto action_87
action_48 (10) = happyGoto action_13
action_48 (11) = happyGoto action_14
action_48 (12) = happyGoto action_15
action_48 (13) = happyGoto action_16
action_48 (14) = happyGoto action_17
action_48 (15) = happyGoto action_18
action_48 (16) = happyGoto action_19
action_48 (17) = happyGoto action_20
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (65) = happyShift action_86
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (53) = happyShift action_85
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (23) = happyShift action_24
action_51 (36) = happyShift action_25
action_51 (37) = happyShift action_26
action_51 (38) = happyShift action_27
action_51 (39) = happyShift action_28
action_51 (40) = happyShift action_29
action_51 (41) = happyShift action_30
action_51 (52) = happyShift action_34
action_51 (62) = happyShift action_35
action_51 (66) = happyShift action_36
action_51 (67) = happyShift action_45
action_51 (8) = happyGoto action_84
action_51 (10) = happyGoto action_13
action_51 (11) = happyGoto action_14
action_51 (12) = happyGoto action_15
action_51 (13) = happyGoto action_16
action_51 (14) = happyGoto action_17
action_51 (15) = happyGoto action_18
action_51 (16) = happyGoto action_19
action_51 (17) = happyGoto action_20
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (23) = happyShift action_24
action_52 (36) = happyShift action_25
action_52 (37) = happyShift action_26
action_52 (38) = happyShift action_27
action_52 (39) = happyShift action_28
action_52 (40) = happyShift action_29
action_52 (41) = happyShift action_30
action_52 (52) = happyShift action_34
action_52 (62) = happyShift action_35
action_52 (66) = happyShift action_36
action_52 (67) = happyShift action_45
action_52 (8) = happyGoto action_83
action_52 (10) = happyGoto action_13
action_52 (11) = happyGoto action_14
action_52 (12) = happyGoto action_15
action_52 (13) = happyGoto action_16
action_52 (14) = happyGoto action_17
action_52 (15) = happyGoto action_18
action_52 (16) = happyGoto action_19
action_52 (17) = happyGoto action_20
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (23) = happyShift action_24
action_53 (36) = happyShift action_25
action_53 (37) = happyShift action_26
action_53 (52) = happyShift action_34
action_53 (62) = happyShift action_35
action_53 (66) = happyShift action_36
action_53 (67) = happyShift action_45
action_53 (16) = happyGoto action_82
action_53 (17) = happyGoto action_20
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (23) = happyShift action_24
action_54 (36) = happyShift action_25
action_54 (37) = happyShift action_26
action_54 (52) = happyShift action_34
action_54 (62) = happyShift action_35
action_54 (66) = happyShift action_36
action_54 (67) = happyShift action_45
action_54 (16) = happyGoto action_81
action_54 (17) = happyGoto action_20
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (23) = happyShift action_24
action_55 (36) = happyShift action_25
action_55 (37) = happyShift action_26
action_55 (52) = happyShift action_34
action_55 (62) = happyShift action_35
action_55 (66) = happyShift action_36
action_55 (67) = happyShift action_45
action_55 (16) = happyGoto action_80
action_55 (17) = happyGoto action_20
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_24
action_56 (36) = happyShift action_25
action_56 (37) = happyShift action_26
action_56 (52) = happyShift action_34
action_56 (62) = happyShift action_35
action_56 (66) = happyShift action_36
action_56 (67) = happyShift action_45
action_56 (15) = happyGoto action_79
action_56 (16) = happyGoto action_19
action_56 (17) = happyGoto action_20
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (23) = happyShift action_24
action_57 (36) = happyShift action_25
action_57 (37) = happyShift action_26
action_57 (52) = happyShift action_34
action_57 (62) = happyShift action_35
action_57 (66) = happyShift action_36
action_57 (67) = happyShift action_45
action_57 (15) = happyGoto action_78
action_57 (16) = happyGoto action_19
action_57 (17) = happyGoto action_20
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (23) = happyShift action_24
action_58 (36) = happyShift action_25
action_58 (37) = happyShift action_26
action_58 (52) = happyShift action_34
action_58 (62) = happyShift action_35
action_58 (66) = happyShift action_36
action_58 (67) = happyShift action_45
action_58 (14) = happyGoto action_77
action_58 (15) = happyGoto action_18
action_58 (16) = happyGoto action_19
action_58 (17) = happyGoto action_20
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (23) = happyShift action_24
action_59 (36) = happyShift action_25
action_59 (37) = happyShift action_26
action_59 (52) = happyShift action_34
action_59 (62) = happyShift action_35
action_59 (66) = happyShift action_36
action_59 (67) = happyShift action_45
action_59 (14) = happyGoto action_76
action_59 (15) = happyGoto action_18
action_59 (16) = happyGoto action_19
action_59 (17) = happyGoto action_20
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (23) = happyShift action_24
action_60 (36) = happyShift action_25
action_60 (37) = happyShift action_26
action_60 (52) = happyShift action_34
action_60 (62) = happyShift action_35
action_60 (66) = happyShift action_36
action_60 (67) = happyShift action_45
action_60 (14) = happyGoto action_75
action_60 (15) = happyGoto action_18
action_60 (16) = happyGoto action_19
action_60 (17) = happyGoto action_20
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (23) = happyShift action_24
action_61 (36) = happyShift action_25
action_61 (37) = happyShift action_26
action_61 (52) = happyShift action_34
action_61 (62) = happyShift action_35
action_61 (66) = happyShift action_36
action_61 (67) = happyShift action_45
action_61 (14) = happyGoto action_74
action_61 (15) = happyGoto action_18
action_61 (16) = happyGoto action_19
action_61 (17) = happyGoto action_20
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (23) = happyShift action_24
action_62 (36) = happyShift action_25
action_62 (37) = happyShift action_26
action_62 (52) = happyShift action_34
action_62 (62) = happyShift action_35
action_62 (66) = happyShift action_36
action_62 (67) = happyShift action_45
action_62 (13) = happyGoto action_73
action_62 (14) = happyGoto action_17
action_62 (15) = happyGoto action_18
action_62 (16) = happyGoto action_19
action_62 (17) = happyGoto action_20
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (23) = happyShift action_24
action_63 (36) = happyShift action_25
action_63 (37) = happyShift action_26
action_63 (52) = happyShift action_34
action_63 (62) = happyShift action_35
action_63 (66) = happyShift action_36
action_63 (67) = happyShift action_45
action_63 (13) = happyGoto action_72
action_63 (14) = happyGoto action_17
action_63 (15) = happyGoto action_18
action_63 (16) = happyGoto action_19
action_63 (17) = happyGoto action_20
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (23) = happyShift action_24
action_64 (36) = happyShift action_25
action_64 (37) = happyShift action_26
action_64 (52) = happyShift action_34
action_64 (62) = happyShift action_35
action_64 (66) = happyShift action_36
action_64 (67) = happyShift action_45
action_64 (12) = happyGoto action_71
action_64 (13) = happyGoto action_16
action_64 (14) = happyGoto action_17
action_64 (15) = happyGoto action_18
action_64 (16) = happyGoto action_19
action_64 (17) = happyGoto action_20
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (23) = happyShift action_24
action_65 (36) = happyShift action_25
action_65 (37) = happyShift action_26
action_65 (52) = happyShift action_34
action_65 (62) = happyShift action_35
action_65 (66) = happyShift action_36
action_65 (67) = happyShift action_45
action_65 (11) = happyGoto action_70
action_65 (12) = happyGoto action_15
action_65 (13) = happyGoto action_16
action_65 (14) = happyGoto action_17
action_65 (15) = happyGoto action_18
action_65 (16) = happyGoto action_19
action_65 (17) = happyGoto action_20
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_21

action_67 _ = happyReduce_22

action_68 _ = happyReduce_3

action_69 _ = happyReduce_2

action_70 (64) = happyShift action_64
action_70 _ = happyReduce_23

action_71 (56) = happyShift action_62
action_71 (57) = happyShift action_63
action_71 _ = happyReduce_25

action_72 (58) = happyShift action_58
action_72 (59) = happyShift action_59
action_72 (60) = happyShift action_60
action_72 (61) = happyShift action_61
action_72 _ = happyReduce_28

action_73 (58) = happyShift action_58
action_73 (59) = happyShift action_59
action_73 (60) = happyShift action_60
action_73 (61) = happyShift action_61
action_73 _ = happyReduce_27

action_74 (29) = happyShift action_56
action_74 (30) = happyShift action_57
action_74 _ = happyReduce_31

action_75 (29) = happyShift action_56
action_75 (30) = happyShift action_57
action_75 _ = happyReduce_33

action_76 (29) = happyShift action_56
action_76 (30) = happyShift action_57
action_76 _ = happyReduce_30

action_77 (29) = happyShift action_56
action_77 (30) = happyShift action_57
action_77 _ = happyReduce_32

action_78 (31) = happyShift action_53
action_78 (32) = happyShift action_54
action_78 (33) = happyShift action_55
action_78 _ = happyReduce_36

action_79 (31) = happyShift action_53
action_79 (32) = happyShift action_54
action_79 (33) = happyShift action_55
action_79 _ = happyReduce_35

action_80 _ = happyReduce_40

action_81 _ = happyReduce_39

action_82 _ = happyReduce_38

action_83 (53) = happyShift action_105
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (53) = happyShift action_104
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_11

action_86 (26) = happyShift action_101
action_86 (27) = happyShift action_102
action_86 (28) = happyShift action_103
action_86 (18) = happyGoto action_100
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (53) = happyShift action_99
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_54

action_89 _ = happyReduce_55

action_90 (53) = happyShift action_98
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_48

action_92 _ = happyReduce_20

action_93 _ = happyReduce_19

action_94 _ = happyReduce_18

action_95 _ = happyReduce_17

action_96 _ = happyReduce_16

action_97 _ = happyReduce_15

action_98 (23) = happyShift action_24
action_98 (36) = happyShift action_25
action_98 (37) = happyShift action_26
action_98 (38) = happyShift action_27
action_98 (39) = happyShift action_28
action_98 (40) = happyShift action_29
action_98 (41) = happyShift action_30
action_98 (42) = happyShift action_31
action_98 (49) = happyShift action_32
action_98 (50) = happyShift action_33
action_98 (52) = happyShift action_34
action_98 (54) = happyShift action_8
action_98 (62) = happyShift action_35
action_98 (66) = happyShift action_36
action_98 (67) = happyShift action_37
action_98 (5) = happyGoto action_88
action_98 (7) = happyGoto action_89
action_98 (8) = happyGoto action_11
action_98 (9) = happyGoto action_12
action_98 (10) = happyGoto action_13
action_98 (11) = happyGoto action_14
action_98 (12) = happyGoto action_15
action_98 (13) = happyGoto action_16
action_98 (14) = happyGoto action_17
action_98 (15) = happyGoto action_18
action_98 (16) = happyGoto action_19
action_98 (17) = happyGoto action_20
action_98 (19) = happyGoto action_21
action_98 (20) = happyGoto action_108
action_98 (21) = happyGoto action_22
action_98 (22) = happyGoto action_23
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (54) = happyShift action_8
action_99 (5) = happyGoto action_107
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (43) = happyShift action_106
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_50

action_102 _ = happyReduce_51

action_103 _ = happyReduce_52

action_104 _ = happyReduce_13

action_105 _ = happyReduce_12

action_106 (23) = happyShift action_24
action_106 (36) = happyShift action_25
action_106 (37) = happyShift action_26
action_106 (38) = happyShift action_27
action_106 (39) = happyShift action_28
action_106 (40) = happyShift action_29
action_106 (41) = happyShift action_30
action_106 (52) = happyShift action_34
action_106 (62) = happyShift action_35
action_106 (66) = happyShift action_36
action_106 (67) = happyShift action_45
action_106 (8) = happyGoto action_110
action_106 (10) = happyGoto action_13
action_106 (11) = happyGoto action_14
action_106 (12) = happyGoto action_15
action_106 (13) = happyGoto action_16
action_106 (14) = happyGoto action_17
action_106 (15) = happyGoto action_18
action_106 (16) = happyGoto action_19
action_106 (17) = happyGoto action_20
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_58

action_108 (51) = happyShift action_109
action_108 _ = happyReduce_57

action_109 (23) = happyShift action_24
action_109 (36) = happyShift action_25
action_109 (37) = happyShift action_26
action_109 (38) = happyShift action_27
action_109 (39) = happyShift action_28
action_109 (40) = happyShift action_29
action_109 (41) = happyShift action_30
action_109 (42) = happyShift action_31
action_109 (49) = happyShift action_32
action_109 (50) = happyShift action_33
action_109 (52) = happyShift action_34
action_109 (54) = happyShift action_8
action_109 (62) = happyShift action_35
action_109 (66) = happyShift action_36
action_109 (67) = happyShift action_37
action_109 (5) = happyGoto action_88
action_109 (7) = happyGoto action_89
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
action_109 (19) = happyGoto action_21
action_109 (20) = happyGoto action_111
action_109 (21) = happyGoto action_22
action_109 (22) = happyGoto action_23
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_53

action_111 _ = happyReduce_56

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
happyReduction_6 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn8
		 (Readln
	)

happyReduce_12 = happyReduce 4 8 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 4 8 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Println happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn8
		 (Return
	)

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn9
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  9 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn9
		 (Assign (Var happy_var_1) (Add (Var happy_var_1) happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn9
		 (Assign (Var happy_var_1) (Sub (Var happy_var_1) happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn9
		 (Assign (Var happy_var_1) (Mult (Var happy_var_1) happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  9 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn9
		 (Assign (Var happy_var_1) (Div (Var happy_var_1) happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn9
		 (Assign (Var happy_var_1) (Mod (Var happy_var_1) happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  9 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (Incr happy_var_1
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  9 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (Decr happy_var_1
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Or happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (And happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Diff happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  12 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  13 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Less happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  13 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  13 happyReduction_33
happyReduction_33 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  13 happyReduction_34
happyReduction_34 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  14 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Add happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  14 happyReduction_36
happyReduction_36 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  14 happyReduction_37
happyReduction_37 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  15 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  15 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Div happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  15 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  15 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  16 happyReduction_43
happyReduction_43 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  17 happyReduction_44
happyReduction_44 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn17
		 (Num happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  17 happyReduction_45
happyReduction_45 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn17
		 (Var happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  17 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn17
		 (Bool True
	)

happyReduce_47 = happySpecReduce_1  17 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn17
		 (Bool False
	)

happyReduce_48 = happySpecReduce_3  17 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  17 happyReduction_49
happyReduction_49 (HappyTerminal (TString happy_var_1))
	 =  HappyAbsSyn17
		 (String happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  18 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn18
		 (TyInt
	)

happyReduce_51 = happySpecReduce_1  18 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn18
		 (TyBool
	)

happyReduce_52 = happySpecReduce_1  18 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn18
		 (TyString
	)

happyReduce_53 = happyReduce 6 19 happyReduction_53
happyReduction_53 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl happy_var_4 [Assign (Var happy_var_2) happy_var_6]
	) `HappyStk` happyRest

happyReduce_54 = happySpecReduce_1  20 happyReduction_54
happyReduction_54 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  20 happyReduction_55
happyReduction_55 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happyReduce 7 21 happyReduction_56
happyReduction_56 ((HappyAbsSyn20  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 5 21 happyReduction_57
happyReduction_57 ((HappyAbsSyn20  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 5 22 happyReduction_58
happyReduction_58 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 68 68 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TNum happy_dollar_dollar -> cont 23;
	TFun -> cont 24;
	TMain -> cont 25;
	TIntDec -> cont 26;
	TBoolDec -> cont 27;
	TStringDec -> cont 28;
	TPlus -> cont 29;
	TMinus -> cont 30;
	TMult -> cont 31;
	TDiv -> cont 32;
	TMod -> cont 33;
	TIncr -> cont 34;
	TDecr -> cont 35;
	TTrue -> cont 36;
	TFalse -> cont 37;
	TPrint -> cont 38;
	TPrintln -> cont 39;
	TReadln -> cont 40;
	TReturn -> cont 41;
	TVar -> cont 42;
	TAssign -> cont 43;
	TPlusAssign -> cont 44;
	TMinusAssign -> cont 45;
	TMultAssign -> cont 46;
	TDivAssign -> cont 47;
	TModAssign -> cont 48;
	TWhile -> cont 49;
	TIf -> cont 50;
	TElse -> cont 51;
	TLParen -> cont 52;
	TRParen -> cont 53;
	TLBraces -> cont 54;
	TRBraces -> cont 55;
	TEqual -> cont 56;
	TDifferent -> cont 57;
	TGreater -> cont 58;
	TLess -> cont 59;
	TGreaterEq -> cont 60;
	TLessEq -> cont 61;
	TNot -> cont 62;
	TOr -> cont 63;
	TAnd -> cont 64;
	TColon -> cont 65;
	TString happy_dollar_dollar -> cont 66;
	TId happy_dollar_dollar -> cont 67;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 68 tk tks = happyError' (tks, explist)
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
