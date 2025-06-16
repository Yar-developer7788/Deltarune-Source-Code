.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.vspeed
push.d 0.5
cmp.d.v LT
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.7
pop.v.d self.gravity

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]