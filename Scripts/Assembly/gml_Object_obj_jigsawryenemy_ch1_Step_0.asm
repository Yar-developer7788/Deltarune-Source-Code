.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [106]

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
bf [49]

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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.i 231251
setowner.e
push.s "obj_jigsawryenemy_slash_Step_0_gml_11_0"@41009
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_jigsawryenemy_slash_Step_0_gml_12_0"@41010
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_jigsawryenemy_slash_Step_0_gml_13_0"@41011
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_jigsawryenemy_slash_Step_0_gml_14_0"@41012
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [26]

:[16]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [18]

:[17]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.s "obj_jigsawryenemy_slash_Step_0_gml_18_0"@41013
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[21]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [23]

:[22]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.s "obj_jigsawryenemy_slash_Step_0_gml_19_0"@41014
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[26]
push.v self.traitorp
pushi.e 1
cmp.i.v EQ
bf [37]

:[27]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [29]

:[28]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.s "obj_jigsawryenemy_slash_Step_0_gml_24_0"@41015
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[32]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [34]

:[33]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.s "obj_jigsawryenemy_slash_Step_0_gml_25_0"@41016
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[37]
push.v self.traitorp
pushi.e 2
cmp.i.v EQ
bf [48]

:[38]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [40]

:[39]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 1

:[41]
bf [43]

:[42]
push.s "obj_jigsawryenemy_slash_Step_0_gml_29_0"@41017
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[43]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [45]

:[44]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
push.s "obj_jigsawryenemy_slash_Step_0_gml_30_0"@41018
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[48]
pushi.e 0
pop.v.i self.traitorp
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

:[49]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [58]

:[53]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip_ch1(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [58]

:[54]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [56]

:[55]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[56]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [58]

:[57]
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

:[58]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [98]

:[62]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [97]

:[63]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [80]

:[64]
pushi.e 0
pop.v.i self.tellme
pushi.e 1562
pushenv [70]

:[65]
push.v self.type
pushi.e 80
cmp.i.v GTE
bf [67]

:[66]
push.v self.type
pushi.e 84
cmp.i.v LTE
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 1
pop.v.i 1581.tellme

:[70]
popenv [65]
push.v self.tellme
pushi.e 0
cmp.i.v EQ
bf [80]

:[71]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 4
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e 0
pop.v.i self.metotal
pushi.e 0
pop.v.i self.i

:[72]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [79]

:[73]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstertype
pushi.e 15
cmp.i.v EQ
bf [75]

:[74]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
push.v self.metotal
pushi.e 1
add.i.v
pop.v.v self.metotal

:[78]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [72]

:[79]
pushi.e 80
push.v self.metotal
add.v.i
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.type
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

:[80]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 140
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.i 231921
setowner.e
push.s "obj_jigsawryenemy_slash_Step_0_gml_89_0"@41021
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[82]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_jigsawryenemy_slash_Step_0_gml_90_0"@41022
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[84]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_jigsawryenemy_slash_Step_0_gml_91_0"@41023
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[86]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_jigsawryenemy_slash_Step_0_gml_92_0"@41024
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[88]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_jigsawryenemy_slash_Step_0_gml_93_0"@41025
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[90]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_jigsawryenemy_slash_Step_0_gml_94_0"@41026
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[92]
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
bf [94]

:[93]
push.s "obj_jigsawryenemy_slash_Step_0_gml_95_0"@41027
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[94]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [96]

:[95]
push.i 231251
setowner.e
push.s "obj_jigsawryenemy_slash_Step_0_gml_96_0"@41028
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[96]
b [98]

:[97]
pushi.e 120
pop.v.i global.turntimer

:[98]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [106]

:[99]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [106]

:[100]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[102]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [106]

:[103]
pushi.e 1517
pushenv [105]

:[104]
pushi.e 1
pop.v.i self.noreturn

:[105]
popenv [104]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[106]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[107]
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
bf [109]

:[108]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_jigsawryenemy_slash_Step_0_gml_129_0"@41029
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[112]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
push.s "obj_jigsawryenemy_slash_Step_0_gml_136_0"@41030
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 3
pop.v.i self.actcon

:[117]
push.v self.actcon
pushi.e 3
cmp.i.v EQ
bf [119]

:[118]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [132]

:[121]
pushi.e 1581
pushenv [123]

:[122]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v

:[123]
popenv [122]
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
pop.v.i global.typer
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [125]

:[124]
push.s "obj_jigsawryenemy_slash_Step_0_gml_152_0"@41031
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[125]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
push.s "obj_jigsawryenemy_slash_Step_0_gml_153_0"@41032
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[127]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [129]

:[128]
push.s "obj_jigsawryenemy_slash_Step_0_gml_154_0"@41033
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[129]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_jigsawryenemy_slash_Step_0_gml_155_0"@41034
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[131]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.actcon

:[132]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [134]

:[133]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [142]

:[136]
pushi.e 1
pop.v.i self.actcon
push.s "obj_jigsawryenemy_slash_Step_0_gml_164_0"@41035
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v GT
bf [138]

:[137]
push.s "obj_jigsawryenemy_slash_Step_0_gml_166_0"@41036
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[138]
pushi.e 0
pop.v.i self.i

:[139]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [141]

:[140]
push.i 231984
setowner.e
push.s "obj_jigsawryenemy_slash_Step_0_gml_169_0"@41037
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
b [139]

:[141]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[142]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [145]

:[144]
push.e 0

:[145]
bf [end]

:[146]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[end]