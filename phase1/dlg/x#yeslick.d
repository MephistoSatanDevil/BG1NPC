APPEND ~%YESLICK_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#YEPC1","LOCALS",2)~ THEN BEGIN YEPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#YEPC1","LOCALS",3)~ GOTO YEPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#YEPC1","LOCALS",3)~ GOTO YEPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#YEPC1","LOCALS",3)~ GOTO YEPC1.3
END

IF ~~ THEN BEGIN YEPC1.1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN YEPC1.2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN YEPC1.3
SAY @6
IF ~~ THEN REPLY @7 GOTO YEPC1.1
IF ~~ THEN REPLY @8 GOTO YEPC1.2
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#YEPC2","LOCALS",2)~ THEN BEGIN YEPC2
SAY @9
IF ~~ THEN REPLY @10 DO ~SetGlobal("X#YEPC2","LOCALS",3)~ GOTO YEPC2.1
IF ~~ THEN REPLY @11 DO ~SetGlobal("X#YEPC2","LOCALS",3)~ GOTO YEPC2.2
IF ~~ THEN REPLY @12 DO ~SetGlobal("X#YEPC2","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN YEPC2.1
SAY @13
IF ~~ THEN REPLY @14 GOTO YEPC2.3
IF ~~ THEN REPLY @15 GOTO YEPC2.4
END

IF ~~ THEN BEGIN YEPC2.2
SAY @16
IF ~~ THEN REPLY @14 GOTO YEPC2.3
IF ~~ THEN REPLY @15 GOTO YEPC2.4
END

IF ~~ THEN BEGIN YEPC2.3
SAY @17
IF ~~ THEN REPLY @18 GOTO YEPC2.4
IF ~~ THEN REPLY @19 GOTO YEPC2.4
IF ~~ THEN REPLY @20 GOTO YEPC2.4
END

IF ~~ THEN BEGIN YEPC2.4
SAY @21
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#YEPC5","LOCALS",2)~ THEN BEGIN YEPC5
SAY @22
IF ~!Race(Player1,DWARF)~ THEN REPLY @23 DO ~SetGlobal("X#YEPC5","LOCALS",3)~ GOTO YEPC5.2NOTDWARF
IF ~Race(Player1,DWARF)~ THEN REPLY @23 DO ~SetGlobal("X#YEPC5","LOCALS",3)~ GOTO YEPC5.2DWARF
IF ~~ THEN REPLY @24 DO ~SetGlobal("X#YEPC5","LOCALS",3)~ GOTO YEPC5.3
IF ~~ THEN REPLY @25 DO ~SetGlobal("X#YEPC5","LOCALS",3)~ GOTO YEPC5.5
IF ~~ THEN REPLY @26 DO ~SetGlobal("X#YEPC5","LOCALS",3)~ GOTO YEPC5.8
IF ~~ THEN REPLY @27 DO ~SetGlobal("X#YEPC5","LOCALS",3)~ GOTO YEPC5.1
END

IF ~~ THEN BEGIN YEPC5.1
SAY @28
IF ~!Race(Player1,DWARF)~ THEN REPLY @29 GOTO YEPC5.2NOTDWARF
IF ~Race(Player1,DWARF)~ THEN REPLY @29 GOTO YEPC5.2DWARF
IF ~~ THEN REPLY @30 GOTO YEPC5.3
IF ~~ THEN REPLY @31 GOTO YEPC5.4
IF ~~ THEN REPLY @32 GOTO YEPC5.5
END

IF ~~ THEN BEGIN YEPC5.2DWARF
SAY @33
= @34
IF ~~ THEN REPLY @35 GOTO YEPC5.5
IF ~~ THEN REPLY @36 GOTO YEPC5.9
IF ~~ THEN REPLY @37 GOTO YEPC5.10
IF ~~ THEN REPLY @38 GOTO YEPC5.3
END

IF ~~ THEN BEGIN YEPC5.2NOTDWARF
SAY @33
IF ~~ THEN REPLY @38 GOTO YEPC5.3
IF ~~ THEN REPLY @39 GOTO YEPC5.4
IF ~~ THEN REPLY @40 GOTO YEPC5.5
END

IF ~~ THEN BEGIN YEPC5.3
SAY @41
IF ~~ THEN REPLY @42 GOTO YEPC5.4
IF ~~ THEN REPLY @43 GOTO YEPC5.6
IF ~~ THEN REPLY @44 GOTO YEPC5.7
END

IF ~~ THEN BEGIN YEPC5.4
SAY @45
IF ~~ THEN REPLY @46 GOTO YEPC5.5
IF ~~ THEN REPLY @47 GOTO YEPC5.7
END

IF ~~ THEN BEGIN YEPC5.5
SAY @48
IF ~~ THEN REPLY @49 GOTO YEPC5.6
IF ~~ THEN REPLY @50 GOTO YEPC5.8
IF ~~ THEN REPLY @51 GOTO YEPC5.5.1
END

IF ~~ THEN BEGIN YEPC5.5.1
SAY @52
IF ~~ THEN REPLY @53 GOTO YEPC5.6
IF ~~ THEN REPLY @54 GOTO YEPC5.7
IF ~~ THEN REPLY @55 GOTO YEPC5.8
END

IF ~~ THEN BEGIN YEPC5.6
SAY @56
IF ~~ THEN REPLY @57 GOTO YEPC5.6.1
IF ~~ THEN REPLY @58 GOTO YEPC5.6.1
IF ~~ THEN REPLY @59 GOTO YEPC5.6.1
END

IF ~~ THEN BEGIN YEPC5.6.1
SAY @60
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN YEPC5.7
SAY @61
IF ~~ THEN REPLY @62 GOTO YEPC5.7.1
IF ~~ THEN REPLY @63 GOTO YEPC5.7.1
IF ~~ THEN REPLY @64 EXIT
IF ~~ THEN REPLY @65 GOTO YEPC5.8
END

IF ~~ THEN BEGIN YEPC5.7.1
SAY @66
IF ~~ THEN REPLY @67 EXIT
IF ~~ THEN REPLY @68 EXIT
IF ~~ THEN REPLY @69 GOTO YEPC5.7.2
END

IF ~~ THEN BEGIN YEPC5.7.2
SAY @70
IF ~~ THEN REPLY @71 EXIT
IF ~~ THEN REPLY @72 EXIT
IF ~~ THEN REPLY @73 GOTO YEPC5.8
IF ~~ THEN REPLY @74 GOTO YEPC5.7.3
END

IF ~~ THEN BEGIN YEPC5.7.3
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN YEPC5.8
SAY @76
IF ~~ THEN REPLY @77 EXIT
IF ~~ THEN REPLY @78 EXIT
IF ~ReputationGT(Player1,14)~ THEN REPLY @79 GOTO YEPC5.8.1HIGHREP
IF ~ReputationGT(Player1,6) ReputationLT(Player1,15)~ THEN REPLY @79 GOTO YEPC5.8.1MEDREP
IF ~ReputationLT(Player1,7)~ THEN REPLY @79 GOTO YEPC5.8.1LOWREP
END

IF ~~ THEN BEGIN YEPC5.8.1HIGHREP
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN YEPC5.8.1MEDREP
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN YEPC5.8.1LOWREP
SAY @82
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN YEPC5.9
SAY @83
IF ~~ THEN REPLY @84 GOTO YEPC5.7
IF ~~ THEN REPLY @85 GOTO YEPC5.7
IF ~~ THEN REPLY @86 GOTO YEPC5.8
END

IF ~~ THEN BEGIN YEPC5.10
SAY @87
IF ~~ THEN REPLY @88 GOTO YEPC5.9
IF ~~ THEN REPLY @89 GOTO YEPC5.10.1
END

IF ~~ THEN BEGIN YEPC5.10.1
SAY @90
IF ~~ THEN REPLY @91 GOTO YEPC5.10.2
IF ~~ THEN REPLY @92 GOTO YEPC5.10.2
IF ~~ THEN REPLY @93 GOTO YEPC5.10.2
IF ~~ THEN REPLY @94 GOTO YEPC5.8
END

IF ~~ THEN BEGIN YEPC5.10.2
SAY @95
IF ~~ THEN EXIT
END
END

/* Area Script */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#YECO2","LOCALS",2)~ THEN ~%YESLICK_JOINED%~ YECO2
@96
DO ~SetGlobal("X#YECO2","LOCALS",3)~
== ~%CORAN_BANTER%~ @97
== ~%YESLICK_BANTER%~ @98
== ~%CORAN_BANTER%~ @99
== ~%YESLICK_BANTER%~ @100
== ~%CORAN_BANTER%~ @101
EXIT

/* AT REST */
/* Imoen's bedtime story */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#YEIM1","LOCALS",1)~ THEN ~%YESLICK_JOINED%~ YEIM1
@102
DO ~SetGlobal("X#YEIM1","LOCALS",2)~
== ~%IMOEN_BANTER%~ @103
== ~%YESLICK_BANTER%~ @104
== ~%IMOEN_BANTER%~ @105
== ~%YESLICK_BANTER%~ @106
== ~%IMOEN_BANTER%~ @107
== ~%YESLICK_BANTER%~ @108
== ~%IMOEN_BANTER%~ @109
== ~%YESLICK_BANTER%~ @110
= @111
= @112
= @113
= @114
== ~%IMOEN_BANTER%~ @115
DO ~RestParty()~
EXIT

CHAIN IF WEIGHT #-2 ~Global("X#YEIM2","LOCALS",1)~ THEN ~%YESLICK_JOINED%~ YEIM2
@116
DO ~SetGlobal("X#YEIM2","LOCALS",2)~
== ~%IMOEN_BANTER%~ @117
== ~%YESLICK_BANTER%~ @118
== ~%IMOEN_BANTER%~ @119
= @120
== ~%YESLICK_BANTER%~ @121
= @122
== ~%IMOEN_BANTER%~ @123
== ~%YESLICK_BANTER%~ @124
== ~%IMOEN_BANTER%~ @125
= @126
== ~%YESLICK_BANTER%~ @127
= @128
== ~%IMOEN_BANTER%~ @129
== ~%YESLICK_BANTER%~ @130
EXIT

CHAIN IF WEIGHT #-2 ~Global("X#YEKA4","GLOBAL",1)~ THEN ~%YESLICK_JOINED%~ YEKA4starts
@131
DO ~SetGlobal("X#YEKA4","GLOBAL",2)~
== ~%KAGAIN_BANTER%~ @132
END ~%YESLICK_BANTER%~ YEKA4PC

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#YEAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEAJ1
@133
DO ~SetGlobal("X#YEAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @134
== ~%YESLICK_BANTER%~ @135
== ~%AJANTIS_BANTER%~ @136
== ~%YESLICK_BANTER%~ @137
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#YEAL1","LOCALS",0) InParty("alora") !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(OUTDOOR)~ THEN ~%YESLICK_BANTER%~ YEAL1
@138
DO ~SetGlobal("X#YEAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @139
== ~%YESLICK_BANTER%~ @140
== ~%ALORA_BANTER%~ @141
== ~%YESLICK_BANTER%~ @142
== ~%ALORA_BANTER%~ @143
== ~%YESLICK_BANTER%~ @144
== ~%ALORA_BANTER%~ @145
== ~%YESLICK_BANTER%~ @146
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#YEBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEBR1
@147
DO ~SetGlobal("X#YEBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @148
== ~%YESLICK_BANTER%~ @149
== ~%BRANWEN_BANTER%~ @150
== ~%YESLICK_BANTER%~ @151
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @152
== ~%BRANWEN_BANTER%~ @153
== ~%YESLICK_BANTER%~ @154
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#YECO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YECO1
@155
DO ~SetGlobal("X#YECO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @156
== ~%YESLICK_BANTER%~ @157
== ~%CORAN_BANTER%~ @158
== ~%YESLICK_BANTER%~ @159
== ~%CORAN_BANTER%~ @160
== ~%YESLICK_BANTER%~ @161
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#YEDY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEDY1
@162
DO ~SetGlobal("X#YEDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @163
== ~%YESLICK_BANTER%~ @164
== ~%DYNAHEIR_BANTER%~ @165
== ~%YESLICK_BANTER%~ @166
== ~%DYNAHEIR_BANTER%~ @167
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @168
== ~%DYNAHEIR_BANTER%~ @169
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#YEED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEED1
@170
DO ~SetGlobal("X#YEED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @171
== ~%YESLICK_BANTER%~ @172
== ~%EDWIN_BANTER%~ @173
= @174
== ~%YESLICK_BANTER%~ @175
== ~%EDWIN_BANTER%~ @176
== ~%YESLICK_BANTER%~ @177
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#YEEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEEL1
@178
DO ~SetGlobal("X#YEEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @179
== ~%YESLICK_BANTER%~ @180
== ~%ELDOTH_BANTER%~ @181
== ~%YESLICK_BANTER%~ @182
== ~%ELDOTH_BANTER%~ @183
== ~%YESLICK_BANTER%~ @184
== ~%ELDOTH_BANTER%~ @185
= @186
== ~%YESLICK_BANTER%~ @187
== ~%ELDOTH_BANTER%~ @188
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#YEFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%YESLICK_BANTER%~ YEFA1
@189
DO ~SetGlobal("X#YEFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @190
== ~%YESLICK_BANTER%~ @191
== ~%FALDORN_BANTER%~ @192
== ~%YESLICK_BANTER%~ @193
== ~%FALDORN_BANTER%~ @194
== ~%YESLICK_BANTER%~ @195
== ~%FALDORN_BANTER%~ @196
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#YEGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEGA1
@197
DO ~SetGlobal("X#YEGA1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @198
== ~%GARRICK_BANTER%~ @199
== ~%YESLICK_BANTER%~ @200
== ~%GARRICK_BANTER%~ @201
== ~%YESLICK_BANTER%~ @202
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#YEGA2","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEGA2
@203
DO ~SetGlobal("X#YEGA2","LOCALS",1)~
== ~%GARRICK_BANTER%~ @204
== ~%YESLICK_BANTER%~ @205
== ~%GARRICK_BANTER%~ @206
== ~%YESLICK_BANTER%~ @207
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @208
== ~%GARRICK_BANTER%~ @209
== ~%YESLICK_BANTER%~ @210
== ~%GARRICK_BANTER%~ @211
== ~%YESLICK_BANTER%~ @212
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#YEJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEJA1
@213
DO ~SetGlobal("X#YEJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @214
== ~%YESLICK_BANTER%~ @215
== ~%JAHEIRA_BANTER%~ @216
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @217
== ~%JAHEIRA_BANTER%~ @218
== ~%YESLICK_BANTER%~ @219
== ~%JAHEIRA_BANTER%~ @220
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#YEKA1","GLOBAL",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEKA1
@221
DO ~SetGlobal("X#YEKA1","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ @222
== ~%YESLICK_BANTER%~ @223
== ~%KAGAIN_BANTER%~ @224
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#YEKA1","GLOBAL",1) Global("X#YEKA2","GLOBAL",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEKA2
@225
DO ~SetGlobal("X#YEKA2","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ @226
== ~%YESLICK_BANTER%~ @227
== ~%KAGAIN_BANTER%~ @228
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#YEKA2","GLOBAL",1) Global("X#YEKA3","GLOBAL",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEKA3
@229
DO ~SetGlobal("X#YEKA3","GLOBAL",1) SetGlobalTimer("X#YEKATIME","GLOBAL",7200)~
== ~%KAGAIN_BANTER%~ @230
== ~%YESLICK_BANTER%~ @231
== ~%KAGAIN_BANTER%~ @232
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#YEKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEKH1
@233
DO ~SetGlobal("X#YEKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @234
== ~%YESLICK_BANTER%~ @235
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @236
== ~%KHALID_BANTER%~ @237
== ~%YESLICK_BANTER%~ @238
= @239
== ~%KHALID_BANTER%~ @240
== ~%YESLICK_BANTER%~ @241
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#YEKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEKI1
@242
DO ~SetGlobal("X#YEKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @243
== ~%YESLICK_BANTER%~ @244
== ~%KIVAN_BANTER%~ @245
== ~%YESLICK_BANTER%~ @246
== ~%KIVAN_BANTER%~ @247
== ~%YESLICK_BANTER%~ @248
== ~%KIVAN_BANTER%~ @249
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#YEKI2","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEKI2
@250
DO ~SetGlobal("X#YEKI2","LOCALS",1)~
== ~%KIVAN_BANTER%~ @251
== ~%YESLICK_BANTER%~ @252
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @253
== ~%KIVAN_BANTER%~ @254
== ~%YESLICK_BANTER%~ @255
= @256
== ~%KIVAN_BANTER%~ @257
== ~%YESLICK_BANTER%~ @258
== ~%KIVAN_BANTER%~ @259
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#YEMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEMI1
@260
DO ~SetGlobal("X#YEMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @261
== ~%YESLICK_BANTER%~ @262
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @263
== ~%MINSC_BANTER%~ @264
== ~%YESLICK_BANTER%~ @265
== ~%MINSC_BANTER%~ @266
== ~%YESLICK_BANTER%~ @267
== ~%MINSC_BANTER%~ @268
== ~%YESLICK_BANTER%~ @269
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") InParty("xzar") Global("X#YEMO1","LOCALS",0) !See([ENEMY]) See("montaron") See("xzar") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEMO1
@270
DO ~SetGlobal("X#YEMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @271
== ~%YESLICK_BANTER%~ @272
== ~%MONTARON_BANTER%~ @273
== ~%YESLICK_BANTER%~ @274
== ~%MONTARON_BANTER%~ @275
== ~%YESLICK_BANTER%~ @276
== ~%MONTARON_BANTER%~ @277
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") InParty("xzar") Global("X#YEMO1","LOCALS",0) !See([ENEMY]) See("montaron") See("xzar") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEMO1
@270
DO ~SetGlobal("X#YEMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @278
== ~%YESLICK_BANTER%~ @272
== ~%MONTARON_BANTER%~ @279
== ~%YESLICK_BANTER%~ @274
== ~%MONTARON_BANTER%~ @275
== ~%YESLICK_BANTER%~ @276
== ~%MONTARON_BANTER%~ @277
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#YEQU1","LOCALS",0) CombatCounter(0) InParty("quayle") !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEQU1
@280
DO ~SetGlobal("X#YEQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @281
= @282
== ~%YESLICK_BANTER%~ @283
== ~%QUAYLE_BANTER%~ @284
= @285
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @286
== ~%YESLICK_BANTER%~ @287
== ~%QUAYLE_BANTER%~ @288
== ~%YESLICK_BANTER%~ @289
= @290
== ~%QUAYLE_BANTER%~ @291
== ~%YESLICK_BANTER%~ @292
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#YESA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YESA1
@293
DO ~SetGlobal("X#YESA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @294
== ~%YESLICK_BANTER%~ @295
== ~%SAFANA_BANTER%~ @296
== ~%YESLICK_BANTER%~ @297
== ~%SAFANA_BANTER%~ @298
== ~%YESLICK_BANTER%~ @299
== ~%SAFANA_BANTER%~ @300
== ~%YESLICK_BANTER%~ @301
== ~%SAFANA_BANTER%~ @302
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#YESH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YESH1
@303
DO ~SetGlobal("X#YESH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @304
== ~%YESLICK_BANTER%~ @305
== ~%SHARTEEL_BANTER%~ @306
== ~%YESLICK_BANTER%~ @307
== ~%SHARTEEL_BANTER%~ @308
== ~%YESLICK_BANTER%~ @309
== ~%SHARTEEL_BANTER%~ @310
== ~%YESLICK_BANTER%~ @311
= @312
== ~%SHARTEEL_BANTER%~ @313
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#YESK1","LOCALS",0) !See([ENEMY]) See("skie") See("eldoth") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YESK1
@314
DO ~SetGlobal("X#YESK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @315
== ~%YESLICK_BANTER%~ @316
== ~%SKIE_BANTER%~ @317
== ~%YESLICK_BANTER%~ @318
== ~%SKIE_BANTER%~ @319
== ~%YESLICK_BANTER%~ @320
== ~%SKIE_BANTER%~ @321
== ~%YESLICK_BANTER%~ @322
== ~%SKIE_BANTER%~ @323
== ~%YESLICK_BANTER%~ @324
== ~%SKIE_BANTER%~ @325
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#YETI1","LOCALS",0) CombatCounter(0) InParty("tiax") !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YETI1
@326
DO ~SetGlobal("X#YETI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @327
== ~%YESLICK_BANTER%~ @328
== ~%TIAX_BANTER%~ @329
== ~%YESLICK_BANTER%~ @330
== ~%TIAX_BANTER%~ @331
== ~%YESLICK_BANTER%~ @332
== ~%TIAX_BANTER%~ @333
== ~%YESLICK_BANTER%~ @334
== ~%TIAX_BANTER%~ @335
== ~%YESLICK_BANTER%~ @336
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#YEVI1","LOCALS",0) CombatCounter(0) InParty("viconia") !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEVI1
@337
DO ~SetGlobal("X#YEVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @338
== ~%YESLICK_BANTER%~ @339
== ~%VICONIA_BANTER%~ @340
== ~%YESLICK_BANTER%~ @341
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @342
== ~%VICONIA_BANTER%~ @343
== ~%YESLICK_BANTER%~ @344
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("Chapter","GLOBAL",%tutu_chapter_7%) CombatCounter(0) InParty("xan") Global("X#YEXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEXA1
@345
DO ~SetGlobal("X#YEXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @346
== ~%YESLICK_BANTER%~ @347
== ~%XAN_BANTER%~ @348
== ~%YESLICK_BANTER%~ @349
== ~%XAN_BANTER%~ @350
== ~%YESLICK_BANTER%~ @351
== ~%XAN_BANTER%~ @352
== ~%YESLICK_BANTER%~ @353
== ~%XAN_BANTER%~ @354
== ~%YESLICK_BANTER%~ @355
== ~%XAN_BANTER%~ @356
== ~%YESLICK_BANTER%~ @357
== ~%XAN_BANTER%~ @358
== ~%YESLICK_BANTER%~ @359
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#YEXZ1","LOCALS",0) InParty("xzar") CombatCounter(0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ YEXZ1
@360
DO ~SetGlobal("X#YEXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @361
== ~%YESLICK_BANTER%~ @362
== ~%XZAR_BANTER%~ @363
== ~%YESLICK_BANTER%~ @364
== ~%XZAR_BANTER%~ @365
== ~%YESLICK_BANTER%~ @366
== ~%XZAR_BANTER%~ @367
== ~%YESLICK_BANTER%~ @368
== ~%XZAR_BANTER%~ @369
== ~%YESLICK_BANTER%~ @370
== ~%XZAR_BANTER%~ @371
== ~%YESLICK_BANTER%~ @372
EXIT

APPEND ~%YESLICK_BANTER%~

IF ~~ THEN BEGIN YEKA4PC
SAY @373
IF ~~ THEN REPLY @374 DO ~SetGlobal("X#YeKaFight","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY @375 DO ~SetGlobal("X#YeKaFight","GLOBAL",1)~ GOTO YEKA4.1
IF ~~ THEN REPLY @376 DO ~SetGlobal("X#YeKaFight","GLOBAL",1) SetGlobal("X#YeslickLeave","GLOBAL",1)~ GOTO YEKA4.2
END
END

APPEND ~%YESLICK_JOINED%~

IF ~%BGT_VAR% Global("X#YeKaFight","GLOBAL",1) Dead("kagain")~ THEN BEGIN YEPostFight1
SAY @377
IF ~~ THEN DO ~SetGlobal("X#YeKaFight","GLOBAL",2)~ EXIT
END

IF ~%BGT_VAR% Global("X#YeKaFight","GLOBAL",1) Global("X#YeslickLeave","GLOBAL",1) Dead("kagain")~ THEN BEGIN YEPostFight2
SAY @378
IF ~~ THEN DO ~SetGlobal("X#YeKaFight","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

END


CHAIN3 ~%YESLICK_BANTER%~ YEKA4.1
@379
== ~%KAGAIN_BANTER%~ @380
== ~%YESLICK_BANTER%~ @381
== ~%KAGAIN_BANTER%~ @382
DO ~ActionOverride("yeslick",Attack("kagain")) Attack("yeslick")~
EXIT

CHAIN3 ~%YESLICK_BANTER%~ YEKA4.2
@383
== ~%KAGAIN_BANTER%~ @382
DO ~ActionOverride("yeslick",Attack("kagain")) Attack("yeslick")~
EXIT

APPEND ~%KAGAIN_JOINED%~

IF ~%BGT_VAR% Global("X#YeKaFight","GLOBAL",1) !Global("X#YeslickLeave","GLOBAL",1) Dead("yeslick")~ THEN BEGIN KAPostFight1
SAY @384
IF ~~ THEN DO ~SetGlobal("X#YeKaFight","GLOBAL",2)~ EXIT
END

IF ~%BGT_VAR% Global("X#YeKaFight","GLOBAL",1) Global("X#YeslickLeave","GLOBAL",1) Dead("yeslick")~ THEN BEGIN KAPostFight2
SAY @385
IF ~~ THEN DO ~SetGlobal("X#YeKaFight","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

END
