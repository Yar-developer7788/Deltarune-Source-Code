.localvar 2 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 50
cmp.i.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]