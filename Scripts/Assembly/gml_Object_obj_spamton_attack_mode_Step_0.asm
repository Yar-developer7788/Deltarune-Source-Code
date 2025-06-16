.localvar 2 arguments
.localvar 25457 attackstring 12250
.localvar 12080 xoff 12251
.localvar 25461 falsetimer 12252

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.attack
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 25
pop.v.i self.firingspeed
b [4]

:[3]
push.v self.firingspeed
pushi.e 10
conv.i.v
call.i irandom(argc=1)
sub.v.v
pop.v.v self.btimer

:[4]
pushi.e 1
pop.v.i self.init

:[5]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [6]

:[6]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [11]

:[7]
push.v self.reposition
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.reposition
push.v self.x
push.v self.pieceoffset_x
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.pieceoffset_y
sub.v.v
pop.v.v self.y

:[9]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.state

:[11]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [57]

:[12]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.attack
pushi.e 0
cmp.i.v NEQ
bf [14]

:[13]
push.v self.ystart
push.v self.pieceoffset_y
sub.v.v
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pop.v.v self.y

:[14]
push.v self.btimer
push.v self.firingspeed
cmp.v.v GTE
bf [16]

:[15]
push.v self.attack
pushi.e 2
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [41]

:[18]
push.v self.attack
pushi.e 0
cmp.i.v EQ
bf [31]

:[19]
pushi.e 586
conv.i.v
push.v self.y
push.v self.mouthy
add.v.v
push.v self.x
push.v self.mouthx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.jumpy
pushi.e 0
cmp.i.v EQ
bf [26]

:[20]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.jumper
push.v self.doublecount
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 2
pop.v.i self.jumpy
pushi.e 0
pop.v.i self.doublecount
b [25]

:[22]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.jumpy
push.v self.jumpy
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.doublecount
push.e 1
add.i.v
pop.v.v self.doublecount
b [25]

:[24]
pushi.e 0
pop.v.i self.doublecount

:[25]
b [27]

:[26]
push.v self.jumpy
push.e 1
sub.i.v
pop.v.v self.jumpy

:[27]
push.v self.flip
conv.v.b
bf [29]

:[28]
push.d 0.12
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
b [30]

:[29]
push.d -0.19
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity

:[30]
pushi.e 1
push.v self.flip
sub.v.i
pop.v.v self.flip
b [40]

:[31]
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_6"@25443
conv.s.v
push.s "$$49.998"@25444
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_5"@25445
conv.s.v
push.s "BARGAIN$"@25446
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_4"@25447
conv.s.v
push.s "$PRICES$"@25448
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_3"@25449
conv.s.v
push.s "$\"CHEAP\""@25450
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_2"@25451
conv.s.v
push.s "$$REAL$$"@25452
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_1"@25453
conv.s.v
push.s "$VALUES$"@25454
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_spamton_attack_mode_slash_Step_0_gml_69_0"@25455
conv.s.v
push.s "$$DEALS$"@25456
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i choose(argc=7)
pop.v.v local.attackstring
pushloc.v local.attackstring
push.s "obj_spamton_attack_mode_slash_Step_0_gml_70_0"@25458
conv.s.v
push.s "$VALUES$"@25454
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [33]

:[32]
pushi.e 19
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.s "obj_spamton_attack_mode_slash_Step_0_gml_70_1"@25459
conv.s.v
push.s "$VAULES$"@25460
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.attackstring

:[36]
push.v self.mouthx
pop.v.v local.xoff
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
pop.v.v local.falsetimer
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushloc.v local.attackstring
call.i string_length(argc=1)
cmp.v.v LT
bf [39]

:[38]
pushi.e 587
conv.i.v
push.v self.y
push.v self.mouthy
add.v.v
pushi.e 10
sub.i.v
push.v self.timer
pushi.e 20
add.i.v
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.x
pushloc.v local.xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 10
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushloc.v local.xoff
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.timer
push.v self.y
push.v self.mouthy
add.v.v
pushi.e 10
sub.i.v
push.v self.d
pushi.e -9
push.v [stacktop]self.ystart
sub.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.offset
push.v self.x
push.v self.mouthx
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.mouthx
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.i
pushi.e 1
add.i.v
pushloc.v local.attackstring
call.i string_char_at(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.bulletletter
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v local.xoff
pushi.e 15
add.i.v
pop.v.v local.xoff
push.v self.made
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.type
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [37]

:[39]
pushi.e 1
push.v self.made
sub.v.i
pop.v.v self.made

:[40]
pushi.e 0
pop.v.i self.btimer
b [52]

:[41]
push.v self.btimer
push.v self.firingspeed
cmp.v.v GTE
bf [44]

:[42]
push.v self.attack
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v GTE
b [45]

:[44]
push.e 0

:[45]
bf [52]

:[46]
push.v self.inhalesfx
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
pop.v.i self.inhalesfx
pushi.e 137
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 5
conv.i.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch_time(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[48]
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
push.v self.effecttimer
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [52]

:[49]
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [52]

:[51]
pushi.e 753
conv.i.v
push.v self.y
push.v self.mouthy
add.v.v
push.v self.x
push.v self.mouthx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 40
conv.i.v
call.i irandom(argc=1)
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 120
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.d 0.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.distance_multiplier
pushi.e 12
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.max_radius
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [50]

:[52]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v LTE
bf [54]

:[53]
push.v self.btimer
pushi.e 8
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 10
pop.v.i self.timer
pushi.e 3
pop.v.i self.state

:[57]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [62]

:[58]
push.v self.inhalesfx
conv.v.b
bf [60]

:[59]
pushi.e 0
pop.v.i self.inhalesfx
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[60]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
pushi.e 4
pop.v.i self.image_index
pushi.e -1
pop.v.i self.image_speed
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 4
pop.v.i self.state

:[62]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [end]

:[63]
push.v self.image_index
pushi.e 0
cmp.i.v LTE
bf [end]

:[64]
pushi.e 0
pop.v.i self.image_speed

:[end]