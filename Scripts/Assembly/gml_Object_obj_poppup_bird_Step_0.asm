.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.v self.targetplayer
conv.v.b
bf [3]

:[2]
push.v self.xx
push.v 631.x
pushi.e 8
add.i.v
add.v.v
pop.v.v self.xx
push.v self.yy
push.v 631.y
pushi.e 8
add.i.v
add.v.v
pop.v.v self.yy
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v 872.x
add.v.v
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.xx
call.i clamp(argc=3)
pop.v.v self.xx
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v 872.y
add.v.v
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.yy
call.i clamp(argc=3)
pop.v.v self.yy
b [4]

:[3]
push.v self.xx
push.v 872.x
add.v.v
pop.v.v self.xx
push.v self.yy
push.v 872.y
add.v.v
pop.v.v self.yy

:[4]
push.v self.yy
push.v self.xx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.targetplayer
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.direction
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.direction

:[6]
push.v self.x
push.v self.xx
cmp.v.v GT
bf [8]

:[7]
pushi.e -1
pop.v.i self.image_xscale

:[8]
push.v self.y
push.v self.yy
sub.v.v
call.i abs(argc=1)
pushi.e 40
cmp.i.v GT
bf [12]

:[9]
push.v self.y
push.v self.yy
cmp.v.v GT
bf [11]

:[10]
push.v self.image_speed
pushi.e 2
mul.i.v
pop.v.v self.image_speed
b [12]

:[11]
push.v self.image_speed
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.image_speed

:[12]
pushi.e 1
pop.v.i self.init
push.v self.direction
pop.v.v self.startdirection

:[13]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.speed
pop.v.v self.topSpeed
pushi.e 0
pop.v.i self.speed

:[15]
push.v self.slow
conv.v.b
bf [17]

:[16]
push.v self.startdirection
push.v self.timer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.direction

:[17]
push.v self.timer
pushi.e 60
conv.i.d
push.v self.slow
div.v.d
cmp.v.v GTE
bf [21]

:[18]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
b [23]

:[21]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [23]

:[22]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[23]
push.v self.speed
push.v self.topSpeed
cmp.v.v LT
bf [25]

:[24]
push.v self.speed
push.v self.topSpeed
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.speed

:[25]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[end]