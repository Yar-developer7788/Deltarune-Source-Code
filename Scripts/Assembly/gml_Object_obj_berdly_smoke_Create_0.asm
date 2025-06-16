.localvar 2 arguments

:[0]
push.d 1.6
pop.v.d self.image_xscale
push.d 1.6
pop.v.d self.image_yscale
pushi.e 4
pop.v.i self.speed
push.d 0.2
pop.v.d self.friction
pushi.e 90
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity
pushi.e 0
pop.v.i self.image_speed
pushi.e -50
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.h_speed

:[end]