.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.size
push.d 0.06
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 85
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
push.d 0.05
pop.v.d self.friction
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
push.d -0.5
pushi.e -1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.vspeed
push.d 0.05
pop.v.d self.image_xscale
push.d 0.05
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.back
pushi.e 12
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.init

:[end]