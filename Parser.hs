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
happyExpList = Happy_Data_Array.listArray (0,223) ([0,64,0,0,32768,0,0,0,512,0,0,0,0,0,0,0,8192,0,0,0,128,0,0,0,2,0,0,0,0,0,56832,32768,0,0,8192,0,0,30720,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,512,0,0,0,0,1,0,0,512,0,0,16,0,0,8192,0,0,0,4,0,2048,32864,8704,0,49168,256,68,8192,384,34818,0,0,64,0,0,32768,0,0,0,8192,0,0,6146,32800,8,0,0,0,0,0,0,0,0,0,2,0,0,0,16,0,0,16384,0,0,32768,1,0,0,15360,0,12288,0,0,0,896,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,4108,1088,0,6146,32800,8,0,0,0,0,0,0,0,4096,192,17409,0,32800,513,136,0,0,8,0,0,4096,0,0,0,0,0,0,32768,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,32768,1536,8200,2,256,4108,1088,0,6146,32800,8,1024,16432,4352,0,24584,128,34,4096,192,17409,0,32800,513,136,16384,768,4100,1,128,2054,544,0,3073,16400,4,512,8216,2176,0,12292,64,17,2048,32864,8704,0,0,0,0,0,0,8192,0,0,49152,0,0,0,7680,0,0,0,60,0,48,0,0,24576,0,0,0,192,0,0,32768,1,0,0,7168,0,0,0,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,8,0,0,0,0,0
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

action_0 (23) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (24) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (57) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (42) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (43) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (44) = happyShift action_8
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (34) = happyShift action_15
action_8 (35) = happyShift action_16
action_8 (36) = happyShift action_17
action_8 (37) = happyShift action_18
action_8 (39) = happyShift action_19
action_8 (40) = happyShift action_20
action_8 (56) = happyShift action_21
action_8 (6) = happyGoto action_9
action_8 (7) = happyGoto action_10
action_8 (10) = happyGoto action_11
action_8 (19) = happyGoto action_12
action_8 (20) = happyGoto action_13
action_8 (21) = happyGoto action_14
action_8 _ = happyReduce_3

action_9 (45) = happyShift action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (34) = happyShift action_15
action_10 (35) = happyShift action_16
action_10 (36) = happyShift action_17
action_10 (37) = happyShift action_18
action_10 (39) = happyShift action_19
action_10 (40) = happyShift action_20
action_10 (56) = happyShift action_21
action_10 (6) = happyGoto action_29
action_10 (7) = happyGoto action_10
action_10 (10) = happyGoto action_11
action_10 (19) = happyGoto action_12
action_10 (20) = happyGoto action_13
action_10 (21) = happyGoto action_14
action_10 _ = happyReduce_3

action_11 _ = happyReduce_6

action_12 _ = happyReduce_5

action_13 _ = happyReduce_7

action_14 _ = happyReduce_8

action_15 (42) = happyShift action_28
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (42) = happyShift action_27
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (56) = happyShift action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (56) = happyShift action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (42) = happyShift action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (42) = happyShift action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (38) = happyShift action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (22) = happyShift action_40
action_22 (32) = happyShift action_41
action_22 (33) = happyShift action_42
action_22 (42) = happyShift action_43
action_22 (52) = happyShift action_44
action_22 (56) = happyShift action_45
action_22 (9) = happyGoto action_51
action_22 (11) = happyGoto action_32
action_22 (12) = happyGoto action_33
action_22 (13) = happyGoto action_34
action_22 (14) = happyGoto action_35
action_22 (15) = happyGoto action_36
action_22 (16) = happyGoto action_37
action_22 (17) = happyGoto action_38
action_22 (18) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (22) = happyShift action_40
action_23 (32) = happyShift action_41
action_23 (33) = happyShift action_42
action_23 (42) = happyShift action_43
action_23 (52) = happyShift action_44
action_23 (56) = happyShift action_45
action_23 (9) = happyGoto action_50
action_23 (11) = happyGoto action_32
action_23 (12) = happyGoto action_33
action_23 (13) = happyGoto action_34
action_23 (14) = happyGoto action_35
action_23 (15) = happyGoto action_36
action_23 (16) = happyGoto action_37
action_23 (17) = happyGoto action_38
action_23 (18) = happyGoto action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (22) = happyShift action_40
action_24 (32) = happyShift action_41
action_24 (33) = happyShift action_42
action_24 (42) = happyShift action_43
action_24 (52) = happyShift action_44
action_24 (56) = happyShift action_45
action_24 (9) = happyGoto action_49
action_24 (11) = happyGoto action_32
action_24 (12) = happyGoto action_33
action_24 (13) = happyGoto action_34
action_24 (14) = happyGoto action_35
action_24 (15) = happyGoto action_36
action_24 (16) = happyGoto action_37
action_24 (17) = happyGoto action_38
action_24 (18) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (38) = happyShift action_48
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (38) = happyShift action_47
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (43) = happyShift action_46
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (22) = happyShift action_40
action_28 (32) = happyShift action_41
action_28 (33) = happyShift action_42
action_28 (42) = happyShift action_43
action_28 (52) = happyShift action_44
action_28 (56) = happyShift action_45
action_28 (9) = happyGoto action_31
action_28 (11) = happyGoto action_32
action_28 (12) = happyGoto action_33
action_28 (13) = happyGoto action_34
action_28 (14) = happyGoto action_35
action_28 (15) = happyGoto action_36
action_28 (16) = happyGoto action_37
action_28 (17) = happyGoto action_38
action_28 (18) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_4

action_30 _ = happyReduce_2

action_31 (43) = happyShift action_71
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (53) = happyShift action_70
action_32 _ = happyReduce_12

action_33 (54) = happyShift action_69
action_33 _ = happyReduce_15

action_34 (46) = happyShift action_67
action_34 (47) = happyShift action_68
action_34 _ = happyReduce_17

action_35 (48) = happyShift action_63
action_35 (49) = happyShift action_64
action_35 (50) = happyShift action_65
action_35 (51) = happyShift action_66
action_35 _ = happyReduce_20

action_36 (25) = happyShift action_61
action_36 (26) = happyShift action_62
action_36 _ = happyReduce_25

action_37 (27) = happyShift action_58
action_37 (28) = happyShift action_59
action_37 (29) = happyShift action_60
action_37 _ = happyReduce_28

action_38 _ = happyReduce_32

action_39 _ = happyReduce_34

action_40 _ = happyReduce_35

action_41 _ = happyReduce_37

action_42 _ = happyReduce_38

action_43 (22) = happyShift action_40
action_43 (32) = happyShift action_41
action_43 (33) = happyShift action_42
action_43 (42) = happyShift action_43
action_43 (52) = happyShift action_44
action_43 (56) = happyShift action_45
action_43 (9) = happyGoto action_57
action_43 (11) = happyGoto action_32
action_43 (12) = happyGoto action_33
action_43 (13) = happyGoto action_34
action_43 (14) = happyGoto action_35
action_43 (15) = happyGoto action_36
action_43 (16) = happyGoto action_37
action_43 (17) = happyGoto action_38
action_43 (18) = happyGoto action_39
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_40
action_44 (32) = happyShift action_41
action_44 (33) = happyShift action_42
action_44 (42) = happyShift action_43
action_44 (52) = happyShift action_44
action_44 (56) = happyShift action_45
action_44 (17) = happyGoto action_56
action_44 (18) = happyGoto action_39
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_36

action_46 _ = happyReduce_10

action_47 (22) = happyShift action_40
action_47 (32) = happyShift action_41
action_47 (33) = happyShift action_42
action_47 (42) = happyShift action_43
action_47 (52) = happyShift action_44
action_47 (56) = happyShift action_45
action_47 (9) = happyGoto action_55
action_47 (11) = happyGoto action_32
action_47 (12) = happyGoto action_33
action_47 (13) = happyGoto action_34
action_47 (14) = happyGoto action_35
action_47 (15) = happyGoto action_36
action_47 (16) = happyGoto action_37
action_47 (17) = happyGoto action_38
action_47 (18) = happyGoto action_39
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (22) = happyShift action_40
action_48 (32) = happyShift action_41
action_48 (33) = happyShift action_42
action_48 (42) = happyShift action_43
action_48 (52) = happyShift action_44
action_48 (56) = happyShift action_45
action_48 (9) = happyGoto action_54
action_48 (11) = happyGoto action_32
action_48 (12) = happyGoto action_33
action_48 (13) = happyGoto action_34
action_48 (14) = happyGoto action_35
action_48 (15) = happyGoto action_36
action_48 (16) = happyGoto action_37
action_48 (17) = happyGoto action_38
action_48 (18) = happyGoto action_39
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (43) = happyShift action_53
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (43) = happyShift action_52
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_13

action_52 (44) = happyShift action_8
action_52 (5) = happyGoto action_87
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (44) = happyShift action_8
action_53 (5) = happyGoto action_86
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_40

action_55 _ = happyReduce_41

action_56 _ = happyReduce_33

action_57 (43) = happyShift action_85
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (22) = happyShift action_40
action_58 (32) = happyShift action_41
action_58 (33) = happyShift action_42
action_58 (42) = happyShift action_43
action_58 (52) = happyShift action_44
action_58 (56) = happyShift action_45
action_58 (17) = happyGoto action_84
action_58 (18) = happyGoto action_39
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (22) = happyShift action_40
action_59 (32) = happyShift action_41
action_59 (33) = happyShift action_42
action_59 (42) = happyShift action_43
action_59 (52) = happyShift action_44
action_59 (56) = happyShift action_45
action_59 (17) = happyGoto action_83
action_59 (18) = happyGoto action_39
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (22) = happyShift action_40
action_60 (32) = happyShift action_41
action_60 (33) = happyShift action_42
action_60 (42) = happyShift action_43
action_60 (52) = happyShift action_44
action_60 (56) = happyShift action_45
action_60 (17) = happyGoto action_82
action_60 (18) = happyGoto action_39
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (22) = happyShift action_40
action_61 (32) = happyShift action_41
action_61 (33) = happyShift action_42
action_61 (42) = happyShift action_43
action_61 (52) = happyShift action_44
action_61 (56) = happyShift action_45
action_61 (16) = happyGoto action_81
action_61 (17) = happyGoto action_38
action_61 (18) = happyGoto action_39
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (22) = happyShift action_40
action_62 (32) = happyShift action_41
action_62 (33) = happyShift action_42
action_62 (42) = happyShift action_43
action_62 (52) = happyShift action_44
action_62 (56) = happyShift action_45
action_62 (16) = happyGoto action_80
action_62 (17) = happyGoto action_38
action_62 (18) = happyGoto action_39
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (22) = happyShift action_40
action_63 (32) = happyShift action_41
action_63 (33) = happyShift action_42
action_63 (42) = happyShift action_43
action_63 (52) = happyShift action_44
action_63 (56) = happyShift action_45
action_63 (15) = happyGoto action_79
action_63 (16) = happyGoto action_37
action_63 (17) = happyGoto action_38
action_63 (18) = happyGoto action_39
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (22) = happyShift action_40
action_64 (32) = happyShift action_41
action_64 (33) = happyShift action_42
action_64 (42) = happyShift action_43
action_64 (52) = happyShift action_44
action_64 (56) = happyShift action_45
action_64 (15) = happyGoto action_78
action_64 (16) = happyGoto action_37
action_64 (17) = happyGoto action_38
action_64 (18) = happyGoto action_39
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (22) = happyShift action_40
action_65 (32) = happyShift action_41
action_65 (33) = happyShift action_42
action_65 (42) = happyShift action_43
action_65 (52) = happyShift action_44
action_65 (56) = happyShift action_45
action_65 (15) = happyGoto action_77
action_65 (16) = happyGoto action_37
action_65 (17) = happyGoto action_38
action_65 (18) = happyGoto action_39
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (22) = happyShift action_40
action_66 (32) = happyShift action_41
action_66 (33) = happyShift action_42
action_66 (42) = happyShift action_43
action_66 (52) = happyShift action_44
action_66 (56) = happyShift action_45
action_66 (15) = happyGoto action_76
action_66 (16) = happyGoto action_37
action_66 (17) = happyGoto action_38
action_66 (18) = happyGoto action_39
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (22) = happyShift action_40
action_67 (32) = happyShift action_41
action_67 (33) = happyShift action_42
action_67 (42) = happyShift action_43
action_67 (52) = happyShift action_44
action_67 (56) = happyShift action_45
action_67 (14) = happyGoto action_75
action_67 (15) = happyGoto action_36
action_67 (16) = happyGoto action_37
action_67 (17) = happyGoto action_38
action_67 (18) = happyGoto action_39
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (22) = happyShift action_40
action_68 (32) = happyShift action_41
action_68 (33) = happyShift action_42
action_68 (42) = happyShift action_43
action_68 (52) = happyShift action_44
action_68 (56) = happyShift action_45
action_68 (14) = happyGoto action_74
action_68 (15) = happyGoto action_36
action_68 (16) = happyGoto action_37
action_68 (17) = happyGoto action_38
action_68 (18) = happyGoto action_39
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (22) = happyShift action_40
action_69 (32) = happyShift action_41
action_69 (33) = happyShift action_42
action_69 (42) = happyShift action_43
action_69 (52) = happyShift action_44
action_69 (56) = happyShift action_45
action_69 (13) = happyGoto action_73
action_69 (14) = happyGoto action_35
action_69 (15) = happyGoto action_36
action_69 (16) = happyGoto action_37
action_69 (17) = happyGoto action_38
action_69 (18) = happyGoto action_39
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (22) = happyShift action_40
action_70 (32) = happyShift action_41
action_70 (33) = happyShift action_42
action_70 (42) = happyShift action_43
action_70 (52) = happyShift action_44
action_70 (56) = happyShift action_45
action_70 (12) = happyGoto action_72
action_70 (13) = happyGoto action_34
action_70 (14) = happyGoto action_35
action_70 (15) = happyGoto action_36
action_70 (16) = happyGoto action_37
action_70 (17) = happyGoto action_38
action_70 (18) = happyGoto action_39
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_9

action_72 (54) = happyShift action_69
action_72 _ = happyReduce_14

action_73 (46) = happyShift action_67
action_73 (47) = happyShift action_68
action_73 _ = happyReduce_16

action_74 (48) = happyShift action_63
action_74 (49) = happyShift action_64
action_74 (50) = happyShift action_65
action_74 (51) = happyShift action_66
action_74 _ = happyReduce_19

action_75 (48) = happyShift action_63
action_75 (49) = happyShift action_64
action_75 (50) = happyShift action_65
action_75 (51) = happyShift action_66
action_75 _ = happyReduce_18

action_76 (25) = happyShift action_61
action_76 (26) = happyShift action_62
action_76 _ = happyReduce_22

action_77 (25) = happyShift action_61
action_77 (26) = happyShift action_62
action_77 _ = happyReduce_24

action_78 (25) = happyShift action_61
action_78 (26) = happyShift action_62
action_78 _ = happyReduce_21

action_79 (25) = happyShift action_61
action_79 (26) = happyShift action_62
action_79 _ = happyReduce_23

action_80 (27) = happyShift action_58
action_80 (28) = happyShift action_59
action_80 (29) = happyShift action_60
action_80 _ = happyReduce_27

action_81 (27) = happyShift action_58
action_81 (28) = happyShift action_59
action_81 (29) = happyShift action_60
action_81 _ = happyReduce_26

action_82 _ = happyReduce_31

action_83 _ = happyReduce_30

action_84 _ = happyReduce_29

action_85 _ = happyReduce_39

action_86 _ = happyReduce_44

action_87 (41) = happyShift action_88
action_87 _ = happyReduce_42

action_88 (44) = happyShift action_8
action_88 (5) = happyGoto action_89
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_43

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

happyReduce_3 = happySpecReduce_0  6 happyReduction_3
happyReduction_3  =  HappyAbsSyn6
		 ([]
	)

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 : happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

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

happyReduce_9 = happyReduce 4 7 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 _
	_
	_
	 =  HappyAbsSyn7
		 (Readln
	)

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

happyReduce_13 = happySpecReduce_3  10 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  11 happyReduction_14
happyReduction_14 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  11 happyReduction_15
happyReduction_15 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  12 happyReduction_16
happyReduction_16 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  13 happyReduction_18
happyReduction_18 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  13 happyReduction_19
happyReduction_19 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  13 happyReduction_20
happyReduction_20 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  14 happyReduction_21
happyReduction_21 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Less happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  14 happyReduction_22
happyReduction_22 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  14 happyReduction_23
happyReduction_23 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  14 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  14 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  15 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Add happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  15 happyReduction_28
happyReduction_28 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  16 happyReduction_29
happyReduction_29 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  16 happyReduction_30
happyReduction_30 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  16 happyReduction_31
happyReduction_31 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  16 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  17 happyReduction_33
happyReduction_33 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  17 happyReduction_34
happyReduction_34 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  18 happyReduction_35
happyReduction_35 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn18
		 (Num happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  18 happyReduction_36
happyReduction_36 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn18
		 (Var happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn18
		 (Bool True
	)

happyReduce_38 = happySpecReduce_1  18 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn18
		 (Bool False
	)

happyReduce_39 = happySpecReduce_3  18 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happyReduce 4 19 happyReduction_40
happyReduction_40 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 4 19 happyReduction_41
happyReduction_41 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 20 happyReduction_42
happyReduction_42 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 7 20 happyReduction_43
happyReduction_43 ((HappyAbsSyn5  happy_var_7) `HappyStk`
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

happyReduce_44 = happyReduce 5 21 happyReduction_44
happyReduction_44 ((HappyAbsSyn5  happy_var_5) `HappyStk`
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
parseError toks = error "parse error"
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
