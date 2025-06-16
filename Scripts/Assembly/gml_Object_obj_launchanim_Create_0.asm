.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.g
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.starcount
pushi.e 0
pop.v.i self.redup
pushi.e 6
pop.v.i self.bsize
pushi.e 0
pop.v.i self.hurtshake
pushi.e 15
pop.v.i self.shakex
pushi.e 40
conv.i.v
pushi.e 30
conv.i.v
call.i random_range(argc=2)
pop.v.v self.direction

:[end]