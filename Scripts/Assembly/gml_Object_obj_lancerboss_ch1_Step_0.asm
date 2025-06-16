.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [60]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [24]

:[5]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
pushi.e 1526
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[7]
pushi.e 50
pop.v.i global.typer
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.i 231251
setowner.e
push.s "obj_lancerboss_slash_Step_0_gml_17_0"@41221
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[9]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_lancerboss_slash_Step_0_gml_18_0"@41222
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_lancerboss_slash_Step_0_gml_19_0"@41223
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.turns
pushi.e 3
cmp.i.v GTE
bf [15]

:[14]
push.s "obj_lancerboss_slash_Step_0_gml_20_0"@41224
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.compliment_just
pushi.e 1
cmp.i.v EQ
bf [23]

:[16]
push.v self.compliment
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_lancerboss_slash_Step_0_gml_26_0"@41225
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
push.v self.compliment
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_lancerboss_slash_Step_0_gml_30_0"@41226
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[20]
push.v self.compliment
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_lancerboss_slash_Step_0_gml_34_0"@41227
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[22]
pushi.e 0
pop.v.i self.compliment_just

:[23]
pushi.e 3
conv.i.v
push.v self.y
pushi.e 65
sub.i.v
push.v self.x
pushi.e 235
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[24]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [41]

:[28]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [30]

:[29]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v self.talkmax
pop.v.v self.talktimer

:[33]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [41]

:[34]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[36]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
pushi.e 1632
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[38]
pushi.e 1331
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
pushi.e 2
pop.v.i global.mnfight

:[41]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [60]

:[45]
push.v self.attacks
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1532
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
pushi.e -9
pop.v.i [stacktop]self.racecon
push.v self.mytarget
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 1
pop.v.i self.attacks
b [48]

:[47]
pushi.e 1532
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
pushi.e -9
pop.v.i [stacktop]self.lcon
push.v self.mytarget
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
pop.v.i self.attacks

:[48]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 999
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.i 231921
setowner.e
push.s "obj_lancerboss_slash_Step_0_gml_90_0"@41229
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[50]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_lancerboss_slash_Step_0_gml_91_0"@41230
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[52]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_lancerboss_slash_Step_0_gml_92_0"@41231
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[54]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_lancerboss_slash_Step_0_gml_93_0"@41232
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_lancerboss_slash_Step_0_gml_94_0"@41233
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[58]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 47
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_lancerboss_slash_Step_0_gml_100_0"@41234
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[60]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [92]

:[61]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_lancerboss_slash_Step_0_gml_118_0"@41235
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_119_0"@41236
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[66]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [74]

:[70]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.automiss
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_lancerboss_slash_Step_0_gml_130_0"@41237
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231956
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.automiss
b [73]

:[72]
push.s "obj_lancerboss_slash_Step_0_gml_135_0"@41238
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[73]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[74]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [76]

:[75]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [87]

:[78]
push.v self.compliment
pushi.e 3
cmp.i.v GTE
bf [80]

:[79]
push.i 231251
setowner.e
push.s "obj_lancerboss_slash_Step_0_gml_145_0"@41239
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[80]
push.v self.compliment
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_lancerboss_slash_Step_0_gml_150_0"@41240
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_151_0"@41241
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v

:[82]
push.v self.compliment
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_lancerboss_slash_Step_0_gml_157_0"@41242
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_158_0"@41243
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
pushi.e 1
add.i.v
pop.i.v [array]self.monsterat

:[84]
push.v self.compliment
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.i 231251
setowner.e
push.s "obj_lancerboss_slash_Step_0_gml_164_0"@41244
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_165_0"@41245
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
pushi.e 1
sub.i.v
pop.i.v [array]self.monsterat

:[86]
pushi.e 1
pop.v.i self.compliment_just
push.v self.compliment
pushi.e 1
add.i.v
pop.v.v self.compliment
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[87]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[92]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[94]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [96]

:[95]
pushi.e 50
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_lancerboss_slash_Step_0_gml_196_0"@41246
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_197_0"@41247
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_198_0"@41248
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_199_0"@41249
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_200_0"@41250
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_201_0"@41251
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_lancerboss_slash_Step_0_gml_202_0"@41252
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 3
conv.i.v
push.v self.y
pushi.e 65
sub.i.v
push.v self.x
pushi.e 235
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v

:[96]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
pushi.e 20
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1517
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.noreturn
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[102]
popenv [101]

:[103]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[104]
push.i 231885
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterexp
pushi.e 0
sub.i.v
pop.i.v [array]self.monsterexp
push.i 231884
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monstergold
pushi.e 10
add.i.v
pop.i.v [array]self.monstergold
pushglb.v global.plot
pushi.e 22
cmp.i.v LT
bf [106]

:[105]
pushi.e 22
pop.v.i global.plot

:[106]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[end]