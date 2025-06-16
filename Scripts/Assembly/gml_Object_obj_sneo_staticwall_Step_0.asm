.localvar 2 arguments
.localvar 25596 _falsedepth 12580
.localvar 25597 _depthblend 12581

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
push.v self.yellowsiner
push.e 1
add.i.v
pop.v.v self.yellowsiner
push.d 0.25
push.v self.yellowsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 4235519
conv.i.v
push.i 65535
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
pushloc.v local._depthblend
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v 872.depth
pushloc.v local._falsedepth
push.v self.startdepth
mul.v.v
sub.v.v
pushi.e 3
sub.i.v
pop.v.v self.depth
push.v self.bighitbox
pushi.e 1
cmp.i.v EQ
bf [end]

:[16]
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

:[17]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]