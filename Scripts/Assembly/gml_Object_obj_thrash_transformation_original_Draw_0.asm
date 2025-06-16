.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [3]

:[1]
push.v self.timer
pushi.e 120
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [3]

:[2]
push.v self.xscale2
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.head_angle
pushi.e 2
sub.i.v
pop.v.v self.head_angle
push.v self.heady
push.d 0.4
sub.d.v
pop.v.v self.heady
push.v self.head_xscale
push.d 0.025
sub.d.v
pop.v.v self.head_xscale
push.v self.head_yscale
push.d 0.025
sub.d.v
pop.v.v self.head_yscale

:[6]
push.v self.timer
pushi.e 140
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [9]

:[7]
push.v self.timer
pushi.e 180
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [9]

:[8]
push.v self.xscale2
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.xscale2
push.d 0.1
sub.d.v
pop.v.v self.xscale2
push.v self.yscale2
push.d 0.1
sub.d.v
pop.v.v self.yscale2

:[12]
push.v self.timer
pushi.e 180
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [14]

:[13]
push.v self.timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.image_xscale
push.d 0.07
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.07
sub.d.v
pop.v.v self.image_yscale
push.v 1078.image_xscale
push.d 0.05
add.d.v
pop.v.v 1078.image_xscale
push.v 1078.image_yscale
push.d 0.05
add.d.v
pop.v.v 1078.image_yscale

:[17]
push.v self.timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [19]

:[18]
push.v self.timer
pushi.e 240
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 1
pop.v.i self.state

:[22]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [24]

:[23]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.yscale2
push.v self.xscale2
push.v self.y
pushi.e 24
add.i.v
push.v self.x
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
pushi.e 521
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.head_angle
push.v self.head_yscale
push.v self.head_xscale
push.v self.heady
push.v self.x
pushi.e 36
add.i.v
pushi.e 0
conv.i.v
pushi.e 519
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.fade_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2166
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.heady
push.v self.vspeed
add.v.v
pop.v.v self.heady

:[end]