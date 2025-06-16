.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_angle
push.v self.rotspeed
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.image_angle
push.v self.direction
push.v self.rotspeed
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.direction
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[3]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]