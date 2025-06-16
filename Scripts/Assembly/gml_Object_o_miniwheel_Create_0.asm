.localvar 2 arguments

:[0]
push.d 0.2
pop.v.d self.image_xscale
push.d 0.2
pop.v.d self.image_yscale
pushi.e -20
conv.i.v
pushi.e -10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=4)
pop.v.v self.rotspeed
pushi.e -14
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.gravity
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.flashamount

:[end]