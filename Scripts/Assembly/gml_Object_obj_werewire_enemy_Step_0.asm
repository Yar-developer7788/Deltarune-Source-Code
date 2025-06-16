.localvar 2 arguments
.localvar 24051 attackcheck 11066
.localvar 24052 misscheck 11067
.localvar 107 i 11068
.localvar 23076 simultext 11075

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [195]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[3]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [6]

:[4]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.talkwait
pushi.e 1
cmp.i.v NEQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[10]
pushi.e 480
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 102
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 220
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[11]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [14]

:[13]
push.e 0

:[14]
bf [29]

:[15]
pushi.e 0
pop.v.i self.rtimer
push.v self.talkwait
conv.v.b
not.b
bf [19]

:[16]
pushi.e 480
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[17]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[18]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 2
pop.v.i global.mnfight

:[22]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [29]

:[23]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [27]

:[24]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [26]

:[25]
pushi.e 872
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
call.i gml_Script_instance_create(argc=3)
popz.v
b [27]

:[26]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 240
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlebox
push.d 1.33
push.v self.battlebox
pushi.e -9
pop.v.d [stacktop]self.maxyscale

:[27]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [29]

:[28]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[29]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [31]

:[30]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [79]

:[33]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 15
cmp.i.v EQ
bf [77]

:[34]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [36]

:[35]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
b [37]

:[36]
pushi.e 3
conv.i.v

:[37]
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [39]

:[38]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [46]

:[41]
pushi.e 485
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushi.e 210
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[43]
pushi.e 0
pop.v.i self.shootcon
pushi.e 1
pop.v.i self.shootmode
pushi.e 0
pop.v.i self.shoottimer
push.v self.object_index
pushi.e -9
pushenv [45]

:[44]
pushi.e 5
conv.i.v
call.i random(argc=1)
push.v self.initid
pushi.e 30
mul.i.v
add.v.v
pushi.e 30
sub.i.v
pop.v.v self.shootwait

:[45]
popenv [44]
call.i gml_Script_scr_monsterpop(argc=0)
pop.v.v self.werewire_count
b [48]

:[46]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 170
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.hangsparktimer
pushi.e 2
pop.v.i self.shootmode
pushi.e 0
pop.v.i self.xmovement_finished
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 260
add.i.v
pop.v.v self.targetx
pushi.e 0
pop.v.i self.hangvspeed
pushi.e 0
pop.v.i self.hanghspeed
pushi.e 1
pop.v.i self.hangcon
pushi.e 0
pop.v.i self.hangsiner
pushi.e 1714
pop.v.i self.sprite_index

:[48]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [50]

:[49]
push.i 231921
setowner.e
push.s "obj_werewire_enemy_slash_Step_0_gml_98_0"@24039
conv.s.v
push.s "* Werewire's wire is loose!"@24040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [60]

:[50]
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
bf [52]

:[51]
push.i 231921
setowner.e
push.s "obj_werewire_enemy_slash_Step_0_gml_102_0"@24041
conv.s.v
push.s "* Werewire crackles incomprehensibly."@24042
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[52]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_werewire_enemy_slash_Step_0_gml_103_0"@24043
conv.s.v
push.s "* Werewire shuffles menacingly."@24044
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[54]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_werewire_enemy_slash_Step_0_gml_104_0"@24045
conv.s.v
push.s "* Werewire dusts sparks off its shoulders."@24046
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_werewire_enemy_slash_Step_0_gml_105_0"@24047
conv.s.v
push.s "* The atmosphere is electric."@24048
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[58]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_werewire_enemy_slash_Step_0_gml_106_0"@24049
conv.s.v
push.s "* Smells like ozone."@24050
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[60]
pushi.e 1
pop.v.i self.attacked
pushi.e 0
pop.v.i local.attackcheck
pushi.e 0
pop.v.i local.misscheck
pushi.e 0
pop.v.i local.i

:[61]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [65]

:[62]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.charaction
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1
pop.v.i local.attackcheck

:[64]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [61]

:[65]
pushloc.v local.attackcheck
pushi.e 1
cmp.i.v EQ
bf [74]

:[66]
pushi.e 0
pop.v.i local.i

:[67]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [74]

:[68]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v EQ
bf [70]

:[69]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.v local.misscheck
push.e 1
add.i.v
pop.v.v local.misscheck

:[73]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [67]

:[74]
pushloc.v local.misscheck
call.i gml_Script_scr_monsterpop(argc=0)
cmp.v.v EQ
bf [76]

:[75]
push.s "obj_werewire_enemy_slash_Step_0_gml_122_0"@24053
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Try timing your attacks by pressing ~1!"@24054
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[76]
b [79]

:[77]
pushi.e 485
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [79]

:[78]
pushi.e 60
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[79]
push.v self.shootcon
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
push.v self.shootmode
pushi.e 1
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [100]

:[83]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GTE
bf [85]

:[84]
push.v self.shootwait
push.e 1
sub.i.v
pop.v.v self.shootwait

:[85]
push.v self.shootwait
pushi.e 0
cmp.i.v LTE
bf [87]

:[86]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v GTE
b [88]

:[87]
push.e 0

:[88]
bf [98]

:[89]
push.v self.werewire_count
pushi.e 6
mul.i.v
pushi.e 7
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.werewire_count
mul.v.v
pop.v.v self.shootwait
push.v self.easymode
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.v self.werewire_count
pushi.e 10
mul.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.werewire_count
mul.v.v
pop.v.v self.shootwait

:[91]
push.v self.werewire_count
pushi.e 3
cmp.i.v EQ
bf [93]

:[92]
push.v self.werewire_count
pushi.e 5
mul.i.v
pushi.e 7
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.werewire_count
mul.v.v
pop.v.v self.shootwait

:[93]
push.v self.werewerewire
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 0
pop.v.i self.shootwait

:[95]
push.s "Chirashi"@24055
conv.s.v
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pushi.e 0
cmp.i.v GT
bf [97]

:[96]
push.v self.shootwait
pushi.e 10
push.v self.werewire_count
mul.v.i
add.v.v
pop.v.v self.shootwait

:[97]
pushi.e 1
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
b [100]

:[98]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v LT
bf [100]

:[99]
pushi.e 0
pop.v.i self.shootmode

:[100]
push.v self.shootcon
pushi.e 1
cmp.i.v EQ
bf [104]

:[101]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pop.v.v self.damage
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.shootcon
pushi.e 1721
pop.v.i self.sprite_index
push.v self.shootcon
pushi.e 20
cmp.i.v EQ
bf [103]

:[102]
pushi.e 1719
pop.v.i self.sprite_index

:[103]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.siner_timer
pushi.e 1
pop.v.i self.stop_anim
pushi.e 0
pop.v.i self.anim_timer_2
pushi.e 0
pop.v.i self.shootcount

:[104]
push.v self.shootcon
pushi.e 2
cmp.i.v EQ
bf [111]

:[105]
push.d 0.25
pop.v.d self.anim_add
push.v self.werewerewire
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
push.d 0.5
pop.v.d self.anim_add

:[107]
push.v self.image_index
pushi.e 3
cmp.i.v LT
bf [109]

:[108]
push.v self.image_index
push.v self.anim_add
push.v self.m
mul.v.v
add.v.v
pop.v.v self.image_index

:[109]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [111]

:[110]
pushi.e 3
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
pushi.e 0
pop.v.i self.shootcount

:[111]
push.v self.shootcon
pushi.e 3
cmp.i.v EQ
bf [124]

:[112]
push.v self.shoottimer
pushi.e 1
sub.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 0
cmp.i.v LTE
bf [122]

:[113]
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 0
pop.v.i local.i

:[114]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [121]

:[115]
pushi.e 475
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 52
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lasercircle
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.lasercircle
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.lasercircle
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.lasercircle
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [117]

:[116]
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.lasercircle
pushi.e -9
push.v [stacktop]self.y
push.v self.lasercircle
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.laser_angle
b [118]

:[117]
push.v self.laser_angle
pushi.e -2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.v.v self.laser_angle

:[118]
push.v self.laser_angle
pushi.e 5
sub.i.v
pushi.e 5
pushloc.v local.i
mul.v.i
add.v.v
push.v self.lasercircle
pushi.e -9
pop.v.v [stacktop]self.my_angle
pushi.e -1
pushloc.v local.i
add.v.i
push.d 0.8
mul.d.v
push.v self.m
mul.v.v
push.v self.lasercircle
pushi.e -9
pop.v.v [stacktop]self.my_angle_change
push.v self.lasercircle
pushi.e -9
pushenv [120]

:[119]
pushi.e 4
pop.v.i self.my_speed
push.d 0.2
pop.v.d self.my_accel
pushi.e 4
pop.v.i self.my_length

:[120]
popenv [119]
push.d 0.2
push.v self.werewerewire
push.d 0.2
mul.d.v
add.v.d
push.v self.lasercircle
pushi.e -9
pop.v.v [stacktop]self.my_accel
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [114]

:[121]
pushi.e 10
conv.i.d
push.v self.m
div.v.d
pop.v.v self.shoottimer
push.v self.shootcount
pushi.e 1
add.i.v
pop.v.v self.shootcount

:[122]
push.v self.shootcount
pushi.e 3
cmp.i.v GTE
bf [124]

:[123]
pushi.e 4
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shootimer

:[124]
push.v self.shootcon
pushi.e 4
cmp.i.v EQ
bf [130]

:[125]
push.v self.shoottimer
pushi.e 1
add.i.v
pop.v.v self.shoottimer
pushi.e 10
pop.v.i self.threshold
push.v self.werewerewire
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 2
pop.v.i self.threshold

:[127]
push.v self.shoottimer
push.v self.threshold
push.v self.m
div.v.v
cmp.v.v GTE
bf [130]

:[128]
push.v self.image_index
push.d 0.25
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 9
cmp.i.v GTE
bf [130]

:[129]
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.image_index
pushi.e 1710
pop.v.i self.sprite_index
push.d 0.16
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.stop_anim

:[130]
push.v self.shootcon
pushi.e 20
cmp.i.v EQ
bf [135]

:[131]
push.i 170532
setowner.e
pushi.e -24
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bx1
pushi.e -40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.bx1
pushi.e -48
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.bx1
pushi.e -46
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.bx1
pushi.e -26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.bx1
push.i 170533
setowner.e
pushi.e -54
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.by1
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.by1
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.by1
pushi.e 46
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.by1
pushi.e 72
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.by1
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [133]

:[132]
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
pushi.e -1
pushi.e 2
push.v [array]self.by1
add.v.v
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.bx1
add.v.v
call.i point_direction(argc=4)
pushi.e 10
sub.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.bullet_angle
b [134]

:[133]
push.v self.bullet_angle
pushi.e -10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.v.v self.bullet_angle

:[134]
pushi.e 21
pop.v.i self.shootcon

:[135]
push.v self.shootcon
pushi.e 21
cmp.i.v EQ
bf [157]

:[136]
push.v self.shoottimer
pushi.e 1
add.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 15
conv.i.d
push.v self.m
div.v.d
cmp.v.v GTE
bf [157]

:[137]
push.v self.image_index
push.d 0.25
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [139]

:[138]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 121
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[139]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [141]

:[140]
push.v self.image_index
pushi.e 3
cmp.i.v LTE
b [142]

:[141]
push.e 0

:[142]
bf [148]

:[143]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [147]

:[144]
push.v self.shootcount
pushi.e 5
cmp.i.v LT
bf [146]

:[145]
push.i 167278
setowner.e
pushi.e 474
conv.i.v
push.v self.y
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.by1
add.v.v
push.v self.x
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bx1
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.shootcount
conv.v.i
pop.v.v [array]self.bullet
push.i 231467
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 231464
setowner.e
push.v self.mytarget
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.i 231509
setowner.e
pushi.e 5
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.i 133642
setowner.e
pushi.e 1745
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 236041
setowner.e
pushi.e 0
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.stretch
push.i 133655
setowner.e
push.d 0.2
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133650
setowner.e
pushi.e 4
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 4
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133625
setowner.e
push.v self.bullet_angle
pushi.e 28
sub.i.v
push.v self.shootcount
pushi.e 14
mul.i.v
add.v.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133652
setowner.e
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133626
setowner.e
pushi.e 9
push.v self.initid
sub.v.i
push.v self.werewerewire
sub.v.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133627
setowner.e
pushi.e 1
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.shootcount
pushi.e 1
add.i.v
pop.v.v self.shootcount

:[146]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [144]

:[147]
popz.i

:[148]
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [157]

:[149]
pushi.e 0
pop.v.i local.i

:[150]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [156]

:[151]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pushenv [155]

:[152]
push.v self.speed
pushi.e 0
cmp.i.v LTE
bf [154]

:[153]
push.d 0.2
pop.v.d self.speed

:[154]
push.d -0.25
pop.v.d self.friction

:[155]
popenv [152]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [150]

:[156]
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.image_index
pushi.e 1710
pop.v.i self.sprite_index
push.d 0.16
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.stop_anim

:[157]
push.v self.hangcon
pushi.e 1
cmp.i.v EQ
bf [160]

:[158]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
push.v self.hangvspeed
pushi.e 1
push.v self.m
mul.v.i
sub.v.v
pop.v.v self.hangvspeed
push.v self.hangy
push.v self.hangvspeed
add.v.v
pop.v.v self.hangy
push.v self.y
push.v self.hangy
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 60
add.i.v
cmp.v.v LTE
bf [160]

:[159]
pushi.e 2
pop.v.i self.hangcon
pushi.e 0
pop.v.i self.hangtimer

:[160]
push.v self.hangcon
pushi.e 2
cmp.i.v EQ
bf [165]

:[161]
push.v self.hangy
push.v self.hangvspeed
add.v.v
pop.v.v self.hangy
push.v self.hangvspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GTE
bf [163]

:[162]
push.v self.hangvspeed
push.d 0.5
mul.d.v
pop.v.v self.hangvspeed

:[163]
push.v self.hangvspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [165]

:[164]
pushi.e 0
pop.v.i self.hangvspeed
pushi.e 3
pop.v.i self.hangcon

:[165]
push.v self.hangcon
pushi.e 1
cmp.i.v GTE
bf [167]

:[166]
push.v self.hangcon
pushi.e 3
cmp.i.v LTE
b [168]

:[167]
push.e 0

:[168]
bf [172]

:[169]
push.v self.xmovement_finished
pushi.e 0
cmp.i.v EQ
bf [172]

:[170]
push.v self.x
push.v self.x
push.v self.targetx
sub.v.v
pushi.e 6
push.v self.m
mul.v.i
div.v.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.targetx
pushi.e 2
add.i.v
cmp.v.v LTE
bf [172]

:[171]
push.v self.targetx
pop.v.v self.x
pushi.e 1
pop.v.i self.xmovement_finished

:[172]
push.v self.hangcon
pushi.e 3
cmp.i.v EQ
bf [175]

:[173]
push.v self.xmovement_finished
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
pushi.e 4
pop.v.i self.hangcon

:[175]
push.v self.hangcon
pushi.e 2
cmp.i.v GTE
bf [178]

:[176]
push.v self.hangcon
pushi.e 5
cmp.i.v LT
bf [178]

:[177]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GTE
b [179]

:[178]
push.e 0

:[179]
bf [182]

:[180]
push.v self.hangsparktimer
push.e 1
add.i.v
pop.v.v self.hangsparktimer
push.v self.hangsparktimer
pushi.e 6
cmp.i.v GTE
bf [182]

:[181]
pushi.e 0
pop.v.i self.hangsparktimer
pushi.e 0
pop.v.i self.shootcount
push.i 167278
setowner.e
pushi.e 474
conv.i.v
push.v self.y
push.v self.hangy
add.v.v
pushi.e 80
add.i.v
push.v self.x
push.v self.hangx
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.shootcount
conv.v.i
pop.v.v [array]self.bullet
push.i 231467
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 231464
setowner.e
push.v self.mytarget
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.i 231509
setowner.e
pushi.e 6
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.i 133642
setowner.e
pushi.e 1745
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 236041
setowner.e
pushi.e 0
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.stretch
push.i 133655
setowner.e
push.d 0.2
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133650
setowner.e
pushi.e 4
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 4
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133623
setowner.e
pushi.e -3
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133652
setowner.e
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133624
setowner.e
pushi.e -9
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 133628
setowner.e
push.d 0.5
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity

:[182]
push.v self.hangcon
pushi.e 4
cmp.i.v EQ
bf [185]

:[183]
push.v self.hangsiner
pushi.e 1
push.v self.m
mul.v.i
add.v.v
pop.v.v self.hangsiner
push.v self.x
push.v self.hangsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x
pushglb.v global.turntimer
pushi.e 20
cmp.i.v LTE
bf [185]

:[184]
pushi.e 5
pop.v.i self.hangcon

:[185]
push.v self.hangcon
pushi.e 5
cmp.i.v EQ
bf [195]

:[186]
push.v self.hangy
push.v self.hangy
push.v self.init_hangy
sub.v.v
pushi.e 8
conv.i.d
push.v self.m
div.v.d
div.v.v
sub.v.v
pop.v.v self.hangy
push.v self.hangy
push.v self.init_hangy
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [188]

:[187]
push.v self.init_hangy
pop.v.v self.hangy

:[188]
push.v self.x
push.v self.x
push.v self.remx
sub.v.v
pushi.e 8
conv.i.d
push.v self.m
div.v.d
div.v.v
pushi.e 1
sub.i.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.remx
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [190]

:[189]
push.v self.remx
pop.v.v self.x

:[190]
push.v self.hangy
push.v self.init_hangy
cmp.v.v EQ
bf [192]

:[191]
push.v self.x
push.v self.remx
cmp.v.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 0
pop.v.i self.hangcon
pushi.e 1710
pop.v.i self.sprite_index

:[195]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[196]
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
bf [198]

:[197]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
pushi.e 1
pop.v.i self.actcon
push.s "obj_werewire_enemy_slash_Step_0_gml_393_0"@24062
conv.s.v
push.s "* WEREWIRE - Controlled by the Queen's wire, it's sleepwalking through a nightmare!/%"@24063
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[201]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [203]

:[202]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [204]

:[203]
push.e 0

:[204]
bf [212]

:[205]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
push.s "obj_werewire_enemy_slash_Step_0_gml_399_0"@24064
conv.s.v
push.s "* You jiggled your body. The wire loosened in turn!/%"@24065
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [208]

:[207]
push.s "obj_werewire_enemy_slash_Step_0_gml_399_1"@24066
conv.s.v
push.s "* You jiggled your body!/%"@24067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[208]
pop.v.v local.simultext
pushi.e 1
conv.i.v
push.d 0.25
conv.d.v
pushi.e 1430
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [210]

:[209]
pushi.e 20
conv.i.v
b [211]

:[210]
pushi.e -1
conv.i.v

:[211]
pop.v.v self.actcon

:[212]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [214]

:[213]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [215]

:[214]
push.e 0

:[215]
bf [221]

:[216]
pushi.e 12
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 392
pushenv [220]

:[217]
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 33
cmp.i.v EQ
bf [219]

:[218]
pushi.e 15
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 206
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
push.v self.initid
pushi.e 100
mul.i.v
sub.v.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
b [220]

:[219]
pushi.e 15
conv.i.v
push.v self.y
pushi.e 740
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[220]
popenv [217]

:[221]
push.v self.actcon
pushi.e 13
cmp.i.v EQ
bf [229]

:[222]
push.s "obj_werewire_enemy_slash_Step_0_gml_425_0"@24068
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 to throw, aim for the weakpoint!"@24069
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushi.e 476
pushenv [224]

:[223]
pushi.e 478
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.target
push.v self.id
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.maker

:[224]
popenv [223]
pushi.e 372
pushenv [226]

:[225]
pushi.e 0
pop.v.i self.visible

:[226]
popenv [225]
pushi.e 373
pushenv [228]

:[227]
pushi.e 0
pop.v.i self.visible

:[228]
popenv [227]
pushi.e 477
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.throwsus
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 14
pop.v.i self.actcon

:[229]
push.v self.actcon
pushi.e 15
cmp.i.v EQ
bf [233]

:[230]
pushi.e 392
pushenv [232]

:[231]
pushi.e 15
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v

:[232]
popenv [231]
pushi.e 16
pop.v.i self.actcon
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[233]
push.v self.actcon
pushi.e 17
cmp.i.v EQ
bf [237]

:[234]
pushi.e 1
pop.v.i self.actcon
pushi.e 476
pushenv [236]

:[235]
push.v self.mercyaccumulated
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 0
pop.v.i self.mercyaccumulated

:[236]
popenv [235]

:[237]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [239]

:[238]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [248]

:[241]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [243]

:[242]
push.s "obj_werewire_enemy_slash_Step_0_gml_457_0"@24070
conv.s.v
push.s "* Susie yanked on the wire! It loosened a little bit./%"@24071
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [244]

:[243]
push.s "obj_werewire_enemy_slash_Step_0_gml_457_1"@24072
conv.s.v
push.s "* Susie yanked the wire!/%"@24073
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[244]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 25
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [246]

:[245]
pushi.e 20
conv.i.v
b [247]

:[246]
pushi.e 0
conv.i.v

:[247]
pop.v.v self.actconsus

:[248]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [250]

:[249]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [251]

:[250]
push.e 0

:[251]
bf [259]

:[252]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [254]

:[253]
push.s "obj_werewire_enemy_slash_Step_0_gml_469_0"@24074
conv.s.v
push.s "* Ralsei sang a snake-charming song to the wire! It loosened a little bit./%"@24075
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [255]

:[254]
push.s "obj_werewire_enemy_slash_Step_0_gml_469_1"@24076
conv.s.v
push.s "* Ralsei charmed the wire!/%"@24077
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[255]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 25
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [257]

:[256]
pushi.e 20
conv.i.v
b [258]

:[257]
pushi.e 0
conv.i.v

:[258]
pop.v.v self.actconral

:[259]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [261]

:[260]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [262]

:[261]
push.e 0

:[262]
bf [270]

:[263]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [265]

:[264]
push.s "obj_werewire_enemy_slash_Step_0_gml_481_0"@24078
conv.s.v
push.s "* Noelle pulled out the plug like a fairy light!/%"@24079
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [266]

:[265]
push.s "obj_werewire_enemy_slash_Step_0_gml_481_1"@24080
conv.s.v
push.s "* Noelle pulled on the plug!/%"@24081
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[266]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordernoe
pushi.e 0
cmp.i.v EQ
bf [268]

:[267]
pushi.e 20
conv.i.v
b [269]

:[268]
pushi.e 0
conv.i.v

:[269]
pop.v.v self.actconnoe

:[270]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [272]

:[271]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [273]

:[272]
push.e 0

:[273]
bf [274]

:[274]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [276]

:[275]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [277]

:[276]
push.e 0

:[277]
bf [279]

:[278]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[279]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [283]

:[280]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [283]

:[281]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [283]

:[282]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [284]

:[283]
push.e 1

:[284]
bf [end]

:[285]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[286]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]