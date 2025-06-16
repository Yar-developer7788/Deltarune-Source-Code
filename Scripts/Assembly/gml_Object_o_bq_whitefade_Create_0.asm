.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.image_alpha
pushi.e 4000
pop.v.i self.image_yscale
pushi.e 640
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.x
pushi.e -2000
pop.v.i self.y
push.v 789.depth
pushi.e 10
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.dont_fade_out

:[end]