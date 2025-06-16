.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.sineon
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.image_alpha
push.d -0.2
push.d 0.4
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v self.vspeed
pushi.e -4
pop.v.i self.hspeed
push.d -0.2
pop.v.d self.friction
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[end]