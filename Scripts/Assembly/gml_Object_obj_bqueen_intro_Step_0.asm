.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 45
cmp.i.v GTE
bf [5]

:[2]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 28
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_bqueen_intro_slash_Step_0_gml_13_0"@36328
conv.s.v
push.s "* Finally... a worthy opponent.../%"@36329
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 376
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 64
pushenv [4]

:[3]
pushi.e 3
pop.v.i self.rate
pushi.e 0
pop.v.i self.skippable
push.v self.y
pushi.e 320
sub.i.v
pop.v.v self.writingy

:[4]
popenv [3]

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 3
pop.v.i self.con
pushi.e -120
pop.v.i self.y
pushi.e 2104
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 2
pop.v.i self.gravity

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
pushi.e 280
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [22]

:[14]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
call.i gml_Script_cameray(argc=0)
pushi.e 0
cmp.i.v LT
bf [16]

:[15]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 7
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
b [17]

:[16]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[17]
pushi.e 1081
pushenv [21]

:[18]
push.v self.y
pushi.e 390
cmp.i.v LT
bf [20]

:[19]
push.v self.y
pushi.e 6
add.i.v
pop.v.v self.y
b [21]

:[20]
pushi.e 390
pop.v.i self.y

:[21]
popenv [18]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.2
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
add.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss

:[22]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
push.v self.y
pushi.e 280
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [30]

:[26]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 4
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 2098
pop.v.i self.sprite_index
pushi.e 21
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 300
pop.v.i self.y
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[27]
pushi.e 193
conv.i.v
b [29]

:[28]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[29]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [33]

:[31]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [33]

:[32]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[33]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [40]

:[34]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1084
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 220
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[36]
push.v self.timer
pushi.e 52
cmp.i.v EQ
bf [38]

:[37]
pushi.e 11
conv.i.v
push.v 1084.y
push.v 1084.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[38]
push.v self.timer
pushi.e 92
cmp.i.v EQ
bf [40]

:[39]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.readycon

:[40]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [48]

:[41]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bt [43]

:[42]
push.v self.timer
pushi.e 10
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[46]
push.v self.timer
pushi.e 22
cmp.i.v EQ
bf [48]

:[47]
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[48]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[49]
pushi.e 9
pop.v.i self.con
pushi.e 1081
pushenv [51]

:[50]
pushi.e 150
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer

:[51]
popenv [50]

:[end]