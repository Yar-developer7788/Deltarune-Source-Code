.localvar 2 arguments

:[0]
pushi.e 2080
conv.i.v
pushi.e 2079
conv.i.v
call.i choose(argc=2)
pop.v.v self.sprite_index
push.d 0.4
push.d -0.1
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_speed
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.image_xscale
push.v self.image_xscale
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.image_yscale
pushi.e 90
pushi.e 15
conv.i.v
pushi.e -45
conv.i.v
call.i random_range(argc=2)
add.v.i
pop.v.v self.direction
push.d 1.5
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
pop.v.v self.speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
push.d 0.9
conv.d.v
call.i random(argc=1)
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.d 0.03
conv.d.v
call.i random(argc=1)
push.v self.image_xscale
mul.v.v
pop.v.v self.scalerX
push.d 0.03
conv.d.v
call.i random(argc=1)
push.v self.image_yscale
mul.v.v
pop.v.v self.scalerY
pushi.e -1000
pop.v.i self.depth
pushi.e 1
pop.v.i self.image_index

:[end]