{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,164) ([16384,0,0,32768,0,0,0,2,0,0,0,0,0,0,32,0,0,128,0,0,512,0,0,0,0,32800,735,136,0,8192,0,128,2942,544,63488,0,385,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,64,0,0,0,32,0,0,64,0,512,0,0,1024,0,128,2054,544,256,4108,1088,0,512,0,1024,16432,4352,0,0,0,0,0,0,0,31,12324,16384,768,4100,32769,1536,8200,2,0,1,0,0,2,0,0,128,0,24584,128,34,49168,256,68,32800,513,136,64,1027,272,128,2054,544,256,4108,1088,512,8216,2176,1024,16432,4352,2048,32864,8704,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,256,4108,1088,512,8216,2176,57344,32771,1540,49152,7,3081,0,0,0,0,31,12320,0,0,16,0,0,32,0,248,33024,1,496,512,3,0,0,0,0,0,0,0,128,0,0,2048,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","program","block","stmt_list","stmt","expr","decl_stmt","assign_stmt","if_stmt","while_stmt","expr_stmt","num","\"fun\"","\"main\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"++\"","\"--\"","\"true\"","\"false\"","\"print\"","\"readln\"","\"val\"","\"var\"","\"=\"","\"while\"","\"if\"","\"else\"","\"(\"","\")\"","\"{\"","\"}\"","\"==\"","\"!=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"!\"","\"||\"","\"&&\"","string","id","%eof"]
        bit_start = st Prelude.* 49
        bit_end = (st Prelude.+ 1) Prelude.* 49
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..48]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (15) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (49) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (34) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (35) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (36) = happyShift action_8
action_6 (5) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_1

action_8 (14) = happyShift action_17
action_8 (24) = happyShift action_18
action_8 (25) = happyShift action_19
action_8 (26) = happyShift action_20
action_8 (27) = happyShift action_21
action_8 (28) = happyShift action_22
action_8 (29) = happyShift action_23
action_8 (31) = happyShift action_24
action_8 (32) = happyShift action_25
action_8 (34) = happyShift action_26
action_8 (44) = happyShift action_27
action_8 (48) = happyShift action_28
action_8 (6) = happyGoto action_9
action_8 (7) = happyGoto action_10
action_8 (8) = happyGoto action_11
action_8 (9) = happyGoto action_12
action_8 (10) = happyGoto action_13
action_8 (11) = happyGoto action_14
action_8 (12) = happyGoto action_15
action_8 (13) = happyGoto action_16
action_8 _ = happyReduce_3

action_9 (37) = happyShift action_48
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (14) = happyShift action_17
action_10 (24) = happyShift action_18
action_10 (25) = happyShift action_19
action_10 (26) = happyShift action_20
action_10 (27) = happyShift action_21
action_10 (28) = happyShift action_22
action_10 (29) = happyShift action_23
action_10 (31) = happyShift action_24
action_10 (32) = happyShift action_25
action_10 (34) = happyShift action_26
action_10 (44) = happyShift action_27
action_10 (48) = happyShift action_28
action_10 (6) = happyGoto action_47
action_10 (7) = happyGoto action_10
action_10 (8) = happyGoto action_11
action_10 (9) = happyGoto action_12
action_10 (10) = happyGoto action_13
action_10 (11) = happyGoto action_14
action_10 (12) = happyGoto action_15
action_10 (13) = happyGoto action_16
action_10 _ = happyReduce_3

action_11 (17) = happyShift action_39
action_11 (18) = happyShift action_40
action_11 (19) = happyShift action_41
action_11 (20) = happyShift action_42
action_11 (21) = happyShift action_43
action_11 (38) = happyShift action_44
action_11 (45) = happyShift action_45
action_11 (46) = happyShift action_46
action_11 _ = happyReduce_32

action_12 _ = happyReduce_5

action_13 _ = happyReduce_6

action_14 _ = happyReduce_7

action_15 _ = happyReduce_8

action_16 _ = happyReduce_9

action_17 _ = happyReduce_22

action_18 _ = happyReduce_24

action_19 _ = happyReduce_25

action_20 (34) = happyShift action_38
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (34) = happyShift action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (48) = happyShift action_36
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (48) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (34) = happyShift action_34
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (34) = happyShift action_33
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (14) = happyShift action_17
action_26 (24) = happyShift action_18
action_26 (25) = happyShift action_19
action_26 (34) = happyShift action_26
action_26 (44) = happyShift action_27
action_26 (48) = happyShift action_31
action_26 (8) = happyGoto action_32
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_17
action_27 (24) = happyShift action_18
action_27 (25) = happyShift action_19
action_27 (34) = happyShift action_26
action_27 (44) = happyShift action_27
action_27 (48) = happyShift action_31
action_27 (8) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (30) = happyShift action_29
action_28 _ = happyReduce_23

action_29 (14) = happyShift action_17
action_29 (24) = happyShift action_18
action_29 (25) = happyShift action_19
action_29 (34) = happyShift action_26
action_29 (44) = happyShift action_27
action_29 (48) = happyShift action_31
action_29 (8) = happyGoto action_64
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (17) = happyShift action_39
action_30 (18) = happyShift action_40
action_30 (19) = happyShift action_41
action_30 (20) = happyShift action_42
action_30 (21) = happyShift action_43
action_30 (38) = happyShift action_44
action_30 (45) = happyShift action_45
action_30 (46) = happyShift action_46
action_30 _ = happyReduce_20

action_31 _ = happyReduce_23

action_32 (17) = happyShift action_39
action_32 (18) = happyShift action_40
action_32 (19) = happyShift action_41
action_32 (20) = happyShift action_42
action_32 (21) = happyShift action_43
action_32 (35) = happyShift action_63
action_32 (38) = happyShift action_44
action_32 (45) = happyShift action_45
action_32 (46) = happyShift action_46
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_17
action_33 (24) = happyShift action_18
action_33 (25) = happyShift action_19
action_33 (34) = happyShift action_26
action_33 (44) = happyShift action_27
action_33 (48) = happyShift action_31
action_33 (8) = happyGoto action_62
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_17
action_34 (24) = happyShift action_18
action_34 (25) = happyShift action_19
action_34 (34) = happyShift action_26
action_34 (44) = happyShift action_27
action_34 (48) = happyShift action_31
action_34 (8) = happyGoto action_61
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (30) = happyShift action_60
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (30) = happyShift action_59
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (35) = happyShift action_58
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_17
action_38 (24) = happyShift action_18
action_38 (25) = happyShift action_19
action_38 (34) = happyShift action_26
action_38 (44) = happyShift action_27
action_38 (48) = happyShift action_31
action_38 (8) = happyGoto action_11
action_38 (13) = happyGoto action_57
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_17
action_39 (24) = happyShift action_18
action_39 (25) = happyShift action_19
action_39 (34) = happyShift action_26
action_39 (44) = happyShift action_27
action_39 (48) = happyShift action_31
action_39 (8) = happyGoto action_56
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_17
action_40 (24) = happyShift action_18
action_40 (25) = happyShift action_19
action_40 (34) = happyShift action_26
action_40 (44) = happyShift action_27
action_40 (48) = happyShift action_31
action_40 (8) = happyGoto action_55
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (14) = happyShift action_17
action_41 (24) = happyShift action_18
action_41 (25) = happyShift action_19
action_41 (34) = happyShift action_26
action_41 (44) = happyShift action_27
action_41 (48) = happyShift action_31
action_41 (8) = happyGoto action_54
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (14) = happyShift action_17
action_42 (24) = happyShift action_18
action_42 (25) = happyShift action_19
action_42 (34) = happyShift action_26
action_42 (44) = happyShift action_27
action_42 (48) = happyShift action_31
action_42 (8) = happyGoto action_53
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (14) = happyShift action_17
action_43 (24) = happyShift action_18
action_43 (25) = happyShift action_19
action_43 (34) = happyShift action_26
action_43 (44) = happyShift action_27
action_43 (48) = happyShift action_31
action_43 (8) = happyGoto action_52
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (14) = happyShift action_17
action_44 (24) = happyShift action_18
action_44 (25) = happyShift action_19
action_44 (34) = happyShift action_26
action_44 (44) = happyShift action_27
action_44 (48) = happyShift action_31
action_44 (8) = happyGoto action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (14) = happyShift action_17
action_45 (24) = happyShift action_18
action_45 (25) = happyShift action_19
action_45 (34) = happyShift action_26
action_45 (44) = happyShift action_27
action_45 (48) = happyShift action_31
action_45 (8) = happyGoto action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (14) = happyShift action_17
action_46 (24) = happyShift action_18
action_46 (25) = happyShift action_19
action_46 (34) = happyShift action_26
action_46 (44) = happyShift action_27
action_46 (48) = happyShift action_31
action_46 (8) = happyGoto action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_4

action_48 _ = happyReduce_2

action_49 (17) = happyShift action_39
action_49 (18) = happyShift action_40
action_49 (19) = happyShift action_41
action_49 (20) = happyShift action_42
action_49 (21) = happyShift action_43
action_49 _ = happyReduce_17

action_50 (17) = happyShift action_39
action_50 (18) = happyShift action_40
action_50 (19) = happyShift action_41
action_50 (20) = happyShift action_42
action_50 (21) = happyShift action_43
action_50 (38) = happyFail []
action_50 (45) = happyFail []
action_50 (46) = happyShift action_46
action_50 _ = happyReduce_18

action_51 (17) = happyShift action_39
action_51 (18) = happyShift action_40
action_51 (19) = happyShift action_41
action_51 (20) = happyShift action_42
action_51 (21) = happyShift action_43
action_51 (38) = happyFail []
action_51 (45) = happyFail []
action_51 (46) = happyShift action_46
action_51 _ = happyReduce_19

action_52 (17) = happyShift action_39
action_52 (18) = happyShift action_40
action_52 (19) = happyShift action_41
action_52 (20) = happyShift action_42
action_52 (21) = happyShift action_43
action_52 (38) = happyShift action_44
action_52 (45) = happyShift action_45
action_52 (46) = happyShift action_46
action_52 _ = happyReduce_16

action_53 (17) = happyShift action_39
action_53 (18) = happyShift action_40
action_53 (19) = happyShift action_41
action_53 (20) = happyShift action_42
action_53 (21) = happyShift action_43
action_53 (38) = happyShift action_44
action_53 (45) = happyShift action_45
action_53 (46) = happyShift action_46
action_53 _ = happyReduce_15

action_54 (17) = happyShift action_39
action_54 (18) = happyShift action_40
action_54 (19) = happyShift action_41
action_54 (20) = happyShift action_42
action_54 (21) = happyShift action_43
action_54 (38) = happyShift action_44
action_54 (45) = happyShift action_45
action_54 (46) = happyShift action_46
action_54 _ = happyReduce_14

action_55 (17) = happyShift action_39
action_55 (18) = happyShift action_40
action_55 (19) = happyShift action_41
action_55 (20) = happyShift action_42
action_55 (21) = happyShift action_43
action_55 (38) = happyShift action_44
action_55 (45) = happyShift action_45
action_55 (46) = happyShift action_46
action_55 _ = happyReduce_13

action_56 (17) = happyShift action_39
action_56 (18) = happyShift action_40
action_56 (19) = happyShift action_41
action_56 (20) = happyShift action_42
action_56 (21) = happyShift action_43
action_56 (38) = happyShift action_44
action_56 (45) = happyShift action_45
action_56 (46) = happyShift action_46
action_56 _ = happyReduce_12

action_57 (35) = happyShift action_69
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_11

action_59 (14) = happyShift action_17
action_59 (24) = happyShift action_18
action_59 (25) = happyShift action_19
action_59 (34) = happyShift action_26
action_59 (44) = happyShift action_27
action_59 (48) = happyShift action_31
action_59 (8) = happyGoto action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (14) = happyShift action_17
action_60 (24) = happyShift action_18
action_60 (25) = happyShift action_19
action_60 (34) = happyShift action_26
action_60 (44) = happyShift action_27
action_60 (48) = happyShift action_31
action_60 (8) = happyGoto action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (17) = happyShift action_39
action_61 (18) = happyShift action_40
action_61 (19) = happyShift action_41
action_61 (20) = happyShift action_42
action_61 (21) = happyShift action_43
action_61 (35) = happyShift action_66
action_61 (38) = happyShift action_44
action_61 (45) = happyShift action_45
action_61 (46) = happyShift action_46
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (17) = happyShift action_39
action_62 (18) = happyShift action_40
action_62 (19) = happyShift action_41
action_62 (20) = happyShift action_42
action_62 (21) = happyShift action_43
action_62 (35) = happyShift action_65
action_62 (38) = happyShift action_44
action_62 (45) = happyShift action_45
action_62 (46) = happyShift action_46
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_21

action_64 (17) = happyShift action_39
action_64 (18) = happyShift action_40
action_64 (19) = happyShift action_41
action_64 (20) = happyShift action_42
action_64 (21) = happyShift action_43
action_64 (38) = happyShift action_44
action_64 (45) = happyShift action_45
action_64 (46) = happyShift action_46
action_64 _ = happyReduce_28

action_65 (36) = happyShift action_8
action_65 (5) = happyGoto action_71
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (36) = happyShift action_8
action_66 (5) = happyGoto action_70
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (17) = happyShift action_39
action_67 (18) = happyShift action_40
action_67 (19) = happyShift action_41
action_67 (20) = happyShift action_42
action_67 (21) = happyShift action_43
action_67 (38) = happyShift action_44
action_67 (45) = happyShift action_45
action_67 (46) = happyShift action_46
action_67 _ = happyReduce_26

action_68 (17) = happyShift action_39
action_68 (18) = happyShift action_40
action_68 (19) = happyShift action_41
action_68 (20) = happyShift action_42
action_68 (21) = happyShift action_43
action_68 (38) = happyShift action_44
action_68 (45) = happyShift action_45
action_68 (46) = happyShift action_46
action_68 _ = happyReduce_27

action_69 _ = happyReduce_10

action_70 _ = happyReduce_31

action_71 (33) = happyShift action_72
action_71 _ = happyReduce_29

action_72 (36) = happyShift action_8
action_72 (5) = happyGoto action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_30

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
happyReduction_5 (HappyAbsSyn9  happy_var_1)
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
happyReduction_7 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
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

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Div happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (And happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Or happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Not happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyTerminal (TNum happy_var_1))
	 =  HappyAbsSyn8
		 (Num happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  8 happyReduction_23
happyReduction_23 (HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn8
		 (Var happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn8
		 (Bool True
	)

happyReduce_25 = happySpecReduce_1  8 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn8
		 (Bool False
	)

happyReduce_26 = happyReduce 4 9 happyReduction_26
happyReduction_26 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 9 happyReduction_27
happyReduction_27 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Decl TyInt [Assign (Var happy_var_2) happy_var_4]
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TId happy_var_1))
	 =  HappyAbsSyn10
		 (Assign (Var happy_var_1) happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 5 11 happyReduction_29
happyReduction_29 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 7 11 happyReduction_30
happyReduction_30 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 5 12 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  13 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn13
		 (parseError :: [Token] -> a
parseError toks = error "parse error"
	)

happyNewToken action sts stk [] =
	action 49 49 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TNum happy_dollar_dollar -> cont 14;
	TFun -> cont 15;
	TMain -> cont 16;
	TPlus -> cont 17;
	TMinus -> cont 18;
	TMult -> cont 19;
	TDiv -> cont 20;
	TMod -> cont 21;
	TIncr -> cont 22;
	TDecr -> cont 23;
	TTrue -> cont 24;
	TFalse -> cont 25;
	TPrint -> cont 26;
	TReadln -> cont 27;
	TVal -> cont 28;
	TVar -> cont 29;
	TAssign -> cont 30;
	TWhile -> cont 31;
	TIf -> cont 32;
	TElse -> cont 33;
	TLParen -> cont 34;
	TRParen -> cont 35;
	TLBraces -> cont 36;
	TRBraces -> cont 37;
	TEqual -> cont 38;
	TDifferent -> cont 39;
	TGreater -> cont 40;
	TLess -> cont 41;
	TGreaterEq -> cont 42;
	TLessEq -> cont 43;
	TNot -> cont 44;
	TOr -> cont 45;
	TAnd -> cont 46;
	TString happy_dollar_dollar -> cont 47;
	TId happy_dollar_dollar -> cont 48;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 49 tk tks = happyError' (tks, explist)
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
