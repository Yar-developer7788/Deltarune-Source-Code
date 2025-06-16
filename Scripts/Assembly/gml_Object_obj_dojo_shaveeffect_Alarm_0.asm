.localvar 2 arguments

:[0]
push.v self.ystart
push.v self.xstart
push.v self.creator_y
push.v self.creator_x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 18
conv.i.v
pushi.e 15
conv.i.v
call.i random_range(argc=2)
pop.v.v self.speed
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
pop.v.v self.friction
pushi.e 0
pop.v.b self.wait

:[end]