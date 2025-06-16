.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.path_position
push.v self.path_position
push.v self.offset
add.v.v
pop.v.v self.path_position
push.v self.path_position
push.d 0.99
cmp.d.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.y
push.v 574.y
pushi.e 46
add.i.v
cmp.v.v GT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]