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
happyExpList = Happy_Data_Array.listArray (0,395) ([0,256,0,0,0,8192,0,0,0,0,8,0,0,0,0,0,0,0,0,0,256,0,0,0,16384,0,0,0,0,16,0,0,0,0,0,32768,61440,5639,3136,0,0,0,16,0,512,8128,88,49,0,0,0,0,0,49152,0,0,0,0,0,0,0,0,0,0,32,0,0,0,2048,0,0,0,768,0,0,0,32768,7,0,384,0,0,0,49152,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,32,0,0,0,1024,0,0,0,0,16384,0,0,0,0,8,0,0,512,0,0,0,16384,0,0,64,248,8200,6,2048,768,256,196,0,0,0,0,0,0,32256,0,0,1024,3968,128,98,32768,61440,4097,3136,0,16,62,34818,1,512,1984,64,49,16384,63488,2048,1568,0,8,31,50177,0,0,0,0,0,0,0,0,0,0,0,0,1,0,128,2032,16470,12,4096,15872,512,392,0,0,0,2048,0,0,0,0,1,0,0,512,0,0,57345,8195,6272,0,32,124,4100,3,1024,384,128,98,32768,12288,4096,3136,0,16,6,34818,1,512,192,64,49,16384,6144,2048,1568,0,8,3,50177,0,256,96,32800,24,8192,3072,1024,784,0,32772,32769,25088,0,128,48,16400,12,4096,1536,512,392,0,49154,16384,12544,0,64,24,8200,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,96,0,0,0,61440,0,0,0,0,30,0,1536,0,0,0,49152,0,0,0,0,24,0,0,0,768,0,0,0,32768,3,0,0,0,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,8,0,0,0,0,0,0,28,0,0,0,896,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57345,44047,6272,0,0,0,16,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,8192,31744,1024,784,0,32772,32783,25088,0,0,0,0,0,0,0,0,0,0,49154,22559,12545,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr_stmt","expr","assign_stmt","or_expr","and_expr","eq_expr","rel_expr","add_expr","mul_expr","unary_expr","primary","Types","decl_stmt","block_or_stmt","if_block_or_stmt","while_stmt","num","\"fun\"","\"main\"","\"Int\"","\"Bool\"","\"String\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"println\"","\"readln\"","\"val\"","\"var\"","\"=\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","\":\"","string","id","%eof"]
        bit_start = st Prelude.* 69
        bit_end = (st Prelude.+ 1) Prelude.* 69
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..68]
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

action_3 (69) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (53) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (54) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (55) = happyShift action_8
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (24) = happyShift action_25
action_8 (37) = happyShift action_26
action_8 (38) = happyShift action_27
action_8 (39) = happyShift action_28
action_8 (40) = happyShift action_29
action_8 (41) = happyShift action_30
action_8 (42) = happyShift action_31
action_8 (43) = happyShift action_32
action_8 (50) = happyShift action_33
action_8 (51) = happyShift action_34
action_8 (53) = happyShift action_35
action_8 (63) = happyShift action_36
action_8 (67) = happyShift action_37
action_8 (68) = happyShift action_38
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
action_8 (20) = happyGoto action_22
action_8 (22) = happyGoto action_23
action_8 (23) = happyGoto action_24
action_8 _ = happyReduce_4

action_9 (56) = happyShift action_71
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (24) = happyShift action_25
action_10 (37) = happyShift action_26
action_10 (38) = happyShift action_27
action_10 (39) = happyShift action_28
action_10 (40) = happyShift action_29
action_10 (41) = happyShift action_30
action_10 (42) = happyShift action_31
action_10 (43) = happyShift action_32
action_10 (50) = happyShift action_33
action_10 (51) = happyShift action_34
action_10 (53) = happyShift action_35
action_10 (63) = happyShift action_36
action_10 (67) = happyShift action_37
action_10 (68) = happyShift action_38
action_10 (6) = happyGoto action_70
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
action_10 (20) = happyGoto action_22
action_10 (22) = happyGoto action_23
action_10 (23) = happyGoto action_24
action_10 _ = happyReduce_4

action_11 _ = happyReduce_9

action_12 (35) = happyShift action_68
action_12 (36) = happyShift action_69
action_12 _ = happyReduce_10

action_13 _ = happyReduce_6

action_14 (64) = happyShift action_67
action_14 _ = happyReduce_11

action_15 (65) = happyShift action_66
action_15 _ = happyReduce_24

action_16 (57) = happyShift action_64
action_16 (58) = happyShift action_65
action_16 _ = happyReduce_26

action_17 (59) = happyShift action_60
action_17 (60) = happyShift action_61
action_17 (61) = happyShift action_62
action_17 (62) = happyShift action_63
action_17 _ = happyReduce_29

action_18 (30) = happyShift action_58
action_18 (31) = happyShift action_59
action_18 _ = happyReduce_34

action_19 (32) = happyShift action_55
action_19 (33) = happyShift action_56
action_19 (34) = happyShift action_57
action_19 _ = happyReduce_37

action_20 _ = happyReduce_41

action_21 _ = happyReduce_43

action_22 _ = happyReduce_5

action_23 _ = happyReduce_7

action_24 _ = happyReduce_8

action_25 _ = happyReduce_44

action_26 _ = happyReduce_46

action_27 _ = happyReduce_47

action_28 (53) = happyShift action_54
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (53) = happyShift action_53
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (53) = happyShift action_52
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (68) = happyShift action_51
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (68) = happyShift action_50
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (53) = happyShift action_49
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (53) = happyShift action_48
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (24) = happyShift action_25
action_35 (37) = happyShift action_26
action_35 (38) = happyShift action_27
action_35 (39) = happyShift action_28
action_35 (40) = happyShift action_29
action_35 (41) = happyShift action_30
action_35 (53) = happyShift action_35
action_35 (63) = happyShift action_36
action_35 (67) = happyShift action_37
action_35 (68) = happyShift action_46
action_35 (9) = happyGoto action_47
action_35 (11) = happyGoto action_14
action_35 (12) = happyGoto action_15
action_35 (13) = happyGoto action_16
action_35 (14) = happyGoto action_17
action_35 (15) = happyGoto action_18
action_35 (16) = happyGoto action_19
action_35 (17) = happyGoto action_20
action_35 (18) = happyGoto action_21
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (24) = happyShift action_25
action_36 (37) = happyShift action_26
action_36 (38) = happyShift action_27
action_36 (53) = happyShift action_35
action_36 (63) = happyShift action_36
action_36 (67) = happyShift action_37
action_36 (68) = happyShift action_46
action_36 (17) = happyGoto action_45
action_36 (18) = happyGoto action_21
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_49

action_38 (44) = happyShift action_39
action_38 (45) = happyShift action_40
action_38 (46) = happyShift action_41
action_38 (47) = happyShift action_42
action_38 (48) = happyShift action_43
action_38 (49) = happyShift action_44
action_38 _ = happyReduce_45

action_39 (24) = happyShift action_25
action_39 (37) = happyShift action_26
action_39 (38) = happyShift action_27
action_39 (39) = happyShift action_28
action_39 (40) = happyShift action_29
action_39 (41) = happyShift action_30
action_39 (53) = happyShift action_35
action_39 (63) = happyShift action_36
action_39 (67) = happyShift action_37
action_39 (68) = happyShift action_46
action_39 (9) = happyGoto action_100
action_39 (11) = happyGoto action_14
action_39 (12) = happyGoto action_15
action_39 (13) = happyGoto action_16
action_39 (14) = happyGoto action_17
action_39 (15) = happyGoto action_18
action_39 (16) = happyGoto action_19
action_39 (17) = happyGoto action_20
action_39 (18) = happyGoto action_21
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (24) = happyShift action_25
action_40 (37) = happyShift action_26
action_40 (38) = happyShift action_27
action_40 (39) = happyShift action_28
action_40 (40) = happyShift action_29
action_40 (41) = happyShift action_30
action_40 (53) = happyShift action_35
action_40 (63) = happyShift action_36
action_40 (67) = happyShift action_37
action_40 (68) = happyShift action_46
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

action_41 (24) = happyShift action_25
action_41 (37) = happyShift action_26
action_41 (38) = happyShift action_27
action_41 (39) = happyShift action_28
action_41 (40) = happyShift action_29
action_41 (41) = happyShift action_30
action_41 (53) = happyShift action_35
action_41 (63) = happyShift action_36
action_41 (67) = happyShift action_37
action_41 (68) = happyShift action_46
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

action_42 (24) = happyShift action_25
action_42 (37) = happyShift action_26
action_42 (38) = happyShift action_27
action_42 (39) = happyShift action_28
action_42 (40) = happyShift action_29
action_42 (41) = happyShift action_30
action_42 (53) = happyShift action_35
action_42 (63) = happyShift action_36
action_42 (67) = happyShift action_37
action_42 (68) = happyShift action_46
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

action_43 (24) = happyShift action_25
action_43 (37) = happyShift action_26
action_43 (38) = happyShift action_27
action_43 (39) = happyShift action_28
action_43 (40) = happyShift action_29
action_43 (41) = happyShift action_30
action_43 (53) = happyShift action_35
action_43 (63) = happyShift action_36
action_43 (67) = happyShift action_37
action_43 (68) = happyShift action_46
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

action_44 (24) = happyShift action_25
action_44 (37) = happyShift action_26
action_44 (38) = happyShift action_27
action_44 (39) = happyShift action_28
action_44 (40) = happyShift action_29
action_44 (41) = happyShift action_30
action_44 (53) = happyShift action_35
action_44 (63) = happyShift action_36
action_44 (67) = happyShift action_37
action_44 (68) = happyShift action_46
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

action_45 _ = happyReduce_42

action_46 _ = happyReduce_45

action_47 (54) = happyShift action_94
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (24) = happyShift action_25
action_48 (37) = happyShift action_26
action_48 (38) = happyShift action_27
action_48 (39) = happyShift action_28
action_48 (40) = happyShift action_29
action_48 (41) = happyShift action_30
action_48 (42) = happyShift action_31
action_48 (43) = happyShift action_32
action_48 (50) = happyShift action_33
action_48 (51) = happyShift action_34
action_48 (53) = happyShift action_35
action_48 (55) = happyShift action_8
action_48 (63) = happyShift action_36
action_48 (67) = happyShift action_37
action_48 (68) = happyShift action_38
action_48 (5) = happyGoto action_91
action_48 (7) = happyGoto action_92
action_48 (8) = happyGoto action_11
action_48 (9) = happyGoto action_12
action_48 (10) = happyGoto action_13
action_48 (11) = happyGoto action_14
action_48 (12) = happyGoto action_15
action_48 (13) = happyGoto action_16
action_48 (14) = happyGoto action_17
action_48 (15) = happyGoto action_18
action_48 (16) = happyGoto action_19
action_48 (17) = happyGoto action_20
action_48 (18) = happyGoto action_21
action_48 (20) = happyGoto action_22
action_48 (21) = happyGoto action_93
action_48 (22) = happyGoto action_23
action_48 (23) = happyGoto action_24
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (24) = happyShift action_25
action_49 (37) = happyShift action_26
action_49 (38) = happyShift action_27
action_49 (39) = happyShift action_28
action_49 (40) = happyShift action_29
action_49 (41) = happyShift action_30
action_49 (53) = happyShift action_35
action_49 (63) = happyShift action_36
action_49 (67) = happyShift action_37
action_49 (68) = happyShift action_46
action_49 (9) = happyGoto action_90
action_49 (11) = happyGoto action_14
action_49 (12) = happyGoto action_15
action_49 (13) = happyGoto action_16
action_49 (14) = happyGoto action_17
action_49 (15) = happyGoto action_18
action_49 (16) = happyGoto action_19
action_49 (17) = happyGoto action_20
action_49 (18) = happyGoto action_21
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (66) = happyShift action_89
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (66) = happyShift action_88
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (54) = happyShift action_87
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (24) = happyShift action_25
action_53 (37) = happyShift action_26
action_53 (38) = happyShift action_27
action_53 (39) = happyShift action_28
action_53 (40) = happyShift action_29
action_53 (41) = happyShift action_30
action_53 (53) = happyShift action_35
action_53 (63) = happyShift action_36
action_53 (67) = happyShift action_37
action_53 (68) = happyShift action_46
action_53 (9) = happyGoto action_86
action_53 (11) = happyGoto action_14
action_53 (12) = happyGoto action_15
action_53 (13) = happyGoto action_16
action_53 (14) = happyGoto action_17
action_53 (15) = happyGoto action_18
action_53 (16) = happyGoto action_19
action_53 (17) = happyGoto action_20
action_53 (18) = happyGoto action_21
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (24) = happyShift action_25
action_54 (37) = happyShift action_26
action_54 (38) = happyShift action_27
action_54 (39) = happyShift action_28
action_54 (40) = happyShift action_29
action_54 (41) = happyShift action_30
action_54 (53) = happyShift action_35
action_54 (63) = happyShift action_36
action_54 (67) = happyShift action_37
action_54 (68) = happyShift action_46
action_54 (9) = happyGoto action_85
action_54 (11) = happyGoto action_14
action_54 (12) = happyGoto action_15
action_54 (13) = happyGoto action_16
action_54 (14) = happyGoto action_17
action_54 (15) = happyGoto action_18
action_54 (16) = happyGoto action_19
action_54 (17) = happyGoto action_20
action_54 (18) = happyGoto action_21
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (24) = happyShift action_25
action_55 (37) = happyShift action_26
action_55 (38) = happyShift action_27
action_55 (53) = happyShift action_35
action_55 (63) = happyShift action_36
action_55 (67) = happyShift action_37
action_55 (68) = happyShift action_46
action_55 (17) = happyGoto action_84
action_55 (18) = happyGoto action_21
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (24) = happyShift action_25
action_56 (37) = happyShift action_26
action_56 (38) = happyShift action_27
action_56 (53) = happyShift action_35
action_56 (63) = happyShift action_36
action_56 (67) = happyShift action_37
action_56 (68) = happyShift action_46
action_56 (17) = happyGoto action_83
action_56 (18) = happyGoto action_21
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (24) = happyShift action_25
action_57 (37) = happyShift action_26
action_57 (38) = happyShift action_27
action_57 (53) = happyShift action_35
action_57 (63) = happyShift action_36
action_57 (67) = happyShift action_37
action_57 (68) = happyShift action_46
action_57 (17) = happyGoto action_82
action_57 (18) = happyGoto action_21
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (24) = happyShift action_25
action_58 (37) = happyShift action_26
action_58 (38) = happyShift action_27
action_58 (53) = happyShift action_35
action_58 (63) = happyShift action_36
action_58 (67) = happyShift action_37
action_58 (68) = happyShift action_46
action_58 (16) = happyGoto action_81
action_58 (17) = happyGoto action_20
action_58 (18) = happyGoto action_21
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (24) = happyShift action_25
action_59 (37) = happyShift action_26
action_59 (38) = happyShift action_27
action_59 (53) = happyShift action_35
action_59 (63) = happyShift action_36
action_59 (67) = happyShift action_37
action_59 (68) = happyShift action_46
action_59 (16) = happyGoto action_80
action_59 (17) = happyGoto action_20
action_59 (18) = happyGoto action_21
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (24) = happyShift action_25
action_60 (37) = happyShift action_26
action_60 (38) = happyShift action_27
action_60 (53) = happyShift action_35
action_60 (63) = happyShift action_36
action_60 (67) = happyShift action_37
action_60 (68) = happyShift action_46
action_60 (15) = happyGoto action_79
action_60 (16) = happyGoto action_19
action_60 (17) = happyGoto action_20
action_60 (18) = happyGoto action_21
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (24) = happyShift action_25
action_61 (37) = happyShift action_26
action_61 (38) = happyShift action_27
action_61 (53) = happyShift action_35
action_61 (63) = happyShift action_36
action_61 (67) = happyShift action_37
action_61 (68) = happyShift action_46
action_61 (15) = happyGoto action_78
action_61 (16) = happyGoto action_19
action_61 (17) = happyGoto action_20
action_61 (18) = happyGoto action_21
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (24) = happyShift action_25
action_62 (37) = happyShift action_26
action_62 (38) = happyShift action_27
action_62 (53) = happyShift action_35
action_62 (63) = happyShift action_36
action_62 (67) = happyShift action_37
action_62 (68) = happyShift action_46
action_62 (15) = happyGoto action_77
action_62 (16) = happyGoto action_19
action_62 (17) = happyGoto action_20
action_62 (18) = happyGoto action_21
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (24) = happyShift action_25
action_63 (37) = happyShift action_26
action_63 (38) = happyShift action_27
action_63 (53) = happyShift action_35
action_63 (63) = happyShift action_36
action_63 (67) = happyShift action_37
action_63 (68) = happyShift action_46
action_63 (15) = happyGoto action_76
action_63 (16) = happyGoto action_19
action_63 (17) = happyGoto action_20
action_63 (18) = happyGoto action_21
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (24) = happyShift action_25
action_64 (37) = happyShift action_26
action_64 (38) = happyShift action_27
action_64 (53) = happyShift action_35
action_64 (63) = happyShift action_36
action_64 (67) = happyShift action_37
action_64 (68) = happyShift action_46
action_64 (14) = happyGoto action_75
action_64 (15) = happyGoto action_18
action_64 (16) = happyGoto action_19
action_64 (17) = happyGoto action_20
action_64 (18) = happyGoto action_21
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (24) = happyShift action_25
action_65 (37) = happyShift action_26
action_65 (38) = happyShift action_27
action_65 (53) = happyShift action_35
action_65 (63) = happyShift action_36
action_65 (67) = happyShift action_37
action_65 (68) = happyShift action_46
action_65 (14) = happyGoto action_74
action_65 (15) = happyGoto action_18
action_65 (16) = happyGoto action_19
action_65 (17) = happyGoto action_20
action_65 (18) = happyGoto action_21
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (24) = happyShift action_25
action_66 (37) = happyShift action_26
action_66 (38) = happyShift action_27
action_66 (53) = happyShift action_35
action_66 (63) = happyShift action_36
action_66 (67) = happyShift action_37
action_66 (68) = happyShift action_46
action_66 (13) = happyGoto action_73
action_66 (14) = happyGoto action_17
action_66 (15) = happyGoto action_18
action_66 (16) = happyGoto action_19
action_66 (17) = happyGoto action_20
action_66 (18) = happyGoto action_21
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (24) = happyShift action_25
action_67 (37) = happyShift action_26
action_67 (38) = happyShift action_27
action_67 (53) = happyShift action_35
action_67 (63) = happyShift action_36
action_67 (67) = happyShift action_37
action_67 (68) = happyShift action_46
action_67 (12) = happyGoto action_72
action_67 (13) = happyGoto action_16
action_67 (14) = happyGoto action_17
action_67 (15) = happyGoto action_18
action_67 (16) = happyGoto action_19
action_67 (17) = happyGoto action_20
action_67 (18) = happyGoto action_21
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_21

action_69 _ = happyReduce_22

action_70 _ = happyReduce_3

action_71 _ = happyReduce_2

action_72 (65) = happyShift action_66
action_72 _ = happyReduce_23

action_73 (57) = happyShift action_64
action_73 (58) = happyShift action_65
action_73 _ = happyReduce_25

action_74 (59) = happyShift action_60
action_74 (60) = happyShift action_61
action_74 (61) = happyShift action_62
action_74 (62) = happyShift action_63
action_74 _ = happyReduce_28

action_75 (59) = happyShift action_60
action_75 (60) = happyShift action_61
action_75 (61) = happyShift action_62
action_75 (62) = happyShift action_63
action_75 _ = happyReduce_27

action_76 (30) = happyShift action_58
action_76 (31) = happyShift action_59
action_76 _ = happyReduce_31

action_77 (30) = happyShift action_58
action_77 (31) = happyShift action_59
action_77 _ = happyReduce_33

action_78 (30) = happyShift action_58
action_78 (31) = happyShift action_59
action_78 _ = happyReduce_30

action_79 (30) = happyShift action_58
action_79 (31) = happyShift action_59
action_79 _ = happyReduce_32

action_80 (32) = happyShift action_55
action_80 (33) = happyShift action_56
action_80 (34) = happyShift action_57
action_80 _ = happyReduce_36

action_81 (32) = happyShift action_55
action_81 (33) = happyShift action_56
action_81 (34) = happyShift action_57
action_81 _ = happyReduce_35

action_82 _ = happyReduce_40

action_83 _ = happyReduce_39

action_84 _ = happyReduce_38

action_85 (54) = happyShift action_109
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (54) = happyShift action_108
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_12

action_88 (27) = happyShift action_104
action_88 (28) = happyShift action_105
action_88 (29) = happyShift action_106
action_88 (19) = happyGoto action_107
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (27) = happyShift action_104
action_89 (28) = happyShift action_105
action_89 (29) = happyShift action_106
action_89 (19) = happyGoto action_103
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (54) = happyShift action_102
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_55

action_92 _ = happyReduce_56

action_93 (54) = happyShift action_101
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_48

action_95 _ = happyReduce_20

action_96 _ = happyReduce_19

action_97 _ = happyReduce_18

action_98 _ = happyReduce_17

action_99 _ = happyReduce_16

action_100 _ = happyReduce_15

action_101 (24) = happyShift action_25
action_101 (37) = happyShift action_26
action_101 (38) = happyShift action_27
action_101 (39) = happyShift action_28
action_101 (40) = happyShift action_29
action_101 (41) = happyShift action_30
action_101 (42) = happyShift action_31
action_101 (43) = happyShift action_32
action_101 (50) = happyShift action_33
action_101 (51) = happyShift action_34
action_101 (53) = happyShift action_35
action_101 (55) = happyShift action_8
action_101 (63) = happyShift action_36
action_101 (67) = happyShift action_37
action_101 (68) = happyShift action_38
action_101 (5) = happyGoto action_91
action_101 (7) = happyGoto action_92
action_101 (8) = happyGoto action_11
action_101 (9) = happyGoto action_12
action_101 (10) = happyGoto action_13
action_101 (11) = happyGoto action_14
action_101 (12) = happyGoto action_15
action_101 (13) = happyGoto action_16
action_101 (14) = happyGoto action_17
action_101 (15) = happyGoto action_18
action_101 (16) = happyGoto action_19
action_101 (17) = happyGoto action_20
action_101 (18) = happyGoto action_21
action_101 (20) = happyGoto action_22
action_101 (21) = happyGoto action_113
action_101 (22) = happyGoto action_23
action_101 (23) = happyGoto action_24
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (55) = happyShift action_8
action_102 (5) = happyGoto action_112
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (44) = happyShift action_111
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_50

action_105 _ = happyReduce_51

action_106 _ = happyReduce_52

action_107 (44) = happyShift action_110
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_14

action_109 _ = happyReduce_13

action_110 (24) = happyShift action_25
action_110 (37) = happyShift action_26
action_110 (38) = happyShift action_27
action_110 (39) = happyShift action_28
action_110 (40) = happyShift action_29
action_110 (41) = happyShift action_30
action_110 (53) = happyShift action_35
action_110 (63) = happyShift action_36
action_110 (67) = happyShift action_37
action_110 (68) = happyShift action_46
action_110 (9) = happyGoto action_116
action_110 (11) = happyGoto action_14
action_110 (12) = happyGoto action_15
action_110 (13) = happyGoto action_16
action_110 (14) = happyGoto action_17
action_110 (15) = happyGoto action_18
action_110 (16) = happyGoto action_19
action_110 (17) = happyGoto action_20
action_110 (18) = happyGoto action_21
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (24) = happyShift action_25
action_111 (37) = happyShift action_26
action_111 (38) = happyShift action_27
action_111 (39) = happyShift action_28
action_111 (40) = happyShift action_29
action_111 (41) = happyShift action_30
action_111 (53) = happyShift action_35
action_111 (63) = happyShift action_36
action_111 (67) = happyShift action_37
action_111 (68) = happyShift action_46
action_111 (9) = happyGoto action_115
action_111 (11) = happyGoto action_14
action_111 (12) = happyGoto action_15
action_111 (13) = happyGoto action_16
action_111 (14) = happyGoto action_17
action_111 (15) = happyGoto action_18
action_111 (16) = happyGoto action_19
action_111 (17) = happyGoto action_20
action_111 (18) = happyGoto action_21
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_59

action_113 (52) = happyShift action_114
action_113 _ = happyReduce_58

action_114 (24) = happyShift action_25
action_114 (37) = happyShift action_26
action_114 (38) = happyShift action_27
action_114 (39) = happyShift action_28
action_114 (40) = happyShift action_29
action_114 (41) = happyShift action_30
action_114 (42) = happyShift action_31
action_114 (43) = happyShift action_32
action_114 (50) = happyShift action_33
action_114 (51) = happyShift action_34
action_114 (53) = happyShift action_35
action_114 (55) = happyShift action_8
action_114 (63) = happyShift action_36
action_114 (67) = happyShift action_37
action_114 (68) = happyShift action_38
action_114 (5) = happyGoto action_91
action_114 (7) = happyGoto action_92
action_114 (8) = happyGoto action_11
action_114 (9) = happyGoto action_12
action_114 (10) = happyGoto action_13
action_114 (11) = happyGoto action_14
action_114 (12) = happyGoto action_15
action_114 (13) = happyGoto action_16
action_114 (14) = happyGoto action_17
action_114 (15) = happyGoto action_18
action_114 (16) = happyGoto action_19
action_114 (17) = happyGoto action_20
action_114 (18) = happyGoto action_21
action_114 (20) = happyGoto action_22
action_114 (21) = happyGoto action_117
action_114 (22) = happyGoto action_23
action_114 (23) = happyGoto action_24
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_53

action_116 _ = happyReduce_54

action_117 _ = happyReduce_57

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
happyReduction_5 (HappyAbsSyn20  happy_var_1)
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
happyReduction_7 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn23  happy_var_1)
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
happyReduction_10 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (ExprStmt happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  9 happyReduction_12
happyReduction_12 _
	_
	_
	 =  HappyAbsSyn9
		 (Readln
	)

happyReduce_13 = happyReduce 4 9 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 9 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Println happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Add (Var happy_var_1) happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Sub (Var happy_var_1) happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Mult (Var happy_var_1) happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Div (Var happy_var_1) happy_var_3)
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  10 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) (Mod (Var happy_var_1) happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  10 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (Incr happy_var_1
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  10 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (Decr happy_var_1
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  12 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  13 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Less happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (LessEq happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  14 happyReduction_33
happyReduction_33 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  14 happyReduction_34
happyReduction_34 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  15 happyReduction_35
happyReduction_35 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Add happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  16 happyReduction_41
happyReduction_41 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  17 happyReduction_42
happyReduction_42 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  17 happyReduction_43
happyReduction_43 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  18 happyReduction_44
happyReduction_44 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn18
		 (Num happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  18 happyReduction_45
happyReduction_45 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn18
		 (Var happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  18 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn18
		 (Bool True
	)

happyReduce_47 = happySpecReduce_1  18 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn18
		 (Bool False
	)

happyReduce_48 = happySpecReduce_3  18 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  18 happyReduction_49
happyReduction_49 (HappyTerminal (TString happy_var_1))
	 =  HappyAbsSyn18
		 (String happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  19 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn19
		 (TyInt
	)

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn19
		 (TyBool
	)

happyReduce_52 = happySpecReduce_1  19 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn19
		 (TyString
	)

happyReduce_53 = happyReduce 6 20 happyReduction_53
happyReduction_53 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (Decl happy_var_4 [Assign (Var happy_var_2) happy_var_6]
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 6 20 happyReduction_54
happyReduction_54 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (Decl happy_var_4 [Assign (Val happy_var_2) happy_var_6]
	) `HappyStk` happyRest

happyReduce_55 = happySpecReduce_1  21 happyReduction_55
happyReduction_55 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  21 happyReduction_56
happyReduction_56 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happyReduce 7 22 happyReduction_57
happyReduction_57 ((HappyAbsSyn21  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 5 22 happyReduction_58
happyReduction_58 ((HappyAbsSyn21  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 5 23 happyReduction_59
happyReduction_59 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 69 69 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TNum happy_dollar_dollar -> cont 24;
	TFun -> cont 25;
	TMain -> cont 26;
	TIntDec -> cont 27;
	TBoolDec -> cont 28;
	TStringDec -> cont 29;
	TPlus -> cont 30;
	TMinus -> cont 31;
	TMult -> cont 32;
	TDiv -> cont 33;
	TMod -> cont 34;
	TIncr -> cont 35;
	TDecr -> cont 36;
	TTrue -> cont 37;
	TFalse -> cont 38;
	TPrint -> cont 39;
	TPrintln -> cont 40;
	TReadln -> cont 41;
	TVal -> cont 42;
	TVar -> cont 43;
	TAssign -> cont 44;
	TPlusAssign -> cont 45;
	TMinusAssign -> cont 46;
	TMultAssign -> cont 47;
	TDivAssign -> cont 48;
	TModAssign -> cont 49;
	TWhile -> cont 50;
	TIf -> cont 51;
	TElse -> cont 52;
	TLParen -> cont 53;
	TRParen -> cont 54;
	TLBraces -> cont 55;
	TRBraces -> cont 56;
	TEqual -> cont 57;
	TDifferent -> cont 58;
	TGreater -> cont 59;
	TLess -> cont 60;
	TGreaterEq -> cont 61;
	TLessEq -> cont 62;
	TNot -> cont 63;
	TOr -> cont 64;
	TAnd -> cont 65;
	TColon -> cont 66;
	TString happy_dollar_dollar -> cont 67;
	TId happy_dollar_dollar -> cont 68;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 69 tk tks = happyError' (tks, explist)
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
