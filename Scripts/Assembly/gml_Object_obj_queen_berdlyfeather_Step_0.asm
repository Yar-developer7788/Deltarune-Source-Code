.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 270
push.v self.timer
pushi.e 10
push.v self.m
mul.v.i
div.v.v
call.i cos(argc=1)
pushi.e 30
mul.i.v
add.v.i
pop.v.v self.direction
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.m
push.d 0.05
add.d.v
pop.v.v self.m

:[end]