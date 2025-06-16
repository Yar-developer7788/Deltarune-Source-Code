.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=2)
pop.v.v self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.direction
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
pop.v.v self.speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
pop.v.v self.rot
pushi.e 60
conv.i.v
pushi.e 30
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.life
push.v self.life
pop.v.v self.lifeD

:[end]