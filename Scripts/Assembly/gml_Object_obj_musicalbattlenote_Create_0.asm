.localvar 2 arguments

:[0]
push.i 8421504
conv.i.v
call.i choose(argc=1)
pop.v.v self.image_blend
push.d 0.2
pop.v.d self.gravity
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
neg.v
pop.v.v self.vspeed
push.d 1.5
conv.d.v
push.d 0.5
conv.d.v
call.i random_range(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]