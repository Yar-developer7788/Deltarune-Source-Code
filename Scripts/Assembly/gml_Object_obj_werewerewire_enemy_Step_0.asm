.localvar 2 arguments
.localvar 24114 mercy_amount 11120
.localvar 23076 simultext 11121

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [144]

:[1]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
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

:[8]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [19]

:[12]
pushi.e 0
pop.v.i self.rtimer
pushi.e 480
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [14]

:[13]
pushi.e 2
pop.v.i global.mnfight

:[14]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [19]

:[15]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[17]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[18]
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

:[19]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [21]

:[20]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [44]

:[23]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [43]

:[24]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [28]

:[25]
pushi.e 210
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
pushi.e 0
pop.v.i self.shootcon
pushi.e 1
pop.v.i self.shootmode
pushi.e 0
pop.v.i self.shoottimer
push.v self.object_index
pushi.e -9
pushenv [27]

:[26]
pushi.e 5
conv.i.v
call.i random(argc=1)
pop.v.v self.shootwait

:[27]
popenv [26]
call.i gml_Script_scr_monsterpop(argc=0)
pop.v.v self.werewire_count
b [30]

:[28]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 390
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
sub.i.v
push.d 1.4
mul.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 34
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.type

:[30]
pushi.e 140
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
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
bf [32]

:[31]
push.i 231921
setowner.e
push.s "obj_werewerewire_enemy_slash_Step_0_gml_97_0"@24100
conv.s.v
push.s "* Werewerewire's wire is loose^1!&* ... well^1, it would be."@24101
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [42]

:[32]
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
bf [34]

:[33]
push.i 231921
setowner.e
push.s "obj_werewerewire_enemy_slash_Step_0_gml_101_0"@24102
conv.s.v
push.s "* Werewerewire crackles at a level too high for you to understand."@24103
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[34]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_102_0"@24104
conv.s.v
push.s "* Werewerewire shuffles coolly."@24105
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[36]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_103_0"@24106
conv.s.v
push.s "* Werewerewire looks strong just standing there."@24107
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[38]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_104_0"@24108
conv.s.v
push.s "* Werewerewire pretends to ignore you."@24109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[40]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_105_0"@24110
conv.s.v
push.s "* Smells like a lightning strike."@24111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[42]
pushi.e 1
pop.v.i self.attacked
b [44]

:[43]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[44]
push.v self.shootcon
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.shootmode
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [57]

:[48]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GTE
bf [50]

:[49]
push.v self.shootwait
push.e 1
sub.i.v
pop.v.v self.shootwait

:[50]
push.v self.shootwait
pushi.e 0
cmp.i.v LTE
bf [52]

:[51]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v GTE
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
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
pushi.e 0
pop.v.i self.shootwait
pushi.e 1
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
b [57]

:[55]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v LT
bf [57]

:[56]
pushi.e 0
pop.v.i self.shootmode

:[57]
push.v self.shootcon
pushi.e 1
cmp.i.v EQ
bf [61]

:[58]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.shootcon
pushi.e 2085
pop.v.i self.sprite_index
push.v self.shootcon
pushi.e 20
cmp.i.v EQ
bf [60]

:[59]
pushi.e 2084
pop.v.i self.sprite_index

:[60]
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

:[61]
push.v self.shootcon
pushi.e 2
cmp.i.v EQ
bf [66]

:[62]
push.d 0.5
pop.v.d self.anim_add
push.v self.image_index
pushi.e 3
cmp.i.v LT
bf [64]

:[63]
push.v self.image_index
push.v self.anim_add
push.v self.m
mul.v.v
add.v.v
pop.v.v self.image_index

:[64]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [66]

:[65]
pushi.e 3
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
pushi.e 0
pop.v.i self.shootcount

:[66]
push.v self.shootcon
pushi.e 3
cmp.i.v EQ
bf [78]

:[67]
push.v self.shoottimer
pushi.e 1
sub.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 0
cmp.i.v LTE
bf [76]

:[68]
pushi.e 0
pop.v.i self.i

:[69]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [75]

:[70]
push.d 1.9
conv.d.v
push.d 0.8
conv.d.v
pushi.e 220
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
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
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [72]

:[71]
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

:[72]
push.v self.laser_angle
pushi.e 5
sub.i.v
pushi.e 5
push.v self.i
mul.v.i
add.v.v
push.v self.lasercircle
pushi.e -9
pop.v.v [stacktop]self.my_angle
pushi.e -1
push.v self.i
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
pushenv [74]

:[73]
pushi.e 4
pop.v.i self.my_speed
push.d 0.2
pop.v.d self.my_accel
pushi.e 4
pop.v.i self.my_length

:[74]
popenv [73]
push.d 0.4
push.v self.lasercircle
pushi.e -9
pop.v.d [stacktop]self.my_accel
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [69]

:[75]
pushi.e 10
conv.i.d
push.v self.m
div.v.d
pop.v.v self.shoottimer
push.v self.shootcount
pushi.e 1
add.i.v
pop.v.v self.shootcount

:[76]
push.v self.shootcount
pushi.e 3
cmp.i.v GTE
bf [78]

:[77]
pushi.e 4
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shootimer

:[78]
push.v self.shootcon
pushi.e 4
cmp.i.v EQ
bf [82]

:[79]
push.v self.shoottimer
pushi.e 1
add.i.v
pop.v.v self.shoottimer
pushi.e 2
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
sub.i.v
pushi.e 10
mul.i.v
add.v.i
pop.v.v self.threshold
push.v self.shoottimer
push.v self.threshold
push.v self.m
div.v.v
cmp.v.v GTE
bf [82]

:[80]
push.v self.image_index
push.d 0.25
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 9
cmp.i.v GTE
bf [82]

:[81]
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.image_index
pushi.e 2082
pop.v.i self.sprite_index
push.d 0.16
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.stop_anim

:[82]
push.v self.shootcon
pushi.e 20
cmp.i.v EQ
bf [84]

:[83]
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
pushi.e 21
pop.v.i self.shootcon

:[84]
push.v self.shootcon
pushi.e 21
cmp.i.v EQ
bf [106]

:[85]
push.v self.shoottimer
pushi.e 1
add.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 15
conv.i.d
push.v self.m
div.v.d
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
sub.i.v
pushi.e 10
mul.i.v
add.v.v
cmp.v.v GTE
bf [106]

:[86]
push.v self.image_index
push.d 0.25
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 121
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[88]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [90]

:[89]
push.v self.image_index
pushi.e 3
cmp.i.v LTE
b [91]

:[90]
push.e 0

:[91]
bf [97]

:[92]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [96]

:[93]
push.v self.shootcount
pushi.e 5
cmp.i.v LT
bf [95]

:[94]
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
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.speed
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

:[95]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [93]

:[96]
popz.i

:[97]
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [106]

:[98]
pushi.e 0
pop.v.i self.i

:[99]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [105]

:[100]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pushenv [104]

:[101]
push.v self.speed
pushi.e 0
cmp.i.v LTE
bf [103]

:[102]
push.d 0.2
pop.v.d self.speed

:[103]
push.d -0.25
pop.v.d self.friction

:[104]
popenv [101]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [99]

:[105]
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.image_index
pushi.e 2082
pop.v.i self.sprite_index
push.d 0.16
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.stop_anim

:[106]
push.v self.hangcon
pushi.e 1
cmp.i.v EQ
bf [109]

:[107]
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
bf [109]

:[108]
pushi.e 2
pop.v.i self.hangcon
pushi.e 0
pop.v.i self.hangtimer

:[109]
push.v self.hangcon
pushi.e 2
cmp.i.v EQ
bf [114]

:[110]
push.v self.hangy
push.v self.hangvspeed
add.v.v
pop.v.v self.hangy
push.v self.hangvspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GTE
bf [112]

:[111]
push.v self.hangvspeed
push.d 0.5
mul.d.v
pop.v.v self.hangvspeed

:[112]
push.v self.hangvspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [114]

:[113]
pushi.e 0
pop.v.i self.hangvspeed
pushi.e 3
pop.v.i self.hangcon

:[114]
push.v self.hangcon
pushi.e 1
cmp.i.v GTE
bf [116]

:[115]
push.v self.hangcon
pushi.e 3
cmp.i.v LTE
b [117]

:[116]
push.e 0

:[117]
bf [121]

:[118]
push.v self.xmovement_finished
pushi.e 0
cmp.i.v EQ
bf [121]

:[119]
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
bf [121]

:[120]
push.v self.targetx
pop.v.v self.x
pushi.e 1
pop.v.i self.xmovement_finished

:[121]
push.v self.hangcon
pushi.e 3
cmp.i.v EQ
bf [124]

:[122]
push.v self.xmovement_finished
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
pushi.e 4
pop.v.i self.hangcon

:[124]
push.v self.hangcon
pushi.e 2
cmp.i.v GTE
bf [127]

:[125]
push.v self.hangcon
pushi.e 5
cmp.i.v LT
bf [127]

:[126]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GTE
b [128]

:[127]
push.e 0

:[128]
bf [131]

:[129]
push.v self.hangsparktimer
push.e 1
add.i.v
pop.v.v self.hangsparktimer
push.v self.hangsparktimer
pushi.e 20
cmp.i.v GTE
bf [131]

:[130]
pushi.e 0
pop.v.i self.hangsparktimer
pushi.e 0
pop.v.i self.shootcount
pushi.e 739
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
pop.v.v self.d
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
conv.i.v
call.i irandom(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.attackdirection

:[131]
push.v self.hangcon
pushi.e 4
cmp.i.v EQ
bf [134]

:[132]
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
bf [134]

:[133]
pushi.e 5
pop.v.i self.hangcon

:[134]
push.v self.hangcon
pushi.e 5
cmp.i.v EQ
bf [144]

:[135]
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
bf [137]

:[136]
push.v self.init_hangy
pop.v.v self.hangy

:[137]
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
bf [139]

:[138]
push.v self.remx
pop.v.v self.x

:[139]
push.v self.hangy
push.v self.init_hangy
cmp.v.v EQ
bf [141]

:[140]
push.v self.x
push.v self.remx
cmp.v.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
pushi.e 0
pop.v.i self.hangcon
pushi.e 2082
pop.v.i self.sprite_index

:[144]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[145]
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
bf [147]

:[146]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
pushi.e 1
pop.v.i self.actcon
push.s "obj_werewerewire_enemy_slash_Step_0_gml_377_0"@24112
conv.s.v
push.s "* WEREWEREWIRE - It absorbed the wire and became stronger. Be careful!/%"@24113
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[150]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [152]

:[151]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [164]

:[154]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
pushi.e 12
conv.i.v
b [157]

:[156]
pushi.e 7
conv.i.v

:[157]
pop.v.v local.mercy_amount
pushloc.v local.mercy_amount
push.v self.mercy_act
mul.v.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_383_0"@24115
conv.s.v
push.s "* You and Werewerewire locked eyes. The atmosphere is electric.../%"@24116
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [160]

:[159]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_383_1"@24117
conv.s.v
push.s "* You watched coldly./%"@24118
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[160]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 20
conv.i.v
b [163]

:[162]
pushi.e 1
conv.i.v

:[163]
pop.v.v self.actcon

:[164]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [166]

:[165]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
pushi.e 16
push.v self.mercy_act
mul.v.i
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_werewerewire_enemy_slash_Step_0_gml_393_0"@24119
conv.s.v
push.s "* You and Susie told Werewerewire you'd beat them up!/"@24120
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_werewerewire_enemy_slash_Step_0_gml_394_0"@24121
conv.s.v
push.s "* The air crackles with fighting spirit!/%"@24122
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[169]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [171]

:[170]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [176]

:[173]
pushi.e 5
push.v self.mercy_act
mul.v.i
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 483
pushenv [175]

:[174]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
push.v self.mercy_act
pushi.e 1
add.i.v
call.i clamp(argc=3)
pop.v.v self.mercy_act

:[175]
popenv [174]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_werewerewire_enemy_slash_Step_0_gml_408_0"@24123
conv.s.v
push.s "* You and Ralsei whispered sweetly to Werewerewire!/"@24124
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_werewerewire_enemy_slash_Step_0_gml_409_0"@24125
conv.s.v
push.s "* It pretended not to care^1, but ACTs became more effective!/%"@24126
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[176]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [178]

:[177]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [179]

:[178]
push.e 0

:[179]
bf [190]

:[180]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
pushi.e 12
conv.i.v
b [183]

:[182]
pushi.e 7
conv.i.v

:[183]
pop.v.v local.mercy_amount
pushloc.v local.mercy_amount
push.v self.mercy_act
mul.v.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e 0
cmp.i.v EQ
bf [185]

:[184]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_412_0"@24127
conv.s.v
push.s "* Susie snorted \"tch!\"/%"@24128
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [186]

:[185]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_412_1"@24129
conv.s.v
push.s "* Susie laughed \"heh!\"/%"@24130
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[186]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [188]

:[187]
pushi.e 20
conv.i.v
b [189]

:[188]
pushi.e 0
conv.i.v

:[189]
pop.v.v self.actconsus

:[190]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [204]

:[194]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [196]

:[195]
pushi.e 12
conv.i.v
b [197]

:[196]
pushi.e 7
conv.i.v

:[197]
pop.v.v local.mercy_amount
pushloc.v local.mercy_amount
push.v self.mercy_act
mul.v.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_424_0"@24131
conv.s.v
push.s "* Ralsei winks demurely!/%"@24132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [200]

:[199]
push.s "obj_werewerewire_enemy_slash_Step_0_gml_424_1"@24133
conv.s.v
push.s "* Ralsei smiled sweetly!/%"@24134
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[200]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [202]

:[201]
pushi.e 20
conv.i.v
b [203]

:[202]
pushi.e 0
conv.i.v

:[203]
pop.v.v self.actconral

:[204]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [206]

:[205]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[209]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [212]

:[210]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [212]

:[211]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [213]

:[212]
push.e 1

:[213]
bf [end]

:[214]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[215]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[end]