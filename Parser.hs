{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,295) ([0,64,0,0,32768,0,0,0,512,0,0,0,0,0,0,2048,0,0,0,0,64,0,0,32768,0,0,0,512,0,0,0,4,0,64,5567,400,0,0,32,0,0,0,0,0,63490,32813,12,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,8192,0,0,0,128,0,0,768,0,0,0,120,0,96,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,512,0,0,0,0,1,0,0,512,0,0,16,0,0,8192,0,0,45060,64,25,2048,32864,12800,0,0,0,0,0,8192,0,0,64,1035,400,0,0,0,0,0,0,0,0,0,64,0,1024,16560,6400,0,24584,129,50,0,4096,0,0,0,32,0,0,0,8,0,128,2070,800,0,3073,16400,6,512,8216,3200,0,12292,64,25,2048,32864,12800,0,49168,256,100,8192,384,51202,0,64,1027,400,32768,1536,8200,3,256,4108,1600,0,6146,32800,12,1024,16432,6400,0,24584,128,50,4096,192,25601,0,0,0,0,0,0,0,0,0,16384,0,0,64513,16406,6,0,0,0,0,0,0,0,0,0,2048,0,0,12288,0,0,0,1920,0,0,0,15,0,12,0,0,6144,0,0,0,48,0,0,24576,0,0,0,1792,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,45060,64,25,2048,33120,12800,0,0,512,0,0,0,4,0,0,0,0,0,0,0,0,0,16384,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,8192,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr_stmt","expr","assign_stmt","or_expr","and_expr","eq_expr","rel_expr","add_expr","mul_expr","unary_expr","primary","decl_stmt","if_stmt","while_stmt","num","\"fun\"","\"main\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"readln\"","\"val\"","\"var\"","\"=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","string","id","%eof"]
        bit_start = st Prelude.* 57
        bit_end = (st Prelude.+ 1) Prelude.* 57
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..56]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (23) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (24) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (57) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (24) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (42) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (42) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (43) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (43) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (22) = happyShift action_28
action_9 (32) = happyShift action_29
action_9 (33) = happyShift action_30
action_9 (34) = happyShift action_31
action_9 (35) = happyShift action_32
action_9 (36) = happyShift action_33
action_9 (37) = happyShift action_34
action_9 (39) = happyShift action_35
action_9 (40) = happyShift action_36
action_9 (42) = happyShift action_37
action_9 (44) = happyShift action_12
action_9 (52) = happyShift action_38
action_9 (55) = happyShift action_39
action_9 (56) = happyShift action_40
action_9 (5) = happyGoto action_11
action_9 (7) = happyGoto action_13
action_9 (8) = happyGoto action_14
action_9 (9) = happyGoto action_15
action_9 (10) = happyGoto action_16
action_9 (11) = happyGoto action_17
action_9 (12) = happyGoto action_18
action_9 (13) = happyGoto action_19
action_9 (14) = happyGoto action_20
action_9 (15) = happyGoto action_21
action_9 (16) = happyGoto action_22
action_9 (17) = happyGoto action_23
action_9 (18) = happyGoto action_24
action_9 (19) = happyGoto action_25
action_9 (20) = happyGoto action_26
action_9 (21) = happyGoto action_27
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (44) = happyShift action_12
action_10 (5) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_1

action_12 (22) = happyShift action_28
action_12 (32) = happyShift action_29
action_12 (33) = happyShift action_30
action_12 (34) = happyShift action_31
action_12 (35) = happyShift action_32
action_12 (36) = happyShift action_33
action_12 (37) = happyShift action_34
action_12 (39) = happyShift action_35
action_12 (40) = happyShift action_36
action_12 (42) = happyShift action_37
action_12 (52) = happyShift action_38
action_12 (55) = happyShift action_39
action_12 (56) = happyShift action_40
action_12 (6) = happyGoto action_66
action_12 (7) = happyGoto action_67
action_12 (8) = happyGoto action_14
action_12 (9) = happyGoto action_15
action_12 (10) = happyGoto action_16
action_12 (11) = happyGoto action_17
action_12 (12) = happyGoto action_18
action_12 (13) = happyGoto action_19
action_12 (14) = happyGoto action_20
action_12 (15) = happyGoto action_21
action_12 (16) = happyGoto action_22
action_12 (17) = happyGoto action_23
action_12 (18) = happyGoto action_24
action_12 (19) = happyGoto action_25
action_12 (20) = happyGoto action_26
action_12 (21) = happyGoto action_27
action_12 _ = happyReduce_5

action_13 _ = happyReduce_2

action_14 _ = happyReduce_11

action_15 (30) = happyShift action_64
action_15 (31) = happyShift action_65
action_15 _ = happyReduce_12

action_16 _ = happyReduce_7

action_17 (53) = happyShift action_63
action_17 _ = happyReduce_13

action_18 (54) = happyShift action_62
action_18 _ = happyReduce_19

action_19 (46) = happyShift action_60
action_19 (47) = happyShift action_61
action_19 _ = happyReduce_21

action_20 (48) = happyShift action_56
action_20 (49) = happyShift action_57
action_20 (50) = happyShift action_58
action_20 (51) = happyShift action_59
action_20 _ = happyReduce_24

action_21 (25) = happyShift action_54
action_21 (26) = happyShift action_55
action_21 _ = happyReduce_29

action_22 (27) = happyShift action_51
action_22 (28) = happyShift action_52
action_22 (29) = happyShift action_53
action_22 _ = happyReduce_32

action_23 _ = happyReduce_36

action_24 _ = happyReduce_38

action_25 _ = happyReduce_6

action_26 _ = happyReduce_8

action_27 _ = happyReduce_9

action_28 _ = happyReduce_39

action_29 _ = happyReduce_41

action_30 _ = happyReduce_42

action_31 (42) = happyShift action_50
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (42) = happyShift action_49
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (56) = happyShift action_48
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (56) = happyShift action_47
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (42) = happyShift action_46
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (42) = happyShift action_45
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_28
action_37 (32) = happyShift action_29
action_37 (33) = happyShift action_30
action_37 (35) = happyShift action_32
action_37 (42) = happyShift action_37
action_37 (52) = happyShift action_38
action_37 (55) = happyShift action_39
action_37 (56) = happyShift action_43
action_37 (9) = happyGoto action_44
action_37 (11) = happyGoto action_17
action_37 (12) = happyGoto action_18
action_37 (13) = happyGoto action_19
action_37 (14) = happyGoto action_20
action_37 (15) = happyGoto action_21
action_37 (16) = happyGoto action_22
action_37 (17) = happyGoto action_23
action_37 (18) = happyGoto action_24
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (22) = happyShift action_28
action_38 (32) = happyShift action_29
action_38 (33) = happyShift action_30
action_38 (42) = happyShift action_37
action_38 (52) = happyShift action_38
action_38 (55) = happyShift action_39
action_38 (56) = happyShift action_43
action_38 (17) = happyGoto action_42
action_38 (18) = happyGoto action_24
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_44

action_40 (38) = happyShift action_41
action_40 _ = happyReduce_40

action_41 (22) = happyShift action_28
action_41 (32) = happyShift action_29
action_41 (33) = happyShift action_30
action_41 (35) = happyShift action_32
action_41 (42) = happyShift action_37
action_41 (52) = happyShift action_38
action_41 (55) = happyShift action_39
action_41 (56) = happyShift action_43
action_41 (9) = happyGoto action_90
action_41 (11) = happyGoto action_17
action_41 (12) = happyGoto action_18
action_41 (13) = happyGoto action_19
action_41 (14) = happyGoto action_20
action_41 (15) = happyGoto action_21
action_41 (16) = happyGoto action_22
action_41 (17) = happyGoto action_23
action_41 (18) = happyGoto action_24
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_37

action_43 _ = happyReduce_40

action_44 (43) = happyShift action_89
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (22) = happyShift action_28
action_45 (32) = happyShift action_29
action_45 (33) = happyShift action_30
action_45 (35) = happyShift action_32
action_45 (42) = happyShift action_37
action_45 (52) = happyShift action_38
action_45 (55) = happyShift action_39
action_45 (56) = happyShift action_43
action_45 (9) = happyGoto action_88
action_45 (11) = happyGoto action_17
action_45 (12) = happyGoto action_18
action_45 (13) = happyGoto action_19
action_45 (14) = happyGoto action_20
action_45 (15) = happyGoto action_21
action_45 (16) = happyGoto action_22
action_45 (17) = happyGoto action_23
action_45 (18) = happyGoto action_24
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (22) = happyShift action_28
action_46 (32) = happyShift action_29
action_46 (33) = happyShift action_30
action_46 (35) = happyShift action_32
action_46 (42) = happyShift action_37
action_46 (52) = happyShift action_38
action_46 (55) = happyShift action_39
action_46 (56) = happyShift action_43
action_46 (9) = happyGoto action_87
action_46 (11) = happyGoto action_17
action_46 (12) = happyGoto action_18
action_46 (13) = happyGoto action_19
action_46 (14) = happyGoto action_20
action_46 (15) = happyGoto action_21
action_46 (16) = happyGoto action_22
action_46 (17) = happyGoto action_23
action_46 (18) = happyGoto action_24
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (38) = happyShift action_86
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (38) = happyShift action_85
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (43) = happyShift action_84
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (22) = happyShift action_28
action_50 (32) = happyShift action_29
action_50 (33) = happyShift action_30
action_50 (35) = happyShift action_32
action_50 (42) = happyShift action_37
action_50 (52) = happyShift action_38
action_50 (55) = happyShift action_39
action_50 (56) = happyShift action_43
action_50 (9) = happyGoto action_83
action_50 (11) = happyGoto action_17
action_50 (12) = happyGoto action_18
action_50 (13) = happyGoto action_19
action_50 (14) = happyGoto action_20
action_50 (15) = happyGoto action_21
action_50 (16) = happyGoto action_22
action_50 (17) = happyGoto action_23
action_50 (18) = happyGoto action_24
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_28
action_51 (32) = happyShift action_29
action_51 (33) = happyShift action_30
action_51 (42) = happyShift action_37
action_51 (52) = happyShift action_38
action_51 (55) = happyShift action_39
action_51 (56) = happyShift action_43
action_51 (17) = happyGoto action_82
action_51 (18) = happyGoto action_24
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (22) = happyShift action_28
action_52 (32) = happyShift action_29
action_52 (33) = happyShift action_30
action_52 (42) = happyShift action_37
action_52 (52) = happyShift action_38
action_52 (55) = happyShift action_39
action_52 (56) = happyShift action_43
action_52 (17) = happyGoto action_81
action_52 (18) = happyGoto action_24
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (22) = happyShift action_28
action_53 (32) = happyShift action_29
action_53 (33) = happyShift action_30
action_53 (42) = happyShift action_37
action_53 (52) = happyShift action_38
action_53 (55) = happyShift action_39
action_53 (56) = happyShift action_43
action_53 (17) = happyGoto action_80
action_53 (18) = happyGoto action_24
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (22) = happyShift action_28
action_54 (32) = happyShift action_29
action_54 (33) = happyShift action_30
action_54 (42) = happyShift action_37
action_54 (52) = happyShift action_38
action_54 (55) = happyShift action_39
action_54 (56) = happyShift action_43
action_54 (16) = happyGoto action_79
action_54 (17) = happyGoto action_23
action_54 (18) = happyGoto action_24
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (22) = happyShift action_28
action_55 (32) = happyShift action_29
action_55 (33) = happyShift action_30
action_55 (42) = happyShift action_37
action_55 (52) = happyShift action_38
action_55 (55) = happyShift action_39
action_55 (56) = happyShift action_43
action_55 (16) = happyGoto action_78
action_55 (17) = happyGoto action_23
action_55 (18) = happyGoto action_24
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (22) = happyShift action_28
action_56 (32) = happyShift action_29
action_56 (33) = happyShift action_30
action_56 (42) = happyShift action_37
action_56 (52) = happyShift action_38
action_56 (55) = happyShift action_39
action_56 (56) = happyShift action_43
action_56 (15) = happyGoto action_77
action_56 (16) = happyGoto action_22
action_56 (17) = happyGoto action_23
action_56 (18) = happyGoto action_24
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (22) = happyShift action_28
action_57 (32) = happyShift action_29
action_57 (33) = happyShift action_30
action_57 (42) = happyShift action_37
action_57 (52) = happyShift action_38
action_57 (55) = happyShift action_39
action_57 (56) = happyShift action_43
action_57 (15) = happyGoto action_76
action_57 (16) = happyGoto action_22
action_57 (17) = happyGoto action_23
action_57 (18) = happyGoto action_24
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (22) = happyShift action_28
action_58 (32) = happyShift action_29
action_58 (33) = happyShift action_30
action_58 (42) = happyShift action_37
action_58 (52) = happyShift action_38
action_58 (55) = happyShift action_39
action_58 (56) = happyShift action_43
action_58 (15) = happyGoto action_75
action_58 (16) = happyGoto action_22
action_58 (17) = happyGoto action_23
action_58 (18) = happyGoto action_24
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (22) = happyShift action_28
action_59 (32) = happyShift action_29
action_59 (33) = happyShift action_30
action_59 (42) = happyShift action_37
action_59 (52) = happyShift action_38
action_59 (55) = happyShift action_39
action_59 (56) = happyShift action_43
action_59 (15) = happyGoto action_74
action_59 (16) = happyGoto action_22
action_59 (17) = happyGoto action_23
action_59 (18) = happyGoto action_24
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (22) = happyShift action_28
action_60 (32) = happyShift action_29
action_60 (33) = happyShift action_30
action_60 (42) = happyShift action_37
action_60 (52) = happyShift action_38
action_60 (55) = happyShift action_39
action_60 (56) = happyShift action_43
action_60 (14) = happyGoto action_73
action_60 (15) = happyGoto action_21
action_60 (16) = happyGoto action_22
action_60 (17) = happyGoto action_23
action_60 (18) = happyGoto action_24
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (22) = happyShift action_28
action_61 (32) = happyShift action_29
action_61 (33) = happyShift action_30
action_61 (42) = happyShift action_37
action_61 (52) = happyShift action_38
action_61 (55) = happyShift action_39
action_61 (56) = happyShift action_43
action_61 (14) = happyGoto action_72
action_61 (15) = happyGoto action_21
action_61 (16) = happyGoto action_22
action_61 (17) = happyGoto action_23
action_61 (18) = happyGoto action_24
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (22) = happyShift action_28
action_62 (32) = happyShift action_29
action_62 (33) = happyShift action_30
action_62 (42) = happyShift action_37
action_62 (52) = happyShift action_38
action_62 (55) = happyShift action_39
action_62 (56) = happyShift action_43
action_62 (13) = happyGoto action_71
action_62 (14) = happyGoto action_20
action_62 (15) = happyGoto action_21
action_62 (16) = happyGoto action_22
action_62 (17) = happyGoto action_23
action_62 (18) = happyGoto action_24
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (22) = happyShift action_28
action_63 (32) = happyShift action_29
action_63 (33) = happyShift action_30
action_63 (42) = happyShift action_37
action_63 (52) = happyShift action_38
action_63 (55) = happyShift action_39
action_63 (56) = happyShift action_43
action_63 (12) = happyGoto action_70
action_63 (13) = happyGoto action_19
action_63 (14) = happyGoto action_20
action_63 (15) = happyGoto action_21
action_63 (16) = happyGoto action_22
action_63 (17) = happyGoto action_23
action_63 (18) = happyGoto action_24
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_16

action_65 _ = happyReduce_17

action_66 (45) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (22) = happyShift action_28
action_67 (32) = happyShift action_29
action_67 (33) = happyShift action_30
action_67 (34) = happyShift action_31
action_67 (35) = happyShift action_32
action_67 (36) = happyShift action_33
action_67 (37) = happyShift action_34
action_67 (39) = happyShift action_35
action_67 (40) = happyShift action_36
action_67 (42) = happyShift action_37
action_67 (52) = happyShift action_38
action_67 (55) = happyShift action_39
action_67 (56) = happyShift action_40
action_67 (6) = happyGoto action_68
action_67 (7) = happyGoto action_67
action_67 (8) = happyGoto action_14
action_67 (9) = happyGoto action_15
action_67 (10) = happyGoto action_16
action_67 (11) = happyGoto action_17
action_67 (12) = happyGoto action_18
action_67 (13) = happyGoto action_19
action_67 (14) = happyGoto action_20
action_67 (15) = happyGoto action_21
action_67 (16) = happyGoto action_22
action_67 (17) = happyGoto action_23
action_67 (18) = happyGoto action_24
action_67 (19) = happyGoto action_25
action_67 (20) = happyGoto action_26
action_67 (21) = happyGoto action_27
action_67 _ = happyReduce_5

action_68 _ = happyReduce_4

action_69 _ = happyReduce_3

action_70 (54) = happyShift action_62
action_70 _ = happyReduce_18

action_71 (46) = happyShift action_60
action_71 (47) = happyShift action_61
action_71 _ = happyReduce_20

action_72 (48) = happyShift action_56
action_72 (49) = happyShift action_57
action_72 (50) = happyShift action_58
action_72 (51) = happyShift action_59
action_72 _ = happyReduce_23

action_73 (48) = happyShift action_56
action_73 (49) = happyShift action_57
action_73 (50) = happyShift action_58
action_73 (51) = happyShift action_59
action_73 _ = happyReduce_22

action_74 (25) = happyShift action_54
action_74 (26) = happyShift action_55
action_74 _ = happyReduce_26

action_75 (25) = happyShift action_54
action_75 (26) = happyShift action_55
action_75 _ = happyReduce_28

action_76 (25) = happyShift action_54
action_76 (26) = happyShift action_55
action_76 _ = happyReduce_25

action_77 (25) = happyShift action_54
action_77 (26) = happyShift action_55
action_77 _ = happyReduce_27

action_78 (27) = happyShift action_51
action_78 (28) = happyShift action_52
action_78 (29) = happyShift action_53
action_78 _ = happyReduce_31

action_79 (27) = happyShift action_51
action_79 (28) = happyShift action_52
action_79 (29) = happyShift action_53
action_79 _ = happyReduce_30

action_80 _ = happyReduce_35

action_81 _ = happyReduce_34

action_82 _ = happyReduce_33

action_83 (43) = happyShift action_95
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_14

action_85 (22) = happyShift action_28
action_85 (32) = happyShift action_29
action_85 (33) = happyShift action_30
action_85 (35) = happyShift action_32
action_85 (42) = happyShift action_37
action_85 (52) = happyShift action_38
action_85 (55) = happyShift action_39
action_85 (56) = happyShift action_43
action_85 (9) = happyGoto action_94
action_85 (11) = happyGoto action_17
action_85 (12) = happyGoto action_18
action_85 (13) = happyGoto action_19
action_85 (14) = happyGoto action_20
action_85 (15) = happyGoto action_21
action_85 (16) = happyGoto action_22
action_85 (17) = happyGoto action_23
action_85 (18) = happyGoto action_24
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (22) = happyShift action_28
action_86 (32) = happyShift action_29
action_86 (33) = happyShift action_30
action_86 (35) = happyShift action_32
action_86 (42) = happyShift action_37
action_86 (52) = happyShift action_38
action_86 (55) = happyShift action_39
action_86 (56) = happyShift action_43
action_86 (9) = happyGoto action_93
action_86 (11) = happyGoto action_17
action_86 (12) = happyGoto action_18
action_86 (13) = happyGoto action_19
action_86 (14) = happyGoto action_20
action_86 (15) = happyGoto action_21
action_86 (16) = happyGoto action_22
action_86 (17) = happyGoto action_23
action_86 (18) = happyGoto action_24
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (43) = happyShift action_92
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (43) = happyShift action_91
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_43

action_90 _ = happyReduce_15

action_91 (44) = happyShift action_12
action_91 (5) = happyGoto action_97
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (44) = happyShift action_12
action_92 (5) = happyGoto action_96
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_45

action_94 _ = happyReduce_46

action_95 _ = happyReduce_10

action_96 _ = happyReduce_49

action_97 (41) = happyShift action_98
action_97 _ = happyReduce_47

action_98 (44) = happyShift action_12
action_98 (5) = happyGoto action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_48

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

happyReduce_2 = happyReduce 5 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_5
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Block happy_var_2
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 : happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_0  6 happyReduction_5
happyReduction_5  =  HappyAbsSyn6
		 ([]
	)

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (ExprStmt happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (ExprStmt happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 _
	_
	_
	 =  HappyAbsSyn9
		 (Readln
	)

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  10 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (Incr happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  10 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (Decr happy_var_1
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  13 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  13 happyReduction_23
happyReduction_23 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  14 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Less happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEq happy_var_1 happy_var_3
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
		 (Add happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Sub happy_var_1 happy_var_3
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
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  16 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  16 happyReduction_36
happyReduction_36 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  17 happyReduction_37
happyReduction_37 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  17 happyReduction_38
happyReduction_38 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn18
		 (Num happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn18
		 (Var happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  18 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn18
		 (Bool True
	)

happyReduce_42 = happySpecReduce_1  18 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn18
		 (Bool False
	)

happyReduce_43 = happySpecReduce_3  18 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  18 happyReduction_44
happyReduction_44 (HappyTerminal (TString happy_var_1))
	 =  HappyAbsSyn18
		 (String happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happyReduce 4 19 happyReduction_45
happyReduction_45 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 4 19 happyReduction_46
happyReduction_46 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl TyInt [Assign (Val happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_47 = happyReduce 5 20 happyReduction_47
happyReduction_47 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_48 = happyReduce 7 20 happyReduction_48
happyReduction_48 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_49 = happyReduce 5 21 happyReduction_49
happyReduction_49 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TNum happy_dollar_dollar -> cont 22;
	TFun -> cont 23;
	TMain -> cont 24;
	TPlus -> cont 25;
	TMinus -> cont 26;
	TMult -> cont 27;
	TDiv -> cont 28;
	TMod -> cont 29;
	TIncr -> cont 30;
	TDecr -> cont 31;
	TTrue -> cont 32;
	TFalse -> cont 33;
	TPrint -> cont 34;
	TReadln -> cont 35;
	TVal -> cont 36;
	TVar -> cont 37;
	TAssign -> cont 38;
	TWhile -> cont 39;
	TIf -> cont 40;
	TElse -> cont 41;
	TLParen -> cont 42;
	TRParen -> cont 43;
	TLBraces -> cont 44;
	TRBraces -> cont 45;
	TEqual -> cont 46;
	TDifferent -> cont 47;
	TGreater -> cont 48;
	TLess -> cont 49;
	TGreaterEq -> cont 50;
	TLessEq -> cont 51;
	TNot -> cont 52;
	TOr -> cont 53;
	TAnd -> cont 54;
	TString happy_dollar_dollar -> cont 55;
	TId happy_dollar_dollar -> cont 56;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 57 tk tks = happyError' (tks, explist)
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
