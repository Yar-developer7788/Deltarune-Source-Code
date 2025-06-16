.localvar 2 arguments

:[0]
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e 1
add.i.v
pop.v.v self.size
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
pop.v.v self.image_spin
push.d 0.1
conv.d.v
push.d 0.01
conv.d.v
call.i random_range(argc=2)
pop.v.v self.fadespeed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
pop.v.v self.image_speed
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
call.i random_range(argc=2)
pop.v.v self.speed
pushi.e 0
pop.v.i self.image_blend

:[end]