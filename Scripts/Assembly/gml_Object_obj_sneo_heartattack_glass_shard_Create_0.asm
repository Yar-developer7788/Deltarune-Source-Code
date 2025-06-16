.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.timer
pushi.e 6
pop.v.i self.speed
push.d 0.2
pop.v.d self.friction
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 2
pop.v.i self.imagE_yscale

:[end]