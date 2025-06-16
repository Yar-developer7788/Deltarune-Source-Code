.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.spin
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_angle
pushi.e 4
sub.i.v
pop.v.v self.image_angle

:[2]
push.v self.spin
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_angle
pushi.e 4
add.i.v
pop.v.v self.image_angle

:[4]
push.v self.timer
pushi.e 11
cmp.i.v GT
bf [end]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]