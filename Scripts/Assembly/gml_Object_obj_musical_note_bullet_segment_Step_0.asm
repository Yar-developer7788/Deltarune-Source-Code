.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 90
cmp.i.v GT
bf [3]

:[1]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.image_xscale
push.d 0.75
cmp.d.v LT
bf [end]

:[4]
push.v self.image_xscale
push.d 0.01
add.d.v
pop.v.v self.image_xscale

:[end]