.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.xs
pushi.e 0
pop.v.i self.ys
push.d 0.8
conv.d.v
call.i random(argc=1)
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
push.v 789.depth
pushi.e 3
sub.i.v
pop.v.v self.depth

:[end]