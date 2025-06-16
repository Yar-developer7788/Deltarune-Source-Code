.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.spinspeed
cmp.v.v GTE
bf [2]

:[1]
push.v self.image_angle
pushi.e 45
add.i.v
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.timer

:[2]
call.i draw_self(argc=0)
popz.v

:[end]