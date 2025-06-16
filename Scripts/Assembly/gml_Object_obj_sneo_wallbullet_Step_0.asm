.localvar 2 arguments
.localvar 25596 _falsedepth 12572
.localvar 25597 _depthblend 12573

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 872.depth
push.v self.depth
add.v.v
pop.v.v self.startdepth
pushi.e 1
pop.v.i self.init

:[4]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bt [8]

:[5]
push.v self.x
pushi.e -100
cmp.i.v LTE
bt [8]

:[6]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 100
add.i.v
cmp.v.v GTE
bt [8]

:[7]
push.v self.y
pushi.e -100
cmp.i.v LTE
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
push.v self.direction
push.v self.angle_speed
add.v.v
pop.v.v self.direction
push.v self.angleadjust
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.direction
pop.v.v self.image_angle

:[13]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.flashsiner
push.e 1
add.i.v
pop.v.v self.flashsiner
push.d 0.25
push.v self.flashsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[15]
push.v 663.sinespeed
pop.v.v self.sinespeed
push.v self.siner
push.v self.sinespeed
add.v.v
pop.v.v self.siner
push.v self.xx
push.v self.siner
neg.v
pushi.e 20
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.xdist
mul.v.v
add.v.v
pop.v.v self.x
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v local._falsedepth
pushloc.v local._falsedepth
pushi.e 0
cmp.i.v GTE
pop.v.b self.active
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._falsedepth
push.d 0.5
add.d.v
call.i clamp(argc=3)
pop.v.v local._depthblend
push.v self.destroyable
conv.v.b
bf [17]

:[16]
pushloc.v local._depthblend
push.v self.image_blend
push.d 0.5
conv.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
call.i merge_color(argc=3)
pop.v.v self.image_blend
b [18]

:[17]
pushloc.v local._depthblend
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[18]
push.v 872.depth
pushloc.v local._falsedepth
push.v self.startdepth
mul.v.v
sub.v.v
pop.v.v self.depth
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [31]

:[19]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v 631.depth
pushi.e 100
sub.i.v
pop.v.v self.depth

:[21]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
cmp.v.v LT
bf [25]

:[22]
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 90
sub.i.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.image_xscale
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 90
sub.i.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.image_yscale
push.v 663.introtimer
pushi.e 24
cmp.i.v GT
bf [24]

:[23]
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 90
sub.i.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.image_alpha

:[24]
b [31]

:[25]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 233
add.i.v
cmp.v.v GT
bf [29]

:[26]
pushi.e 20
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 233
sub.i.v
sub.v.i
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.image_xscale
pushi.e 20
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 233
sub.i.v
sub.v.i
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.image_yscale
push.v 663.introtimer
pushi.e 24
cmp.i.v GT
bf [28]

:[27]
pushi.e 20
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 233
sub.i.v
sub.v.i
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.image_alpha

:[28]
b [31]

:[29]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.v 663.introtimer
pushi.e 24
cmp.i.v GT
bf [31]

:[30]
pushi.e 1
pop.v.i self.image_alpha

:[31]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [36]

:[32]
push.v self.y
push.v self.loopy1
cmp.v.v LT
bf [34]

:[33]
push.v self.loopy2
push.v self.loopy1
push.v self.y
sub.v.v
sub.v.v
pop.v.v self.y

:[34]
push.v self.y
push.v self.loopy2
cmp.v.v GT
bf [36]

:[35]
push.v self.loopy1
push.v self.y
push.v self.loopy2
sub.v.v
add.v.v
pop.v.v self.y

:[36]
push.v self.y
push.v self.falsevspeed
push.v self.sinespeed
mul.v.v
add.v.v
pop.v.v self.y
push.v self.bighitbox
pushi.e 1
cmp.i.v EQ
bf [end]

:[37]
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 592
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
call.i collision_rectangle(argc=7)
pop.v.v self.hitshot
push.v self.hitshot
pushi.e -4
cmp.i.v NEQ
bf [end]

:[38]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]