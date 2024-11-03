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
happyExpList = Happy_Data_Array.listArray (0,305) ([0,128,0,0,0,2,0,0,4096,0,0,0,0,0,0,0,0,4,0,0,8192,0,0,0,256,0,0,0,0,0,64,1471,272,0,0,128,0,1024,23536,4352,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,4096,0,0,49152,0,0,0,15360,0,24576,0,0,0,3584,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,64,0,0,0,16384,0,0,0,256,0,0,16,0,0,16384,0,0,49168,256,68,16384,768,4100,1,0,256,0,0,12292,64,17,0,0,0,0,0,0,0,0,0,32,0,0,1024,0,0,49168,256,68,16384,768,4100,1,0,256,0,0,0,4,0,0,0,2,0,64,1027,272,0,3073,16400,4,1024,16432,4352,0,49168,256,68,16384,768,4100,1,256,4108,1088,0,12292,64,17,4096,192,17409,0,64,1027,272,0,3073,16400,4,1024,16432,4352,0,49168,256,68,16384,768,4100,1,256,4108,1088,0,0,0,0,0,0,0,0,0,0,64,0,0,768,0,0,0,240,0,0,49152,3,0,6,0,0,6144,0,0,0,96,0,0,32768,1,0,0,14336,0,0,0,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,4096,192,17409,0,64,1027,272,0,0,32,0,0,32768,0,0,49168,256,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,4,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr_stmt","expr","assign_expr","or_expr","and_expr","eq_expr","rel_expr","add_expr","mul_expr","unary_expr","primary","decl_stmt","assign_stmt","if_stmt","while_stmt","num","\"fun\"","\"main\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"readln\"","\"val\"","\"var\"","\"=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","string","id","%eof"]
        bit_start = st Prelude.* 58
        bit_end = (st Prelude.+ 1) Prelude.* 58
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..57]
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

action_3 (58) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (43) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (44) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (45) = happyShift action_8
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
action_8 (40) = happyShift action_33
action_8 (41) = happyShift action_34
action_8 (43) = happyShift action_35
action_8 (53) = happyShift action_36
action_8 (57) = happyShift action_37
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
action_8 _ = happyReduce_3

action_9 (46) = happyShift action_63
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_26
action_10 (33) = happyShift action_27
action_10 (34) = happyShift action_28
action_10 (35) = happyShift action_29
action_10 (36) = happyShift action_30
action_10 (37) = happyShift action_31
action_10 (38) = happyShift action_32
action_10 (40) = happyShift action_33
action_10 (41) = happyShift action_34
action_10 (43) = happyShift action_35
action_10 (53) = happyShift action_36
action_10 (57) = happyShift action_37
action_10 (6) = happyGoto action_62
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
action_10 _ = happyReduce_3

action_11 _ = happyReduce_9

action_12 _ = happyReduce_12

action_13 _ = happyReduce_13

action_14 (54) = happyShift action_61
action_14 _ = happyReduce_15

action_15 (55) = happyShift action_60
action_15 _ = happyReduce_17

action_16 (47) = happyShift action_58
action_16 (48) = happyShift action_59
action_16 _ = happyReduce_19

action_17 (49) = happyShift action_54
action_17 (50) = happyShift action_55
action_17 (51) = happyShift action_56
action_17 (52) = happyShift action_57
action_17 _ = happyReduce_22

action_18 (26) = happyShift action_52
action_18 (27) = happyShift action_53
action_18 _ = happyReduce_27

action_19 (28) = happyShift action_49
action_19 (29) = happyShift action_50
action_19 (30) = happyShift action_51
action_19 _ = happyReduce_30

action_20 _ = happyReduce_34

action_21 _ = happyReduce_36

action_22 _ = happyReduce_5

action_23 _ = happyReduce_6

action_24 _ = happyReduce_7

action_25 _ = happyReduce_8

action_26 _ = happyReduce_37

action_27 _ = happyReduce_39

action_28 _ = happyReduce_40

action_29 (43) = happyShift action_48
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (43) = happyShift action_47
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (57) = happyShift action_46
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (57) = happyShift action_45
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (43) = happyShift action_44
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (43) = happyShift action_43
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_26
action_35 (33) = happyShift action_27
action_35 (34) = happyShift action_28
action_35 (43) = happyShift action_35
action_35 (53) = happyShift action_36
action_35 (57) = happyShift action_42
action_35 (9) = happyGoto action_41
action_35 (10) = happyGoto action_13
action_35 (11) = happyGoto action_14
action_35 (12) = happyGoto action_15
action_35 (13) = happyGoto action_16
action_35 (14) = happyGoto action_17
action_35 (15) = happyGoto action_18
action_35 (16) = happyGoto action_19
action_35 (17) = happyGoto action_20
action_35 (18) = happyGoto action_21
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (23) = happyShift action_26
action_36 (33) = happyShift action_27
action_36 (34) = happyShift action_28
action_36 (43) = happyShift action_35
action_36 (53) = happyShift action_36
action_36 (57) = happyShift action_40
action_36 (17) = happyGoto action_39
action_36 (18) = happyGoto action_21
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (39) = happyShift action_38
action_37 _ = happyReduce_38

action_38 (23) = happyShift action_26
action_38 (33) = happyShift action_27
action_38 (34) = happyShift action_28
action_38 (43) = happyShift action_35
action_38 (53) = happyShift action_36
action_38 (57) = happyShift action_42
action_38 (9) = happyGoto action_85
action_38 (10) = happyGoto action_86
action_38 (11) = happyGoto action_14
action_38 (12) = happyGoto action_15
action_38 (13) = happyGoto action_16
action_38 (14) = happyGoto action_17
action_38 (15) = happyGoto action_18
action_38 (16) = happyGoto action_19
action_38 (17) = happyGoto action_20
action_38 (18) = happyGoto action_21
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_35

action_40 _ = happyReduce_38

action_41 (44) = happyShift action_84
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (39) = happyShift action_83
action_42 _ = happyReduce_38

action_43 (23) = happyShift action_26
action_43 (33) = happyShift action_27
action_43 (34) = happyShift action_28
action_43 (43) = happyShift action_35
action_43 (53) = happyShift action_36
action_43 (57) = happyShift action_42
action_43 (9) = happyGoto action_82
action_43 (10) = happyGoto action_13
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
action_44 (43) = happyShift action_35
action_44 (53) = happyShift action_36
action_44 (57) = happyShift action_42
action_44 (9) = happyGoto action_81
action_44 (10) = happyGoto action_13
action_44 (11) = happyGoto action_14
action_44 (12) = happyGoto action_15
action_44 (13) = happyGoto action_16
action_44 (14) = happyGoto action_17
action_44 (15) = happyGoto action_18
action_44 (16) = happyGoto action_19
action_44 (17) = happyGoto action_20
action_44 (18) = happyGoto action_21
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (39) = happyShift action_80
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (39) = happyShift action_79
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (44) = happyShift action_78
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (23) = happyShift action_26
action_48 (33) = happyShift action_27
action_48 (34) = happyShift action_28
action_48 (43) = happyShift action_35
action_48 (53) = happyShift action_36
action_48 (57) = happyShift action_42
action_48 (9) = happyGoto action_77
action_48 (10) = happyGoto action_13
action_48 (11) = happyGoto action_14
action_48 (12) = happyGoto action_15
action_48 (13) = happyGoto action_16
action_48 (14) = happyGoto action_17
action_48 (15) = happyGoto action_18
action_48 (16) = happyGoto action_19
action_48 (17) = happyGoto action_20
action_48 (18) = happyGoto action_21
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (23) = happyShift action_26
action_49 (33) = happyShift action_27
action_49 (34) = happyShift action_28
action_49 (43) = happyShift action_35
action_49 (53) = happyShift action_36
action_49 (57) = happyShift action_40
action_49 (17) = happyGoto action_76
action_49 (18) = happyGoto action_21
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (23) = happyShift action_26
action_50 (33) = happyShift action_27
action_50 (34) = happyShift action_28
action_50 (43) = happyShift action_35
action_50 (53) = happyShift action_36
action_50 (57) = happyShift action_40
action_50 (17) = happyGoto action_75
action_50 (18) = happyGoto action_21
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (23) = happyShift action_26
action_51 (33) = happyShift action_27
action_51 (34) = happyShift action_28
action_51 (43) = happyShift action_35
action_51 (53) = happyShift action_36
action_51 (57) = happyShift action_40
action_51 (17) = happyGoto action_74
action_51 (18) = happyGoto action_21
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (23) = happyShift action_26
action_52 (33) = happyShift action_27
action_52 (34) = happyShift action_28
action_52 (43) = happyShift action_35
action_52 (53) = happyShift action_36
action_52 (57) = happyShift action_40
action_52 (16) = happyGoto action_73
action_52 (17) = happyGoto action_20
action_52 (18) = happyGoto action_21
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (23) = happyShift action_26
action_53 (33) = happyShift action_27
action_53 (34) = happyShift action_28
action_53 (43) = happyShift action_35
action_53 (53) = happyShift action_36
action_53 (57) = happyShift action_40
action_53 (16) = happyGoto action_72
action_53 (17) = happyGoto action_20
action_53 (18) = happyGoto action_21
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (23) = happyShift action_26
action_54 (33) = happyShift action_27
action_54 (34) = happyShift action_28
action_54 (43) = happyShift action_35
action_54 (53) = happyShift action_36
action_54 (57) = happyShift action_40
action_54 (15) = happyGoto action_71
action_54 (16) = happyGoto action_19
action_54 (17) = happyGoto action_20
action_54 (18) = happyGoto action_21
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (23) = happyShift action_26
action_55 (33) = happyShift action_27
action_55 (34) = happyShift action_28
action_55 (43) = happyShift action_35
action_55 (53) = happyShift action_36
action_55 (57) = happyShift action_40
action_55 (15) = happyGoto action_70
action_55 (16) = happyGoto action_19
action_55 (17) = happyGoto action_20
action_55 (18) = happyGoto action_21
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_26
action_56 (33) = happyShift action_27
action_56 (34) = happyShift action_28
action_56 (43) = happyShift action_35
action_56 (53) = happyShift action_36
action_56 (57) = happyShift action_40
action_56 (15) = happyGoto action_69
action_56 (16) = happyGoto action_19
action_56 (17) = happyGoto action_20
action_56 (18) = happyGoto action_21
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (23) = happyShift action_26
action_57 (33) = happyShift action_27
action_57 (34) = happyShift action_28
action_57 (43) = happyShift action_35
action_57 (53) = happyShift action_36
action_57 (57) = happyShift action_40
action_57 (15) = happyGoto action_68
action_57 (16) = happyGoto action_19
action_57 (17) = happyGoto action_20
action_57 (18) = happyGoto action_21
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (23) = happyShift action_26
action_58 (33) = happyShift action_27
action_58 (34) = happyShift action_28
action_58 (43) = happyShift action_35
action_58 (53) = happyShift action_36
action_58 (57) = happyShift action_40
action_58 (14) = happyGoto action_67
action_58 (15) = happyGoto action_18
action_58 (16) = happyGoto action_19
action_58 (17) = happyGoto action_20
action_58 (18) = happyGoto action_21
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (23) = happyShift action_26
action_59 (33) = happyShift action_27
action_59 (34) = happyShift action_28
action_59 (43) = happyShift action_35
action_59 (53) = happyShift action_36
action_59 (57) = happyShift action_40
action_59 (14) = happyGoto action_66
action_59 (15) = happyGoto action_18
action_59 (16) = happyGoto action_19
action_59 (17) = happyGoto action_20
action_59 (18) = happyGoto action_21
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (23) = happyShift action_26
action_60 (33) = happyShift action_27
action_60 (34) = happyShift action_28
action_60 (43) = happyShift action_35
action_60 (53) = happyShift action_36
action_60 (57) = happyShift action_40
action_60 (13) = happyGoto action_65
action_60 (14) = happyGoto action_17
action_60 (15) = happyGoto action_18
action_60 (16) = happyGoto action_19
action_60 (17) = happyGoto action_20
action_60 (18) = happyGoto action_21
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (23) = happyShift action_26
action_61 (33) = happyShift action_27
action_61 (34) = happyShift action_28
action_61 (43) = happyShift action_35
action_61 (53) = happyShift action_36
action_61 (57) = happyShift action_40
action_61 (12) = happyGoto action_64
action_61 (13) = happyGoto action_16
action_61 (14) = happyGoto action_17
action_61 (15) = happyGoto action_18
action_61 (16) = happyGoto action_19
action_61 (17) = happyGoto action_20
action_61 (18) = happyGoto action_21
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_4

action_63 _ = happyReduce_2

action_64 (55) = happyShift action_60
action_64 _ = happyReduce_16

action_65 (47) = happyShift action_58
action_65 (48) = happyShift action_59
action_65 _ = happyReduce_18

action_66 (49) = happyShift action_54
action_66 (50) = happyShift action_55
action_66 (51) = happyShift action_56
action_66 (52) = happyShift action_57
action_66 _ = happyReduce_21

action_67 (49) = happyShift action_54
action_67 (50) = happyShift action_55
action_67 (51) = happyShift action_56
action_67 (52) = happyShift action_57
action_67 _ = happyReduce_20

action_68 (26) = happyShift action_52
action_68 (27) = happyShift action_53
action_68 _ = happyReduce_24

action_69 (26) = happyShift action_52
action_69 (27) = happyShift action_53
action_69 _ = happyReduce_26

action_70 (26) = happyShift action_52
action_70 (27) = happyShift action_53
action_70 _ = happyReduce_23

action_71 (26) = happyShift action_52
action_71 (27) = happyShift action_53
action_71 _ = happyReduce_25

action_72 (28) = happyShift action_49
action_72 (29) = happyShift action_50
action_72 (30) = happyShift action_51
action_72 _ = happyReduce_29

action_73 (28) = happyShift action_49
action_73 (29) = happyShift action_50
action_73 (30) = happyShift action_51
action_73 _ = happyReduce_28

action_74 _ = happyReduce_33

action_75 _ = happyReduce_32

action_76 _ = happyReduce_31

action_77 (44) = happyShift action_92
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_11

action_79 (23) = happyShift action_26
action_79 (33) = happyShift action_27
action_79 (34) = happyShift action_28
action_79 (43) = happyShift action_35
action_79 (53) = happyShift action_36
action_79 (57) = happyShift action_42
action_79 (9) = happyGoto action_91
action_79 (10) = happyGoto action_13
action_79 (11) = happyGoto action_14
action_79 (12) = happyGoto action_15
action_79 (13) = happyGoto action_16
action_79 (14) = happyGoto action_17
action_79 (15) = happyGoto action_18
action_79 (16) = happyGoto action_19
action_79 (17) = happyGoto action_20
action_79 (18) = happyGoto action_21
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (23) = happyShift action_26
action_80 (33) = happyShift action_27
action_80 (34) = happyShift action_28
action_80 (43) = happyShift action_35
action_80 (53) = happyShift action_36
action_80 (57) = happyShift action_42
action_80 (9) = happyGoto action_90
action_80 (10) = happyGoto action_13
action_80 (11) = happyGoto action_14
action_80 (12) = happyGoto action_15
action_80 (13) = happyGoto action_16
action_80 (14) = happyGoto action_17
action_80 (15) = happyGoto action_18
action_80 (16) = happyGoto action_19
action_80 (17) = happyGoto action_20
action_80 (18) = happyGoto action_21
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (44) = happyShift action_89
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (44) = happyShift action_88
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (23) = happyShift action_26
action_83 (33) = happyShift action_27
action_83 (34) = happyShift action_28
action_83 (43) = happyShift action_35
action_83 (53) = happyShift action_36
action_83 (57) = happyShift action_42
action_83 (10) = happyGoto action_87
action_83 (11) = happyGoto action_14
action_83 (12) = happyGoto action_15
action_83 (13) = happyGoto action_16
action_83 (14) = happyGoto action_17
action_83 (15) = happyGoto action_18
action_83 (16) = happyGoto action_19
action_83 (17) = happyGoto action_20
action_83 (18) = happyGoto action_21
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_41

action_85 _ = happyReduce_44

action_86 (23) = happyReduce_14
action_86 (33) = happyReduce_14
action_86 (34) = happyReduce_14
action_86 (35) = happyReduce_14
action_86 (36) = happyReduce_14
action_86 (37) = happyReduce_14
action_86 (38) = happyReduce_14
action_86 (40) = happyReduce_14
action_86 (41) = happyReduce_14
action_86 (43) = happyReduce_14
action_86 (46) = happyReduce_14
action_86 (53) = happyReduce_14
action_86 (57) = happyReduce_14
action_86 _ = happyReduce_14

action_87 _ = happyReduce_14

action_88 (45) = happyShift action_8
action_88 (5) = happyGoto action_94
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (45) = happyShift action_8
action_89 (5) = happyGoto action_93
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_42

action_91 _ = happyReduce_43

action_92 _ = happyReduce_10

action_93 _ = happyReduce_47

action_94 (42) = happyShift action_95
action_94 _ = happyReduce_45

action_95 (45) = happyShift action_8
action_95 (5) = happyGoto action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_46

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
happyReduction_6 (HappyAbsSyn20  happy_var_1)
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

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn7
		 (Readln
	)

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (ExprStmt happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  10 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  10 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  11 happyReduction_16
happyReduction_16 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  11 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  12 happyReduction_18
happyReduction_18 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  13 happyReduction_20
happyReduction_20 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  13 happyReduction_21
happyReduction_21 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  14 happyReduction_23
happyReduction_23 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Less happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  14 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  14 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  15 happyReduction_28
happyReduction_28 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Add happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  15 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  16 happyReduction_31
happyReduction_31 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  16 happyReduction_33
happyReduction_33 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  16 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  17 happyReduction_35
happyReduction_35 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  17 happyReduction_36
happyReduction_36 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn18
		 (Num happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  18 happyReduction_38
happyReduction_38 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn18
		 (Var happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn18
		 (Bool True
	)

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn18
		 (Bool False
	)

happyReduce_41 = happySpecReduce_3  18 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 19 happyReduction_42
happyReduction_42 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 4 19 happyReduction_43
happyReduction_43 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_3  20 happyReduction_44
happyReduction_44 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn20
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happyReduce 5 21 happyReduction_45
happyReduction_45 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 7 21 happyReduction_46
happyReduction_46 ((HappyAbsSyn5  happy_var_7) `HappyStk`
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

happyReduce_47 = happyReduce 5 22 happyReduction_47
happyReduction_47 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 58 58 notHappyAtAll (HappyState action) sts stk []

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
	TReadln -> cont 36;
	TVal -> cont 37;
	TVar -> cont 38;
	TAssign -> cont 39;
	TWhile -> cont 40;
	TIf -> cont 41;
	TElse -> cont 42;
	TLParen -> cont 43;
	TRParen -> cont 44;
	TLBraces -> cont 45;
	TRBraces -> cont 46;
	TEqual -> cont 47;
	TDifferent -> cont 48;
	TGreater -> cont 49;
	TLess -> cont 50;
	TGreaterEq -> cont 51;
	TLessEq -> cont 52;
	TNot -> cont 53;
	TOr -> cont 54;
	TAnd -> cont 55;
	TString happy_dollar_dollar -> cont 56;
	TId happy_dollar_dollar -> cont 57;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 58 tk tks = happyError' (tks, explist)
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
