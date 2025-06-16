.localvar 2 arguments

:[0]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 631.x
pop.v.v self.targetx
push.v 631.y
pop.v.v self.targety
b [3]

:[2]
push.v 872.x
pushi.e 50
conv.i.v
pushi.e -50
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targetx
push.v 872.y
pushi.e 50
conv.i.v
pushi.e -50
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targety

:[3]
push.v self.targety
push.v self.targetx
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.targetAngle
pushi.e 562
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
push.v self.targetAngle
pushi.e 45
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 45
mul.i.v
pop.v.v self.targetAngle
push.v self.targetAngle
pushi.e 90
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.targetAngle
pushi.e 45
conv.i.v
pushi.e -45
conv.i.v
call.i choose(argc=2)
add.v.v
pop.v.v self.targetAngle

:[6]
b [9]

:[7]
push.v self.targetAngle
pushi.e 15
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 15
mul.i.v
pop.v.v self.targetAngle
push.v self.targetAngle
pushi.e 90
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.targetAngle
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i choose(argc=2)
add.v.v
pop.v.v self.targetAngle

:[9]
push.v self.targetAngle
pushi.e 360
mod.i.v
pop.v.v self.targetAngle
push.v self.flip
conv.v.b
bf [11]

:[10]
push.v self.targetAngle
pushi.e 360
add.i.v
pop.v.v self.targetAngle
b [end]

:[11]
push.v self.targetAngle
pushi.e 540
sub.i.v
pop.v.v self.targetAngle

:[end]