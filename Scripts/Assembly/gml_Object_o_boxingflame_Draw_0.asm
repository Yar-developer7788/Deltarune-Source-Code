.localvar 2 arguments

:[0]
pushi.e 495
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
exit.i

:[3]
call.i draw_self(argc=0)
popz.v

:[end]