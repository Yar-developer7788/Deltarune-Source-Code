.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.truegravity
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.destroyonhit
push.v self.gravity
pushi.e 2
mul.i.v
pop.v.v self.truegravity

:[2]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [8]

:[3]
push.v self.gravity
call.i sign(argc=1)
pop.v.v self.flip
push.v self.gravity
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e -1
pop.v.i self.image_yscale

:[5]
push.v self.jumper
conv.v.b
bf [7]

:[6]
push.v self.depth
push.e 1
sub.i.v
pop.v.v self.depth

:[7]
push.v self.image_yscale
pop.v.v self.yscale
pushi.e 1
pop.v.i self.init

:[8]
push.v self.jumpstate
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.jumper
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [17]

:[12]
push.v 631.x
pushi.e 8
add.i.v
push.v self.x
cmp.v.v LTE
bf [14]

:[13]
push.v 631.x
pushi.e 8
add.i.v
push.v self.x
pushi.e 40
sub.i.v
cmp.v.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.d 0.1
conv.d.v
push.d -0.1
conv.d.v
push.v self.gravity
call.i clamp(argc=3)
pop.v.v self.gravity
pushi.e -1
pop.v.i self.jumpstate
pushi.e 0
pop.v.i self.jumper
pushi.e 0
pop.v.i self.speed
pushi.e 10
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[17]
push.v self.jumpstate
pushi.e -1
cmp.i.v EQ
bf [20]

:[18]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [20]

:[19]
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
push.v 631.y
pushi.e 8
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
pushi.e 10
add.i.v
call.i clamp(argc=3)
push.v self.truegravity
call.i abs(argc=1)
call.i gml_Script_scr_getjumpspeed(argc=2)
push.v self.truegravity
call.i sign(argc=1)
neg.v
mul.v.v
pop.v.v self.vspeed
push.v self.truegravity
pop.v.v self.gravity
pushi.e -1
conv.i.v
pushi.e -5
conv.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.x
sub.v.v
pushi.e 40
conv.i.d
div.d.v
call.i clamp(argc=3)
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.jumpstate
pushi.e 1
pop.v.i self.image_index

:[20]
push.v self.jumpstate
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
push.v self.image_speed
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.vspeed
push.v self.gravity
mul.v.v
pushi.e 0
cmp.i.v GT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
pop.v.i self.image_speed

:[26]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 24
add.i.v
cmp.v.v LT
bf [28]

:[27]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 24
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e -4
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.jumpstate
b [end]

:[28]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 24
sub.i.v
cmp.v.v GT
bf [end]

:[29]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 24
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e -4
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.jumpstate

:[end]