.localvar 2 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e -6
conv.i.v
pushi.e 6
conv.i.v
pushi.e -4
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=4)
pop.v.v self.image_rotation
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.5
pop.v.d self.image_alpha
pushi.e -5
pop.v.i self.depth
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 777.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[2]
pushi.e 0
pop.v.i self.dustmode
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[end]