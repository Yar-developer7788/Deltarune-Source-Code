.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [71]

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
bf [32]

:[5]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
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
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
pushi.e 50
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rando
push.v self.rando
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 4
pop.v.i self.rr

:[9]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.i 231251
setowner.e
push.s "obj_rabbick_enemy_slash_Step_0_gml_13_0"@41121
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_rabbick_enemy_slash_Step_0_gml_14_0"@41122
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_rabbick_enemy_slash_Step_0_gml_15_0"@41123
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_rabbick_enemy_slash_Step_0_gml_16_0"@41124
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_rabbick_enemy_slash_Step_0_gml_17_0"@41125
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
push.v self.blown
pushi.e 1
cmp.i.v EQ
bf [31]

:[20]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [22]

:[21]
push.v self.rr
pushi.e 4
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
push.s "obj_rabbick_enemy_slash_Step_0_gml_21_0"@41126
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_rabbick_enemy_slash_Step_0_gml_22_0"@41127
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[27]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_rabbick_enemy_slash_Step_0_gml_23_0"@41128
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[29]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_rabbick_enemy_slash_Step_0_gml_24_0"@41129
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[31]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[32]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [41]

:[36]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip_ch1(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [41]

:[37]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [39]

:[38]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[39]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[40]
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
bf [63]

:[45]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [62]

:[46]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 30
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 9
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
b [49]

:[48]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 32
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 9
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints

:[49]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 170
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
push.i 231921
setowner.e
push.s "obj_rabbick_enemy_slash_Step_0_gml_79_0"@41130
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[51]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_rabbick_enemy_slash_Step_0_gml_80_0"@41131
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[53]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_rabbick_enemy_slash_Step_0_gml_81_0"@41132
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[55]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_rabbick_enemy_slash_Step_0_gml_82_0"@41133
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[57]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [59]

:[58]
push.s "obj_rabbick_enemy_slash_Step_0_gml_83_0"@41134
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[59]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [61]

:[60]
push.i 231251
setowner.e
push.s "obj_rabbick_enemy_slash_Step_0_gml_84_0"@41135
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[61]
b [63]

:[62]
pushi.e 120
pop.v.i global.turntimer

:[63]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [71]

:[64]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [71]

:[65]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[67]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [71]

:[68]
pushi.e 1517
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.noreturn

:[70]
popenv [69]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[71]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[72]
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
bf [74]

:[73]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_rabbick_enemy_slash_Step_0_gml_118_0"@41136
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[77]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [85]

:[81]
pushi.e 0
pop.v.i self.blowall
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
pop.v.v self.input_name
push.v self.input_name
push.s "obj_rabbick_enemy_slash_Step_0_gml_128_0"@41137
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.blown
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
pushi.e 10
pop.v.i self.actcon
pushi.e 1
pop.v.i self.blowing
pushi.e 90
pop.v.i self.blowtimer
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[83]
push.v self.blown
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_rabbick_enemy_slash_Step_0_gml_138_0"@41138
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon

:[85]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [87]

:[86]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [98]

:[89]
pushi.e 1
pop.v.i self.blowall
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
pop.v.v self.input_name
push.v self.input_name
push.s "obj_rabbick_enemy_slash_Step_0_gml_150_0"@41139
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 10
pop.v.i self.actcon
pushi.e 1
pop.v.i self.blowing
pushi.e 90
pop.v.i self.blowtimer
pushi.e 0
pop.v.i 1602.bunnycount
push.v self.id
pop.v.v 1602.bunnyid
pushi.e 1602
pushenv [93]

:[90]
push.v self.blown
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
push.v self.bunnyid
pushi.e -9
dup.i 4
push.v [stacktop]self.bunnycount
pushi.e 1
add.i.v
pop.i.v [stacktop]self.bunnycount

:[92]
pushi.e 2
pop.v.i self.blowbuffer
pushi.e 0
pop.v.i self.blow_wait
pushi.e 1
pop.v.i self.blowall
pushi.e 1
pop.v.i self.blowing
pushi.e 90
pop.v.i self.blowtimer

:[93]
popenv [90]
push.v self.bunnycount
pushi.e 0
cmp.i.v EQ
bf [97]

:[94]
pushi.e 1602
pushenv [96]

:[95]
pushi.e 0
pop.v.i self.blowing
pushi.e -1
pop.v.i self.blowtimer
pushi.e 30
pop.v.i self.actcon
push.s "obj_rabbick_enemy_slash_Step_0_gml_175_0"@41142
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[96]
popenv [95]

:[97]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[98]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [100]

:[99]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [108]

:[102]
pushi.e 1
pop.v.i self.actcon
push.s "obj_rabbick_enemy_slash_Step_0_gml_186_0"@41143
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v GT
bf [104]

:[103]
push.s "obj_rabbick_enemy_slash_Step_0_gml_188_0"@41144
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[104]
pushi.e 0
pop.v.i self.i

:[105]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [107]

:[106]
push.i 231984
setowner.e
push.s "obj_rabbick_enemy_slash_Step_0_gml_191_0"@41145
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231956
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.automiss
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [105]

:[107]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[108]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [110]

:[109]
push.v self.blowing
pushi.e 0
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushi.e 1331
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 1
pop.v.i self.actcon

:[115]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.actcon

:[120]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [122]

:[121]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [123]

:[122]
push.e 0

:[123]
bf [127]

:[124]
pushi.e 1602
pushenv [126]

:[125]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[126]
popenv [125]
pushi.e 1
pop.v.i self.actcon

:[127]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[132]
push.v self.blowing
pushi.e 1
cmp.i.v EQ
bf [end]

:[133]
push.v self.blow_wait
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
push.v self.blowtimer
pushi.e 1
sub.i.v
pop.v.v self.blowtimer

:[135]
push.v self.blowbuffer
pushi.e 1
sub.i.v
pop.v.v self.blowbuffer
push.v self.blowamt
pushi.e 0
cmp.i.v GT
bf [137]

:[136]
push.v self.blowanimtimer
pushi.e 0
cmp.i.v LTE
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
push.v self.blowamt
pushi.e 1
sub.i.v
pop.v.v self.blowamt

:[140]
push.v self.blowbuffer
pushi.e 0
cmp.i.v LTE
bf [142]

:[141]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
b [143]

:[142]
push.e 0

:[143]
bf [147]

:[144]
pushi.e 1
pop.v.i self.blow_wait
pushi.e 393
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 393
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.blowsnd
pushi.e 1
push.v self.blowamt
pushi.e 100
conv.i.d
div.d.v
add.v.i
push.v self.blowsnd
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
pushi.e 0
pop.v.i self.onoff
pushi.e 5
pop.v.i self.shakeamt
push.v self.blowamt
pushi.e 12
add.i.v
pop.v.v self.blowamt
pushi.e 2
pop.v.i self.blowbuffer
pushi.e 20
pop.v.i self.blowanimtimer
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [146]

:[145]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [145]

:[146]
popz.i

:[147]
push.v self.blowtimer
pushi.e 0
cmp.i.v LTE
bf [149]

:[148]
pushi.e 0
pop.v.i self.blowing

:[149]
push.v self.blowamt
pushi.e 100
cmp.i.v GTE
bf [154]

:[150]
push.v self.blown
pushi.e 0
cmp.i.v EQ
bf [154]

:[151]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.blown
pushi.e 0
pop.v.i self.blowing
pushi.e 0
pop.v.i self.blowanimtimer
pushi.e 15
dup.i 0
push.i 0
cmp.i.i LTE
bt [153]

:[152]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [152]

:[153]
popz.i

:[154]
push.v self.blowing
pushi.e 0
cmp.i.v EQ
bf [end]

:[end]