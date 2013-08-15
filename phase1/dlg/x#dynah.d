/* CONTENTS */
/* Friend talk 1 */
/* Friend talk 2 */
/* Friend talk 3 - requires Minsc */
/* Bhaal talk */
/* Dynaheir-Branwen talk 1 */
/* Unscripted NPC banters */

APPEND ~%DYNAHEIR_JOINED%~

/* Friend talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFriendTalk","GLOBAL",1)~ THEN BEGIN DYPC1
SAY @0 
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC1.3
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC1.4
IF ~~ THEN REPLY @5 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC1.5
END

IF ~~ THEN BEGIN DYPC1.1
SAY @6
IF ~~ THEN REPLY @7 GOTO DYPC1.6
IF ~~ THEN REPLY @8 GOTO DYPC1.7
IF ~~ THEN REPLY @9 GOTO DYPC1.8
END

IF ~~ THEN BEGIN DYPC1.2
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.3
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.4
SAY @12
IF ~~ THEN REPLY @13 GOTO DYPC1.9
IF ~~ THEN REPLY @14 GOTO DYPC1.10
IF ~~ THEN REPLY @15 GOTO DYPC1.11
END

IF ~~ THEN BEGIN DYPC1.5
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.6
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.7
SAY @18
IF ~~ THEN REPLY @19 GOTO DYPC1.6
IF ~~ THEN REPLY @20 GOTO DYPC1.13
IF ~Gender(Player1,FEMALE)~ THEN REPLY @21 GOTO DYPC1.14FEMALE
IF ~Gender(Player1,MALE)~ THEN REPLY @21 GOTO DYPC1.14MALE
IF ~~ THEN REPLY @22 GOTO DYPC1.15
END

IF ~~ THEN BEGIN DYPC1.8
SAY @23
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.9
SAY @24
IF ~~ THEN REPLY @25 GOTO DYPC1.16
IF ~~ THEN REPLY @26 GOTO DYPC1.17
END

IF ~~ THEN BEGIN DYPC1.10
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.11
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.13
SAY @29
IF ~~ THEN REPLY @30 GOTO DYPC1.18
IF ~~ THEN REPLY @31 GOTO DYPC1.19
IF ~~ THEN REPLY @32 GOTO DYPC1.6
END

IF ~~ THEN BEGIN DYPC1.14MALE
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.14FEMALE
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.15
SAY @35
IF ~~ THEN REPLY @36 GOTO DYPC1.18
IF ~~ THEN REPLY @31 GOTO DYPC1.19
END

IF ~~ THEN BEGIN DYPC1.16
SAY @37
IF ~~ THEN REPLY @38 GOTO DYPC1.23
IF ~~ THEN REPLY @39 GOTO DYPC1.19
IF ~~ THEN REPLY @40 GOTO DYPC1.18
END

IF ~~ THEN BEGIN DYPC1.17
SAY @41
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.18
SAY @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.19
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC1.23
SAY @44
IF ~~ THEN EXIT
END

/* Friend talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFriendTalk","GLOBAL",3)~ THEN BEGIN DYPC2
SAY @45 
IF ~~ THEN REPLY @46 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC2.1
IF ~~ THEN REPLY @47 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC2.2
IF ~~ THEN REPLY @48 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC2.3
IF ~~ THEN REPLY @49 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC2.4
END

IF ~~ THEN BEGIN DYPC2.1
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC2.2
SAY @51
IF ~~ THEN REPLY @52 GOTO DYPC2.5
IF ~~ THEN REPLY @53 GOTO DYPC2.3
IF ~~ THEN REPLY @54 GOTO DYPC2.1
END

IF ~~ THEN BEGIN DYPC2.3
SAY @55
IF ~~ THEN REPLY @56 GOTO DYPC2.8
IF ~~ THEN REPLY @57 GOTO DYPC2.5
IF ~~ THEN REPLY @58 GOTO DYPC2.10
END

IF ~~ THEN BEGIN DYPC2.4
SAY @59
IF ~~ THEN REPLY @60 GOTO DYPC2.8
IF ~~ THEN REPLY @57 GOTO DYPC2.5
IF ~~ THEN REPLY @58 GOTO DYPC2.10
END

IF ~~ THEN BEGIN DYPC2.5
SAY @61 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC2.8
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC2.10
SAY @63
IF ~~ THEN EXIT
END

/* Friend talk 3 - requires Minsc */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFriendTalk","GLOBAL",5)~ THEN BEGIN DYPC3
SAY @64 
IF ~~ THEN REPLY @65 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC3.1
IF ~~ THEN REPLY @66 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC3.2
IF ~~ THEN REPLY @67 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",3600)~ GOTO DYPC3.3
END

IF ~~ THEN BEGIN DYPC3.1
SAY @68
IF ~Gender(Player1,MALE)~ THEN REPLY @69 GOTO DYPC3.4MALE
IF ~Gender(Player1,FEMALE)~ THEN REPLY @70 GOTO DYPC3.4FEMALE
IF ~~ THEN REPLY @71 GOTO DYPC3.5
IF ~~ THEN REPLY @72 GOTO DYPC3.6
IF ~Gender(Player1,MALE)~ THEN REPLY @73 GOTO DYPC3.10
END

IF ~~ THEN BEGIN DYPC3.2
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.3
SAY @75
IF ~~ THEN REPLY @76 GOTO DYPC3.7
IF ~~ THEN REPLY @77 GOTO DYPC3.8
IF ~~ THEN REPLY @78 GOTO DYPC3.9
END

IF ~~ THEN BEGIN DYPC3.4MALE
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.4FEMALE
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.5
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.6
SAY @82
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.7
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.8
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.9
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC3.10
SAY @86
IF ~~ THEN EXIT
END

/* Bhaal talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFriendTalk","GLOBAL",7)~ THEN BEGIN DYPC4
SAY @87 
IF ~~ THEN REPLY @88 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",8) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",18000)~ GOTO DYPC4.1
IF ~~ THEN REPLY @89 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",8) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",18000)~ GOTO DYPC4.2
IF ~~ THEN REPLY @90 DO ~SetGlobal("X#DyFriendTalk","GLOBAL",8) RealSetGlobalTimer("X#DyFriendTalkTime","GLOBAL",18000)~ GOTO DYPC4.3
END

IF ~~ THEN BEGIN DYPC4.1
SAY @91
IF ~~ THEN REPLY @92 GOTO DYPC4.4
IF ~~ THEN REPLY @93 GOTO DYPC4.5
END

IF ~~ THEN BEGIN DYPC4.2
SAY @94
IF ~~ THEN REPLY @95 GOTO DYPC4.4
IF ~~ THEN REPLY @93 GOTO DYPC4.5
END

IF ~~ THEN BEGIN DYPC4.3
SAY @96
IF ~~ THEN REPLY @95 GOTO DYPC4.4
IF ~~ THEN REPLY @93 GOTO DYPC4.5
END

IF ~~ THEN BEGIN DYPC4.5
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC4.4
SAY @98
IF ~~ THEN REPLY @99 GOTO DYPC4.6
IF ~~ THEN REPLY @100 GOTO DYPC4.7
IF ~~ THEN REPLY @101 GOTO DYPC4.8
END

IF ~~ THEN BEGIN DYPC4.6
SAY @102
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC4.7
SAY @103
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DYPC4.8
SAY @104
IF ~~ THEN EXIT
END

END

/* At waking script */
/* Dynaheir-Branwen talk 1 */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBR1","GLOBAL",1)~ THEN ~%DYNAHEIR_JOINED%~ DYBR1
@105 
DO ~SetGlobal("X#DYBR1","GLOBAL",2)~
== ~%BRANWEN_BANTER%~ @106
== ~%DYNAHEIR_BANTER%~ @107
== ~%BRANWEN_BANTER%~ @108
== ~%DYNAHEIR_BANTER%~ @109
== ~%BRANWEN_BANTER%~ @110
== ~%DYNAHEIR_BANTER%~ @111
== ~%BRANWEN_BANTER%~ @112
== ~%BRANWEN_BANTER%~ @113
== ~%DYNAHEIR_BANTER%~ @114
EXIT

/* Unscripted NPC banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#DYAJ1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYAJ1
@115 
DO ~SetGlobal("X#DYAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @116
== ~%DYNAHEIR_BANTER%~ @117
== ~%AJANTIS_BANTER%~ @118
== ~%DYNAHEIR_BANTER%~ @119
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#DYAL1","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYAL1
@120 
DO ~SetGlobal("X#DYAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @121
== ~%DYNAHEIR_BANTER%~ @122
== ~%ALORA_BANTER%~ @123
== ~%DYNAHEIR_BANTER%~ @124
== ~%ALORA_BANTER%~ @125
== ~%DYNAHEIR_BANTER%~ @126
== ~%ALORA_BANTER%~ @127
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#DYBR2","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYBR2
@128 
DO ~SetGlobal("X#DYBR2","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @129
== ~%DYNAHEIR_BANTER%~ @130
== ~%BRANWEN_BANTER%~ @131
== ~%DYNAHEIR_BANTER%~ @132
== ~%BRANWEN_BANTER%~ @133
== ~%DYNAHEIR_BANTER%~ @134
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% !Global("X#DYCO1","LOCALS",0) StateCheck(Myself,CD_STATE_NOTVALID) CombatCounter(0) InParty("coran") !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYCO1
@135
DO ~SetGlobal("X#DYCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @136
== ~%DYNAHEIR_BANTER%~ @137
== ~%CORAN_BANTER%~ @138
== ~%DYNAHEIR_BANTER%~ @139
== ~%CORAN_BANTER%~ @140
== ~%DYNAHEIR_BANTER%~ @141
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#DYED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYED1
@142
DO ~SetGlobal("X#DYED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @143
== ~%DYNAHEIR_BANTER%~ @144
== ~%EDWIN_BANTER%~ @145
== ~%DYNAHEIR_BANTER%~ @146
== ~%EDWIN_BANTER%~ @147
== ~%DYNAHEIR_BANTER%~ @148
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") InParty("skie") Global("X#DYEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYEL1
@149 
DO ~SetGlobal("X#DYEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @150
== ~%DYNAHEIR_BANTER%~ @151
== ~%ELDOTH_BANTER%~ @152
== ~%DYNAHEIR_BANTER%~ @153
== ~%ELDOTH_BANTER%~ @154
== ~%DYNAHEIR_BANTER%~ @155
== ~%ELDOTH_BANTER%~ @156
== ~%DYNAHEIR_BANTER%~ @157
== ~%ELDOTH_BANTER%~ @158
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#DYFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYFA1
@159 
DO ~SetGlobal("X#DYFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @160
== ~%DYNAHEIR_BANTER%~ @161
== ~%FALDORN_BANTER%~ @162
== ~%DYNAHEIR_BANTER%~ @163
== ~%FALDORN_BANTER%~ @164
== ~%DYNAHEIR_BANTER%~ @165
== ~%FALDORN_BANTER%~ @166
== ~%DYNAHEIR_BANTER%~ @167
== ~%FALDORN_BANTER%~ @168
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#DYGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYGA1
 @169 
 DO ~SetGlobal("X#DYGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @170
== ~%DYNAHEIR_BANTER%~ @171
== ~%GARRICK_BANTER%~ @172
== ~%DYNAHEIR_BANTER%~ @173
== ~%GARRICK_BANTER%~ @174
== ~%DYNAHEIR_BANTER%~ @175
== ~%GARRICK_BANTER%~ @176
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#DYIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYIM1
@177 
DO ~SetGlobal("X#DYIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @178
== ~%DYNAHEIR_BANTER%~ @179
== ~%IMOEN_BANTER%~ @180
== ~%DYNAHEIR_BANTER%~ @181
== ~%IMOEN_BANTER%~ @182
== ~%DYNAHEIR_BANTER%~ @183
== ~%IMOEN_BANTER%~ @184
== ~%DYNAHEIR_BANTER%~ @185
== ~%IMOEN_BANTER%~ @186
== ~%DYNAHEIR_BANTER%~ @187
== ~%IMOEN_BANTER%~ @188
== ~%DYNAHEIR_BANTER%~ @189
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#DYJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%DYNAHEIR_BANTER%~ DYJA1
@190 
DO ~SetGlobal("X#DYJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @191
== ~%DYNAHEIR_BANTER%~ @192
== ~%JAHEIRA_BANTER%~ @193
== ~%DYNAHEIR_BANTER%~ @194
== ~%JAHEIRA_BANTER%~ @195
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#DYJA2","LOCALS",0)!See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYJA2
@196 
= @197
DO ~SetGlobal("X#DYJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @198
== ~%DYNAHEIR_BANTER%~ @199
== ~%JAHEIRA_BANTER%~ @200
== ~%DYNAHEIR_BANTER%~ @201
== ~%JAHEIRA_BANTER%~ @202
== ~%DYNAHEIR_BANTER%~ @203
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#DYKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYKA1
@204 
DO ~SetGlobal("X#DYKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @205
== ~%DYNAHEIR_BANTER%~ @206
== ~%KAGAIN_BANTER%~ @207
== ~%DYNAHEIR_BANTER%~ @208
== ~%KAGAIN_BANTER%~ @209
== ~%DYNAHEIR_BANTER%~ @210
== ~%KAGAIN_BANTER%~ @211
== ~%DYNAHEIR_BANTER%~ @212
== ~%KAGAIN_BANTER%~ @213
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("khalid") Global("X#DYKH1","LOCALS",0) !See([ENEMY]) CombatCounter(0) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYKH1
@214 
DO ~SetGlobal("X#DYKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @215
== ~%DYNAHEIR_BANTER%~ @216
== ~%KHALID_BANTER%~ @217
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @218
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#DYKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYKI1
@219
DO ~SetGlobal("X#DYKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @220
== ~%DYNAHEIR_BANTER%~ @221
== ~%KIVAN_BANTER%~ @222
== ~%DYNAHEIR_BANTER%~ @223
== ~%KIVAN_BANTER%~ @224
== ~%DYNAHEIR_BANTER%~ @225
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") HPPercentLT("minsc",50) Global("X#DYMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYMI1
@226 
DO ~SetGlobal("X#DYMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @227
== ~%DYNAHEIR_BANTER%~ @228
== ~%MINSC_BANTER%~ @229
== ~%DYNAHEIR_BANTER%~ @230
== ~%MINSC_BANTER%~ @231
== ~%DYNAHEIR_BANTER%~ @232
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("P#KnowBhaal","GLOBAL",1) Global("X#DYMI2","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYMI2
@233 
DO ~SetGlobal("X#DYMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @234
== ~%DYNAHEIR_BANTER%~ @235
== ~%MINSC_BANTER%~ @236
== ~%DYNAHEIR_BANTER%~ @237
== ~%MINSC_BANTER%~ @238
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("X#DYMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYMO1
@239 
DO ~SetGlobal("X#DYMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @240
== ~%DYNAHEIR_BANTER%~ @241
== ~%MONTARON_BANTER%~ @242
== ~%DYNAHEIR_BANTER%~ @243
== ~%MONTARON_BANTER%~ @244
== ~%DYNAHEIR_BANTER%~ @245
== ~%MONTARON_BANTER%~ @246
== ~%DYNAHEIR_BANTER%~ @247
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#DYQU1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYQU1
@248 
DO ~SetGlobal("X#DYQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @249
== ~%DYNAHEIR_BANTER%~ @250
== ~%QUAYLE_BANTER%~ @251
== ~%DYNAHEIR_BANTER%~ @252
== ~%QUAYLE_BANTER%~ @253
== ~%DYNAHEIR_BANTER%~ @254
== ~%QUAYLE_BANTER%~ @255
== ~%DYNAHEIR_BANTER%~ @256
== ~%QUAYLE_BANTER%~ @257
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#DYSA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYSA1
@258 
DO ~SetGlobal("X#DYSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @259
== ~%DYNAHEIR_BANTER%~ @260
== ~%SAFANA_BANTER%~ @261
== ~%DYNAHEIR_BANTER%~ @262
== ~%SAFANA_BANTER%~ @263
== ~%DYNAHEIR_BANTER%~ @264
== ~%SAFANA_BANTER%~ @265
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#DYSH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYSH1
@266 
DO ~SetGlobal("X#DYSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @267
== ~%DYNAHEIR_BANTER%~ @268
== ~%SHARTEEL_BANTER%~ @269
== ~%DYNAHEIR_BANTER%~ @270
== ~%SHARTEEL_BANTER%~ @271
== ~%DYNAHEIR_BANTER%~ @272
== ~%SHARTEEL_BANTER%~ @273
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("X#DYSK1","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYSK1
@274
DO ~SetGlobal("X#DYSK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @275
== ~%DYNAHEIR_BANTER%~ @276
== ~%SKIE_BANTER%~ @277
== ~%SKIE_BANTER%~ @278
== ~%DYNAHEIR_BANTER%~ @279
== ~%SKIE_BANTER%~ @280
== ~%DYNAHEIR_BANTER%~ @281
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#DYSK2","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYSK2
@282 
DO ~SetGlobal("X#DYSK2","LOCALS",1)~
== ~%SKIE_BANTER%~ @283
== ~%DYNAHEIR_BANTER%~ @284
== ~%SKIE_BANTER%~ @285
== ~%DYNAHEIR_BANTER%~ @286
== ~%SKIE_BANTER%~ @287
== ~%DYNAHEIR_BANTER%~ @288
== ~%SKIE_BANTER%~ @289
== ~%DYNAHEIR_BANTER%~ @290
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#DYTI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYTI1
@291 
DO ~SetGlobal("X#DYTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @292
== ~%DYNAHEIR_BANTER%~ @293
== ~%DYNAHEIR_BANTER%~ @294
== ~%TIAX_BANTER%~ @295
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#DYVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYVI1
@296 
DO ~SetGlobal("X#DYVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @297
== ~%DYNAHEIR_BANTER%~ @298
== ~%VICONIA_BANTER%~ @299
== ~%DYNAHEIR_BANTER%~ @300
== ~%VICONIA_BANTER%~ @301
== ~%DYNAHEIR_BANTER%~ @302
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#DYXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYXA1
@303 
DO ~SetGlobal("X#DYXA1","LOCALS",1)~
== ~%XAN_BANTER%~ IF ~!Dead("minsc")~ THEN @304
== ~%DYNAHEIR_BANTER%~ IF ~!Dead("minsc")~ THEN @305
== ~%XAN_BANTER%~ IF ~Dead("minsc")~ THEN @306
== ~%DYNAHEIR_BANTER%~ IF ~Dead("minsc")~ THEN @307
== ~%DYNAHEIR_BANTER%~ @308
== ~%XAN_BANTER%~ IF ~ReputationLT("xan",6)~ THEN @309
== ~%DYNAHEIR_BANTER%~ IF ~ReputationLT("xan",6)~ THEN @310
== ~%XAN_BANTER%~ IF ~ReputationGT("xan",18)~ THEN @311
== ~%DYNAHEIR_BANTER%~ IF ~ReputationGT("xan",18)~ THEN @312
== ~%XAN_BANTER%~ IF ~!ReputationGT("xan",18) !ReputationLT("xan",6)~ THEN @313
== ~%DYNAHEIR_BANTER%~ IF ~!ReputationGT("xan",18) !ReputationLT("xan",6)~ THEN @314
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#DYXA2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYXA2
@315 
DO ~SetGlobal("X#DYXA2","LOCALS",1)~
== ~%XAN_BANTER%~ @316
== ~%DYNAHEIR_BANTER%~ @317
== ~%XAN_BANTER%~ @318
== ~%DYNAHEIR_BANTER%~ @319
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("P#KnowBhaal","GLOBAL",1) Global("X#DYXZ1","LOCALS",0) !See([ENEMY]) InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYXZ1
@320 
DO ~SetGlobal("X#DYXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @321
== ~%DYNAHEIR_BANTER%~ @322
== ~%XZAR_BANTER%~ @323
== ~%DYNAHEIR_BANTER%~ @324
== ~%XZAR_BANTER%~ @325
== ~%DYNAHEIR_BANTER%~ @326
== ~%XZAR_BANTER%~ @327
== ~%DYNAHEIR_BANTER%~ @328
== ~%XZAR_BANTER%~ @329
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#DYYE1","LOCALS",0) !See([ENEMY]) InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYYE1
@330
DO ~SetGlobal("X#DYYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @331
== ~%DYNAHEIR_BANTER%~ @332
== ~%YESLICK_BANTER%~ @333
== ~%DYNAHEIR_BANTER%~ @334
== ~%YESLICK_BANTER%~ @335
== ~%DYNAHEIR_BANTER%~ @336
== ~%YESLICK_BANTER%~ @337
== ~%DYNAHEIR_BANTER%~ @338
== ~%YESLICK_BANTER%~ @339
EXIT
