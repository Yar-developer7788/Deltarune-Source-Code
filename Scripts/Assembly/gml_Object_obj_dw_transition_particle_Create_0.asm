.localvar 2 arguments

:[0]
pushi.e -2
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.07
pop.v.d self.friction
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[end]