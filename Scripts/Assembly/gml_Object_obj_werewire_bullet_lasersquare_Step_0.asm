.localvar 2 arguments

:[0]
push.v self.stretch
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
push.v self.speed
pushi.e 10
push.v self.m
mul.v.i
div.v.v
add.v.i
pop.v.v self.image_xscale

:[2]
push.v self.x
pushi.e -100
cmp.i.v LTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.direction
push.v self.my_angle_change
add.v.v
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle

:[end]