.localvar 2 arguments

:[0]
push.v self.footsteps_volume
push.d 0.1
sub.d.v
pop.v.v self.footsteps_volume
push.v self.footsteps_volume
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 1
pop.v.b self.footsteps

:[end]