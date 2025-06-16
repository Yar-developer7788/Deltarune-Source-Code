.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_speed
pushi.e -2
pop.v.i self.hspeed
pushi.e -2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.i 90000
pop.v.i self.depth

:[end]