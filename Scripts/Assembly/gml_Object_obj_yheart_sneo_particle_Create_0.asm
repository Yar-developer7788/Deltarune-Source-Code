.localvar 2 arguments

:[0]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.image_xscale
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.image_yscale
pushi.e 0
pop.v.i self.timer

:[end]