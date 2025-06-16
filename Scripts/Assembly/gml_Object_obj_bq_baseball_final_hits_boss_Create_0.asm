.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 7
pop.v.i self.vspeed
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_angle
push.v 789.x
pushi.e 5
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.state
push.v 789.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
pushi.e 6
pop.v.i self.image_xscale
pushi.e 6
pop.v.i self.image_yscale

:[end]