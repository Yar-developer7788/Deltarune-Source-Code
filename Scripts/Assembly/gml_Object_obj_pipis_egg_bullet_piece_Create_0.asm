.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.grav
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
pushi.e 3
pushi.e 7
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
push.d 2.9
pop.v.d self.image_alpha
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 631.depth
pushi.e 100
sub.i.v
pop.v.v self.depth
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]