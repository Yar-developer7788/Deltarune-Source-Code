.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 4
pop.v.i self.speed
push.d 0.2
pop.v.d self.friction
pushi.e 70
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
pushi.e 0
pop.v.i self.image_speed
pushi.e 70
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.timer

:[end]