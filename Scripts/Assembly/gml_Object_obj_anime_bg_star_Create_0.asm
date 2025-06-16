.localvar 2 arguments

:[0]
pushi.e -60
pop.v.i self.vspeed
pushi.e 360
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_angle
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