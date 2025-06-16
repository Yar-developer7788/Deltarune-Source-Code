.localvar 2 arguments

:[0]
pushi.e 6
pushi.e 40
conv.i.v
call.i round(argc=1)
add.v.i
pop.v.v self.h
pushi.e 2
pop.v.i self.image_xscale
pushi.e 4
push.v self.h
mul.v.i
pop.v.v self.image_yscale
pushi.e 260
pop.v.i self.y
pushi.e -16
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.d 0.5
pop.v.d self.image_alpha

:[end]