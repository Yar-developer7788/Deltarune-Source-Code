.localvar 2 arguments

:[0]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.image_angle
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.idealdir
b [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.vspeed
push.v self.idealdir
push.v self.homingfactor
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.hspeed
push.v self.idealdir
push.v self.homingfactor
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.speed
pushi.e 10
cmp.i.v GT
bf [5]

:[4]
pushi.e 10
pop.v.i self.speed

:[5]
push.d 0.2
conv.d.v
push.v self.maxhomingfactor
push.v self.homingfactor
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.homingfactor
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 12
cmp.i.v GTE
bf [7]

:[6]
push.d 0.3
pop.v.d self.maxhomingfactor

:[7]
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]