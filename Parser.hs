{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23
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
	| HappyAbsSyn23 t23

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,394) ([0,256,0,0,0,512,0,0,0,2048,0,0,0,0,0,0,0,0,0,32,0,0,0,128,0,0,0,512,0,0,0,0,0,32768,65024,704,200,0,0,8192,0,0,63490,2819,800,0,0,0,0,0,0,0,0,0,12288,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,16384,0,0,0,384,0,0,0,15360,0,49152,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,1,0,0,0,2,0,0,0,0,1,0,0,0,2,0,0,16,0,0,0,32,0,4096,1216,64,25,8192,384,128,50,0,0,0,0,0,0,63,0,0,19457,1024,400,0,38914,2048,800,0,12292,4097,1600,0,24584,8194,3200,0,49168,16388,6400,0,32800,32777,12800,0,0,0,0,0,0,0,0,0,0,0,8,0,512,152,8200,3,1024,304,16400,6,0,4096,0,0,0,8192,0,0,0,0,256,0,16384,4864,256,100,32768,9728,512,200,0,3073,1024,400,0,6146,2048,800,0,12292,4096,1600,0,24584,8192,3200,0,49168,16384,6400,0,32800,32769,12800,0,64,3,25601,0,128,6,51202,0,256,12,36868,1,512,24,8200,3,1024,48,16400,6,2048,96,32800,12,4096,192,64,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,3,0,0,0,120,0,0,0,240,0,768,0,0,0,1536,0,0,0,3072,0,0,0,6144,0,0,0,49152,1,0,0,32768,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,1024,0,0,0,0,0,0,38914,2048,800,0,12292,4097,1600,0,0,16384,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,8128,344,25,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24576,0,0,0,64,19,25601,0,128,49406,51202,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr_stmt","if_expr_stmt","expr","if_expr","assign_stmt","or_expr","and_expr","eq_expr","rel_expr","add_expr","mul_expr","unary_expr","primary","decl_stmt","if_stmt","while_stmt","num","\"fun\"","\"main\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"println\"","\"readln\"","\"val\"","\"var\"","\"=\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","string","id","%eof"]
        bit_start = st Prelude.* 65
        bit_end = (st Prelude.+ 1) Prelude.* 65
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..64]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (25) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (25) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (26) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (65) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (50) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (51) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (52) = happyShift action_8
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (24) = happyShift action_27
action_8 (34) = happyShift action_28
action_8 (35) = happyShift action_29
action_8 (36) = happyShift action_30
action_8 (37) = happyShift action_31
action_8 (38) = happyShift action_32
action_8 (39) = happyShift action_33
action_8 (40) = happyShift action_34
action_8 (47) = happyShift action_35
action_8 (48) = happyShift action_36
action_8 (50) = happyShift action_37
action_8 (60) = happyShift action_38
action_8 (63) = happyShift action_39
action_8 (64) = happyShift action_40
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
action_8 (23) = happyGoto action_26
action_8 _ = happyReduce_4

action_9 (53) = happyShift action_73
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (24) = happyShift action_27
action_10 (34) = happyShift action_28
action_10 (35) = happyShift action_29
action_10 (36) = happyShift action_30
action_10 (37) = happyShift action_31
action_10 (38) = happyShift action_32
action_10 (39) = happyShift action_33
action_10 (40) = happyShift action_34
action_10 (47) = happyShift action_35
action_10 (48) = happyShift action_36
action_10 (50) = happyShift action_37
action_10 (60) = happyShift action_38
action_10 (63) = happyShift action_39
action_10 (64) = happyShift action_40
action_10 (6) = happyGoto action_72
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
action_10 (23) = happyGoto action_26
action_10 _ = happyReduce_4

action_11 _ = happyReduce_12

action_12 _ = happyReduce_8

action_13 (32) = happyShift action_70
action_13 (33) = happyShift action_71
action_13 _ = happyReduce_13

action_14 _ = happyReduce_14

action_15 _ = happyReduce_6

action_16 (61) = happyShift action_69
action_16 _ = happyReduce_15

action_17 (62) = happyShift action_68
action_17 _ = happyReduce_27

action_18 (54) = happyShift action_66
action_18 (55) = happyShift action_67
action_18 _ = happyReduce_29

action_19 (56) = happyShift action_62
action_19 (57) = happyShift action_63
action_19 (58) = happyShift action_64
action_19 (59) = happyShift action_65
action_19 _ = happyReduce_32

action_20 (27) = happyShift action_60
action_20 (28) = happyShift action_61
action_20 _ = happyReduce_37

action_21 (29) = happyShift action_57
action_21 (30) = happyShift action_58
action_21 (31) = happyShift action_59
action_21 _ = happyReduce_40

action_22 _ = happyReduce_44

action_23 _ = happyReduce_46

action_24 _ = happyReduce_5

action_25 _ = happyReduce_7

action_26 _ = happyReduce_9

action_27 _ = happyReduce_47

action_28 _ = happyReduce_49

action_29 _ = happyReduce_50

action_30 (50) = happyShift action_56
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (50) = happyShift action_55
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (50) = happyShift action_54
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (64) = happyShift action_53
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (64) = happyShift action_52
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (50) = happyShift action_51
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (50) = happyShift action_50
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (24) = happyShift action_27
action_37 (34) = happyShift action_28
action_37 (35) = happyShift action_29
action_37 (38) = happyShift action_32
action_37 (50) = happyShift action_37
action_37 (60) = happyShift action_38
action_37 (63) = happyShift action_39
action_37 (64) = happyShift action_48
action_37 (10) = happyGoto action_49
action_37 (13) = happyGoto action_16
action_37 (14) = happyGoto action_17
action_37 (15) = happyGoto action_18
action_37 (16) = happyGoto action_19
action_37 (17) = happyGoto action_20
action_37 (18) = happyGoto action_21
action_37 (19) = happyGoto action_22
action_37 (20) = happyGoto action_23
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (24) = happyShift action_27
action_38 (34) = happyShift action_28
action_38 (35) = happyShift action_29
action_38 (50) = happyShift action_37
action_38 (60) = happyShift action_38
action_38 (63) = happyShift action_39
action_38 (64) = happyShift action_48
action_38 (19) = happyGoto action_47
action_38 (20) = happyGoto action_23
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_52

action_40 (41) = happyShift action_41
action_40 (42) = happyShift action_42
action_40 (43) = happyShift action_43
action_40 (44) = happyShift action_44
action_40 (45) = happyShift action_45
action_40 (46) = happyShift action_46
action_40 _ = happyReduce_48

action_41 (24) = happyShift action_27
action_41 (34) = happyShift action_28
action_41 (35) = happyShift action_29
action_41 (38) = happyShift action_32
action_41 (50) = happyShift action_37
action_41 (60) = happyShift action_38
action_41 (63) = happyShift action_39
action_41 (64) = happyShift action_48
action_41 (10) = happyGoto action_100
action_41 (13) = happyGoto action_16
action_41 (14) = happyGoto action_17
action_41 (15) = happyGoto action_18
action_41 (16) = happyGoto action_19
action_41 (17) = happyGoto action_20
action_41 (18) = happyGoto action_21
action_41 (19) = happyGoto action_22
action_41 (20) = happyGoto action_23
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (24) = happyShift action_27
action_42 (34) = happyShift action_28
action_42 (35) = happyShift action_29
action_42 (38) = happyShift action_32
action_42 (50) = happyShift action_37
action_42 (60) = happyShift action_38
action_42 (63) = happyShift action_39
action_42 (64) = happyShift action_48
action_42 (10) = happyGoto action_99
action_42 (13) = happyGoto action_16
action_42 (14) = happyGoto action_17
action_42 (15) = happyGoto action_18
action_42 (16) = happyGoto action_19
action_42 (17) = happyGoto action_20
action_42 (18) = happyGoto action_21
action_42 (19) = happyGoto action_22
action_42 (20) = happyGoto action_23
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (24) = happyShift action_27
action_43 (34) = happyShift action_28
action_43 (35) = happyShift action_29
action_43 (38) = happyShift action_32
action_43 (50) = happyShift action_37
action_43 (60) = happyShift action_38
action_43 (63) = happyShift action_39
action_43 (64) = happyShift action_48
action_43 (10) = happyGoto action_98
action_43 (13) = happyGoto action_16
action_43 (14) = happyGoto action_17
action_43 (15) = happyGoto action_18
action_43 (16) = happyGoto action_19
action_43 (17) = happyGoto action_20
action_43 (18) = happyGoto action_21
action_43 (19) = happyGoto action_22
action_43 (20) = happyGoto action_23
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (24) = happyShift action_27
action_44 (34) = happyShift action_28
action_44 (35) = happyShift action_29
action_44 (38) = happyShift action_32
action_44 (50) = happyShift action_37
action_44 (60) = happyShift action_38
action_44 (63) = happyShift action_39
action_44 (64) = happyShift action_48
action_44 (10) = happyGoto action_97
action_44 (13) = happyGoto action_16
action_44 (14) = happyGoto action_17
action_44 (15) = happyGoto action_18
action_44 (16) = happyGoto action_19
action_44 (17) = happyGoto action_20
action_44 (18) = happyGoto action_21
action_44 (19) = happyGoto action_22
action_44 (20) = happyGoto action_23
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (24) = happyShift action_27
action_45 (34) = happyShift action_28
action_45 (35) = happyShift action_29
action_45 (38) = happyShift action_32
action_45 (50) = happyShift action_37
action_45 (60) = happyShift action_38
action_45 (63) = happyShift action_39
action_45 (64) = happyShift action_48
action_45 (10) = happyGoto action_96
action_45 (13) = happyGoto action_16
action_45 (14) = happyGoto action_17
action_45 (15) = happyGoto action_18
action_45 (16) = happyGoto action_19
action_45 (17) = happyGoto action_20
action_45 (18) = happyGoto action_21
action_45 (19) = happyGoto action_22
action_45 (20) = happyGoto action_23
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (24) = happyShift action_27
action_46 (34) = happyShift action_28
action_46 (35) = happyShift action_29
action_46 (38) = happyShift action_32
action_46 (50) = happyShift action_37
action_46 (60) = happyShift action_38
action_46 (63) = happyShift action_39
action_46 (64) = happyShift action_48
action_46 (10) = happyGoto action_95
action_46 (13) = happyGoto action_16
action_46 (14) = happyGoto action_17
action_46 (15) = happyGoto action_18
action_46 (16) = happyGoto action_19
action_46 (17) = happyGoto action_20
action_46 (18) = happyGoto action_21
action_46 (19) = happyGoto action_22
action_46 (20) = happyGoto action_23
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_45

action_48 _ = happyReduce_48

action_49 (51) = happyShift action_94
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (24) = happyShift action_27
action_50 (34) = happyShift action_28
action_50 (35) = happyShift action_29
action_50 (38) = happyShift action_32
action_50 (50) = happyShift action_37
action_50 (60) = happyShift action_38
action_50 (63) = happyShift action_39
action_50 (64) = happyShift action_48
action_50 (10) = happyGoto action_93
action_50 (13) = happyGoto action_16
action_50 (14) = happyGoto action_17
action_50 (15) = happyGoto action_18
action_50 (16) = happyGoto action_19
action_50 (17) = happyGoto action_20
action_50 (18) = happyGoto action_21
action_50 (19) = happyGoto action_22
action_50 (20) = happyGoto action_23
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (24) = happyShift action_27
action_51 (34) = happyShift action_28
action_51 (35) = happyShift action_29
action_51 (38) = happyShift action_32
action_51 (50) = happyShift action_37
action_51 (60) = happyShift action_38
action_51 (63) = happyShift action_39
action_51 (64) = happyShift action_48
action_51 (10) = happyGoto action_92
action_51 (13) = happyGoto action_16
action_51 (14) = happyGoto action_17
action_51 (15) = happyGoto action_18
action_51 (16) = happyGoto action_19
action_51 (17) = happyGoto action_20
action_51 (18) = happyGoto action_21
action_51 (19) = happyGoto action_22
action_51 (20) = happyGoto action_23
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (41) = happyShift action_91
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (41) = happyShift action_90
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (51) = happyShift action_89
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (24) = happyShift action_27
action_55 (34) = happyShift action_28
action_55 (35) = happyShift action_29
action_55 (38) = happyShift action_32
action_55 (50) = happyShift action_37
action_55 (60) = happyShift action_38
action_55 (63) = happyShift action_39
action_55 (64) = happyShift action_48
action_55 (10) = happyGoto action_88
action_55 (13) = happyGoto action_16
action_55 (14) = happyGoto action_17
action_55 (15) = happyGoto action_18
action_55 (16) = happyGoto action_19
action_55 (17) = happyGoto action_20
action_55 (18) = happyGoto action_21
action_55 (19) = happyGoto action_22
action_55 (20) = happyGoto action_23
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (24) = happyShift action_27
action_56 (34) = happyShift action_28
action_56 (35) = happyShift action_29
action_56 (38) = happyShift action_32
action_56 (50) = happyShift action_37
action_56 (60) = happyShift action_38
action_56 (63) = happyShift action_39
action_56 (64) = happyShift action_48
action_56 (10) = happyGoto action_87
action_56 (13) = happyGoto action_16
action_56 (14) = happyGoto action_17
action_56 (15) = happyGoto action_18
action_56 (16) = happyGoto action_19
action_56 (17) = happyGoto action_20
action_56 (18) = happyGoto action_21
action_56 (19) = happyGoto action_22
action_56 (20) = happyGoto action_23
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (24) = happyShift action_27
action_57 (34) = happyShift action_28
action_57 (35) = happyShift action_29
action_57 (50) = happyShift action_37
action_57 (60) = happyShift action_38
action_57 (63) = happyShift action_39
action_57 (64) = happyShift action_48
action_57 (19) = happyGoto action_86
action_57 (20) = happyGoto action_23
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (24) = happyShift action_27
action_58 (34) = happyShift action_28
action_58 (35) = happyShift action_29
action_58 (50) = happyShift action_37
action_58 (60) = happyShift action_38
action_58 (63) = happyShift action_39
action_58 (64) = happyShift action_48
action_58 (19) = happyGoto action_85
action_58 (20) = happyGoto action_23
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (24) = happyShift action_27
action_59 (34) = happyShift action_28
action_59 (35) = happyShift action_29
action_59 (50) = happyShift action_37
action_59 (60) = happyShift action_38
action_59 (63) = happyShift action_39
action_59 (64) = happyShift action_48
action_59 (19) = happyGoto action_84
action_59 (20) = happyGoto action_23
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (24) = happyShift action_27
action_60 (34) = happyShift action_28
action_60 (35) = happyShift action_29
action_60 (50) = happyShift action_37
action_60 (60) = happyShift action_38
action_60 (63) = happyShift action_39
action_60 (64) = happyShift action_48
action_60 (18) = happyGoto action_83
action_60 (19) = happyGoto action_22
action_60 (20) = happyGoto action_23
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (24) = happyShift action_27
action_61 (34) = happyShift action_28
action_61 (35) = happyShift action_29
action_61 (50) = happyShift action_37
action_61 (60) = happyShift action_38
action_61 (63) = happyShift action_39
action_61 (64) = happyShift action_48
action_61 (18) = happyGoto action_82
action_61 (19) = happyGoto action_22
action_61 (20) = happyGoto action_23
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (24) = happyShift action_27
action_62 (34) = happyShift action_28
action_62 (35) = happyShift action_29
action_62 (50) = happyShift action_37
action_62 (60) = happyShift action_38
action_62 (63) = happyShift action_39
action_62 (64) = happyShift action_48
action_62 (17) = happyGoto action_81
action_62 (18) = happyGoto action_21
action_62 (19) = happyGoto action_22
action_62 (20) = happyGoto action_23
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (24) = happyShift action_27
action_63 (34) = happyShift action_28
action_63 (35) = happyShift action_29
action_63 (50) = happyShift action_37
action_63 (60) = happyShift action_38
action_63 (63) = happyShift action_39
action_63 (64) = happyShift action_48
action_63 (17) = happyGoto action_80
action_63 (18) = happyGoto action_21
action_63 (19) = happyGoto action_22
action_63 (20) = happyGoto action_23
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (24) = happyShift action_27
action_64 (34) = happyShift action_28
action_64 (35) = happyShift action_29
action_64 (50) = happyShift action_37
action_64 (60) = happyShift action_38
action_64 (63) = happyShift action_39
action_64 (64) = happyShift action_48
action_64 (17) = happyGoto action_79
action_64 (18) = happyGoto action_21
action_64 (19) = happyGoto action_22
action_64 (20) = happyGoto action_23
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (24) = happyShift action_27
action_65 (34) = happyShift action_28
action_65 (35) = happyShift action_29
action_65 (50) = happyShift action_37
action_65 (60) = happyShift action_38
action_65 (63) = happyShift action_39
action_65 (64) = happyShift action_48
action_65 (17) = happyGoto action_78
action_65 (18) = happyGoto action_21
action_65 (19) = happyGoto action_22
action_65 (20) = happyGoto action_23
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (24) = happyShift action_27
action_66 (34) = happyShift action_28
action_66 (35) = happyShift action_29
action_66 (50) = happyShift action_37
action_66 (60) = happyShift action_38
action_66 (63) = happyShift action_39
action_66 (64) = happyShift action_48
action_66 (16) = happyGoto action_77
action_66 (17) = happyGoto action_20
action_66 (18) = happyGoto action_21
action_66 (19) = happyGoto action_22
action_66 (20) = happyGoto action_23
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (24) = happyShift action_27
action_67 (34) = happyShift action_28
action_67 (35) = happyShift action_29
action_67 (50) = happyShift action_37
action_67 (60) = happyShift action_38
action_67 (63) = happyShift action_39
action_67 (64) = happyShift action_48
action_67 (16) = happyGoto action_76
action_67 (17) = happyGoto action_20
action_67 (18) = happyGoto action_21
action_67 (19) = happyGoto action_22
action_67 (20) = happyGoto action_23
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (24) = happyShift action_27
action_68 (34) = happyShift action_28
action_68 (35) = happyShift action_29
action_68 (50) = happyShift action_37
action_68 (60) = happyShift action_38
action_68 (63) = happyShift action_39
action_68 (64) = happyShift action_48
action_68 (15) = happyGoto action_75
action_68 (16) = happyGoto action_19
action_68 (17) = happyGoto action_20
action_68 (18) = happyGoto action_21
action_68 (19) = happyGoto action_22
action_68 (20) = happyGoto action_23
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (24) = happyShift action_27
action_69 (34) = happyShift action_28
action_69 (35) = happyShift action_29
action_69 (50) = happyShift action_37
action_69 (60) = happyShift action_38
action_69 (63) = happyShift action_39
action_69 (64) = happyShift action_48
action_69 (14) = happyGoto action_74
action_69 (15) = happyGoto action_18
action_69 (16) = happyGoto action_19
action_69 (17) = happyGoto action_20
action_69 (18) = happyGoto action_21
action_69 (19) = happyGoto action_22
action_69 (20) = happyGoto action_23
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_24

action_71 _ = happyReduce_25

action_72 _ = happyReduce_3

action_73 _ = happyReduce_2

action_74 (62) = happyShift action_68
action_74 _ = happyReduce_26

action_75 (54) = happyShift action_66
action_75 (55) = happyShift action_67
action_75 _ = happyReduce_28

action_76 (56) = happyShift action_62
action_76 (57) = happyShift action_63
action_76 (58) = happyShift action_64
action_76 (59) = happyShift action_65
action_76 _ = happyReduce_31

action_77 (56) = happyShift action_62
action_77 (57) = happyShift action_63
action_77 (58) = happyShift action_64
action_77 (59) = happyShift action_65
action_77 _ = happyReduce_30

action_78 (27) = happyShift action_60
action_78 (28) = happyShift action_61
action_78 _ = happyReduce_34

action_79 (27) = happyShift action_60
action_79 (28) = happyShift action_61
action_79 _ = happyReduce_36

action_80 (27) = happyShift action_60
action_80 (28) = happyShift action_61
action_80 _ = happyReduce_33

action_81 (27) = happyShift action_60
action_81 (28) = happyShift action_61
action_81 _ = happyReduce_35

action_82 (29) = happyShift action_57
action_82 (30) = happyShift action_58
action_82 (31) = happyShift action_59
action_82 _ = happyReduce_39

action_83 (29) = happyShift action_57
action_83 (30) = happyShift action_58
action_83 (31) = happyShift action_59
action_83 _ = happyReduce_38

action_84 _ = happyReduce_43

action_85 _ = happyReduce_42

action_86 _ = happyReduce_41

action_87 (51) = happyShift action_106
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (51) = happyShift action_105
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_16

action_90 (24) = happyShift action_27
action_90 (34) = happyShift action_28
action_90 (35) = happyShift action_29
action_90 (38) = happyShift action_32
action_90 (50) = happyShift action_37
action_90 (60) = happyShift action_38
action_90 (63) = happyShift action_39
action_90 (64) = happyShift action_48
action_90 (10) = happyGoto action_104
action_90 (13) = happyGoto action_16
action_90 (14) = happyGoto action_17
action_90 (15) = happyGoto action_18
action_90 (16) = happyGoto action_19
action_90 (17) = happyGoto action_20
action_90 (18) = happyGoto action_21
action_90 (19) = happyGoto action_22
action_90 (20) = happyGoto action_23
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (24) = happyShift action_27
action_91 (34) = happyShift action_28
action_91 (35) = happyShift action_29
action_91 (38) = happyShift action_32
action_91 (50) = happyShift action_37
action_91 (60) = happyShift action_38
action_91 (63) = happyShift action_39
action_91 (64) = happyShift action_48
action_91 (10) = happyGoto action_103
action_91 (13) = happyGoto action_16
action_91 (14) = happyGoto action_17
action_91 (15) = happyGoto action_18
action_91 (16) = happyGoto action_19
action_91 (17) = happyGoto action_20
action_91 (18) = happyGoto action_21
action_91 (19) = happyGoto action_22
action_91 (20) = happyGoto action_23
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (51) = happyShift action_102
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (51) = happyShift action_101
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_51

action_95 _ = happyReduce_23

action_96 _ = happyReduce_22

action_97 _ = happyReduce_21

action_98 _ = happyReduce_20

action_99 _ = happyReduce_19

action_100 _ = happyReduce_18

action_101 (24) = happyShift action_27
action_101 (34) = happyShift action_28
action_101 (35) = happyShift action_29
action_101 (36) = happyShift action_30
action_101 (37) = happyShift action_31
action_101 (38) = happyShift action_32
action_101 (39) = happyShift action_33
action_101 (40) = happyShift action_34
action_101 (47) = happyShift action_35
action_101 (48) = happyShift action_36
action_101 (50) = happyShift action_37
action_101 (52) = happyShift action_8
action_101 (60) = happyShift action_38
action_101 (63) = happyShift action_39
action_101 (64) = happyShift action_40
action_101 (5) = happyGoto action_108
action_101 (7) = happyGoto action_109
action_101 (8) = happyGoto action_11
action_101 (9) = happyGoto action_12
action_101 (10) = happyGoto action_110
action_101 (11) = happyGoto action_14
action_101 (12) = happyGoto action_15
action_101 (13) = happyGoto action_16
action_101 (14) = happyGoto action_17
action_101 (15) = happyGoto action_18
action_101 (16) = happyGoto action_19
action_101 (17) = happyGoto action_20
action_101 (18) = happyGoto action_21
action_101 (19) = happyGoto action_22
action_101 (20) = happyGoto action_23
action_101 (21) = happyGoto action_24
action_101 (22) = happyGoto action_25
action_101 (23) = happyGoto action_26
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (52) = happyShift action_8
action_102 (5) = happyGoto action_107
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_53

action_104 _ = happyReduce_54

action_105 _ = happyReduce_11

action_106 _ = happyReduce_10

action_107 _ = happyReduce_59

action_108 (49) = happyShift action_113
action_108 _ = happyReduce_58

action_109 (49) = happyShift action_112
action_109 _ = happyReduce_56

action_110 (32) = happyShift action_70
action_110 (33) = happyShift action_71
action_110 (49) = happyShift action_111
action_110 _ = happyReduce_13

action_111 (24) = happyShift action_27
action_111 (34) = happyShift action_28
action_111 (35) = happyShift action_29
action_111 (38) = happyShift action_32
action_111 (50) = happyShift action_37
action_111 (60) = happyShift action_38
action_111 (63) = happyShift action_39
action_111 (64) = happyShift action_48
action_111 (10) = happyGoto action_116
action_111 (13) = happyGoto action_16
action_111 (14) = happyGoto action_17
action_111 (15) = happyGoto action_18
action_111 (16) = happyGoto action_19
action_111 (17) = happyGoto action_20
action_111 (18) = happyGoto action_21
action_111 (19) = happyGoto action_22
action_111 (20) = happyGoto action_23
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (24) = happyShift action_27
action_112 (34) = happyShift action_28
action_112 (35) = happyShift action_29
action_112 (36) = happyShift action_30
action_112 (37) = happyShift action_31
action_112 (38) = happyShift action_32
action_112 (39) = happyShift action_33
action_112 (40) = happyShift action_34
action_112 (47) = happyShift action_35
action_112 (48) = happyShift action_36
action_112 (50) = happyShift action_37
action_112 (60) = happyShift action_38
action_112 (63) = happyShift action_39
action_112 (64) = happyShift action_40
action_112 (7) = happyGoto action_115
action_112 (8) = happyGoto action_11
action_112 (9) = happyGoto action_12
action_112 (10) = happyGoto action_13
action_112 (11) = happyGoto action_14
action_112 (12) = happyGoto action_15
action_112 (13) = happyGoto action_16
action_112 (14) = happyGoto action_17
action_112 (15) = happyGoto action_18
action_112 (16) = happyGoto action_19
action_112 (17) = happyGoto action_20
action_112 (18) = happyGoto action_21
action_112 (19) = happyGoto action_22
action_112 (20) = happyGoto action_23
action_112 (21) = happyGoto action_24
action_112 (22) = happyGoto action_25
action_112 (23) = happyGoto action_26
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (52) = happyShift action_8
action_113 (5) = happyGoto action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_57

action_115 _ = happyReduce_55

action_116 _ = happyReduce_17

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
happyReduction_5 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 7 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Println happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (ExprStmt happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (ExprStmt happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  10 happyReduction_15
happyReduction_15 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 _
	_
	_
	 =  HappyAbsSyn10
		 (Readln
	)

happyReduce_17 = happyReduce 7 11 happyReduction_17
happyReduction_17 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  12 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn12
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  12 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn12
		 (Assign (Var happy_var_1) (Add (Var happy_var_1) happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn12
		 (Assign (Var happy_var_1) (Sub (Var happy_var_1) happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  12 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn12
		 (Assign (Var happy_var_1) (Mult (Var happy_var_1) happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn12
		 (Assign (Var happy_var_1) (Div (Var happy_var_1) happy_var_3)
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn12
		 (Assign (Var happy_var_1) (Mod (Var happy_var_1) happy_var_3)
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  12 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn12
		 (Incr happy_var_1
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  12 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn12
		 (Decr happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  13 happyReduction_26
happyReduction_26 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Or happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  13 happyReduction_27
happyReduction_27 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (And happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  14 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  16 happyReduction_33
happyReduction_33 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Less happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  16 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  17 happyReduction_38
happyReduction_38 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (Add happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  17 happyReduction_39
happyReduction_39 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  17 happyReduction_40
happyReduction_40 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  18 happyReduction_41
happyReduction_41 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  18 happyReduction_42
happyReduction_42 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Div happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  18 happyReduction_43
happyReduction_43 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  18 happyReduction_44
happyReduction_44 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  19 happyReduction_45
happyReduction_45 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (Not happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  19 happyReduction_46
happyReduction_46 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  20 happyReduction_47
happyReduction_47 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn20
		 (Num happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  20 happyReduction_48
happyReduction_48 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn20
		 (Var happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  20 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn20
		 (Bool True
	)

happyReduce_50 = happySpecReduce_1  20 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn20
		 (Bool False
	)

happyReduce_51 = happySpecReduce_3  20 happyReduction_51
happyReduction_51 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  20 happyReduction_52
happyReduction_52 (HappyTerminal (TString happy_var_1))
	 =  HappyAbsSyn20
		 (String happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happyReduce 4 21 happyReduction_53
happyReduction_53 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (Decl [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 4 21 happyReduction_54
happyReduction_54 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (Decl [Assign (Val happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 7 22 happyReduction_55
happyReduction_55 ((HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_56 = happyReduce 5 22 happyReduction_56
happyReduction_56 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 7 22 happyReduction_57
happyReduction_57 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 5 22 happyReduction_58
happyReduction_58 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 5 23 happyReduction_59
happyReduction_59 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TNum happy_dollar_dollar -> cont 24;
	TFun -> cont 25;
	TMain -> cont 26;
	TPlus -> cont 27;
	TMinus -> cont 28;
	TMult -> cont 29;
	TDiv -> cont 30;
	TMod -> cont 31;
	TIncr -> cont 32;
	TDecr -> cont 33;
	TTrue -> cont 34;
	TFalse -> cont 35;
	TPrint -> cont 36;
	TPrintln -> cont 37;
	TReadln -> cont 38;
	TVal -> cont 39;
	TVar -> cont 40;
	TAssign -> cont 41;
	TPlusAssign -> cont 42;
	TMinusAssign -> cont 43;
	TMultAssign -> cont 44;
	TDivAssign -> cont 45;
	TModAssign -> cont 46;
	TWhile -> cont 47;
	TIf -> cont 48;
	TElse -> cont 49;
	TLParen -> cont 50;
	TRParen -> cont 51;
	TLBraces -> cont 52;
	TRBraces -> cont 53;
	TEqual -> cont 54;
	TDifferent -> cont 55;
	TGreater -> cont 56;
	TLess -> cont 57;
	TGreaterEq -> cont 58;
	TLessEq -> cont 59;
	TNot -> cont 60;
	TOr -> cont 61;
	TAnd -> cont 62;
	TString happy_dollar_dollar -> cont 63;
	TId happy_dollar_dollar -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
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
