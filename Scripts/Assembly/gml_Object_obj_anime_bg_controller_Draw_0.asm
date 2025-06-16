.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
call.i gml_Script_camerax(argc=0)
pop.v.v self.x
push.v self.image_alpha
push.d 0.1
cmp.d.v GT
bf [2]

:[1]
push.v self.init
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.init
pushi.e 245
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.dronesfx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.dronesfx
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 60
conv.i.v
push.d 0.5
conv.d.v
push.v self.dronesfx
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.1
conv.d.v
push.v self.dronesfx
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[5]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v self.linesfxtimer
push.e 1
add.i.v
pop.v.v self.linesfxtimer
push.v self.linesfxtimer
pushi.e 4
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.linesfxtimer
pushi.e 243
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.sidenoise
pushi.e 0
conv.i.v
push.d 0.3
conv.d.v
push.v self.sidenoise
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.6
push.d 0.6
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.sidenoise
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[8]
pushi.e 195
conv.i.v
pushi.e 90
conv.i.v
pushi.e 255
conv.i.v
call.i make_colour_rgb(argc=3)
pop.v.v self.c_extra
call.i draw_self(argc=0)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 480
add.i.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushbltn.v builtin.room
pushi.e 207
cmp.i.v EQ
bf [12]

:[9]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 450
sub.i.v
cmp.v.v LT
bf [11]

:[10]
push.v self.y
pushi.e 450
add.i.v
pop.v.v self.y

:[11]
b [14]

:[12]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 450
sub.i.v
cmp.v.v LT
bf [14]

:[13]
pushi.e 0
pop.v.i self.y

:[14]
push.v self.timer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1075
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 0
add.i.v
pushi.e 70
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[16]
push.v self.timer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [18]

:[17]
pushi.e 1075
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 70
add.i.v
pushi.e 70
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[18]
push.v self.timer
pushi.e 44
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [20]

:[19]
pushi.e 1075
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 70
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[20]
push.v self.timer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [22]

:[21]
pushi.e 1075
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 570
add.i.v
pushi.e 70
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[22]
push.v self.timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [24]

:[23]
pushi.e 1074
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 0
add.i.v
pushi.e 320
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[24]
push.v self.timer
pushi.e 30
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1074
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pushi.e 320
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[26]
push.v self.timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [28]

:[27]
pushi.e 1074
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[28]
push.v self.timer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [30]

:[29]
pushi.e 1073
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 260
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ellipse
push.v self.c_extra
push.v self.ellipse
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[30]
push.v self.timer
pushi.e 16
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1073
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 260
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ellipse
push.v self.c_extra
push.v self.ellipse
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[32]
push.v self.timer
pushi.e 28
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [34]

:[33]
pushi.e 1073
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 260
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ellipse
push.v self.c_extra
push.v self.ellipse
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[34]
push.v self.timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1073
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 0
add.i.v
pushi.e 640
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ellipse
push.i 65535
push.v self.ellipse
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[36]
push.v self.timer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [38]

:[37]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.v self.c_extra
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[38]
push.v self.timer
pushi.e 24
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [40]

:[39]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.v self.c_extra
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[40]
push.v self.timer
pushi.e 44
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [42]

:[41]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.v self.c_extra
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[42]
push.v self.timer
pushi.e 14
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [44]

:[43]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 620
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.v self.c_extra
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[44]
push.v self.timer
pushi.e 34
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [46]

:[45]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 620
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.v self.c_extra
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[46]
push.v self.timer
pushi.e 44
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [48]

:[47]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 620
add.i.v
pushi.e 120
conv.i.v
call.i irandom(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.v self.c_extra
push.v self.line
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[48]
push.v self.timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [50]

:[49]
pushi.e 1076
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 652
add.i.v
pushi.e 32
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 0
add.i.v
pushi.e 640
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.line
push.i 65535
push.v self.line
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[50]
push.v self.timer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [end]

:[51]
pushi.e 0
pop.v.i self.timer

:[end]