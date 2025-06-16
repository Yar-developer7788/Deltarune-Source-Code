.localvar 2 arguments

:[0]
push.v self.sucked
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.sucked
push.v 638.y
pushi.e 146
add.i.v
push.v 638.x
pushi.e 122
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v 638.y
pushi.e 146
add.i.v
push.v 638.x
pushi.e 122
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.gravity_direction
pushi.e 0
pop.v.i self.hspeed
push.d 3.5
pop.v.d self.speed
pushi.e 0
pop.v.i self.friction
push.d 0.3
pop.v.d self.gravity

:[end]