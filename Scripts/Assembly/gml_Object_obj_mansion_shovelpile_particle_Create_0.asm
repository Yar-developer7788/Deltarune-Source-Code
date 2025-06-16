.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_alpha
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hspeed
pushi.e -8
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 6
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.rotate_time
push.v self.rotate_time
pop.v.v self.rotate_timer

:[end]