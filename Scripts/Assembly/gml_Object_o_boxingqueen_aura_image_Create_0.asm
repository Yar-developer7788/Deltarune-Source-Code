.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
push.d 0.4
push.d 0.25
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_alpha
push.v 789.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]