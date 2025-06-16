.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_angle
pushi.e 10
conv.i.d
push.v self.timer
div.v.d
add.v.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_angle
pushi.e 10
conv.i.d
push.v self.timer
div.v.d
sub.v.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]