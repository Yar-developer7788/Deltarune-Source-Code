.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 6
pop.v.i self.speed
push.d 0.5
pop.v.d self.friction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
push.d 0.7
pop.v.d self.image_xscale
push.d 0.7
pop.v.d self.image_yscale

:[end]