.localvar 2 arguments

:[0]
pushbltn.v builtin.debug_mode
conv.v.b
not.b
bt [2]

:[1]
push.v self.x
push.e 1
add.i.v
dup.v 0
pop.v.v self.x
push.v self.xstart
pushi.e 3
add.i.v
cmp.v.v GT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v
pushi.e 279
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]