.localvar 2 arguments

:[0]
pushi.e -180
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.image_xscale
push.v 1070.image_alpha
pop.v.v self.image_alpha
pushi.e 1
pop.v.i self.depth
pushi.e 1070
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1070.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[end]