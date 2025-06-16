.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.spawned
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.spawntimer
pushi.e -5
pushi.e 125
push.v [array]self.flag
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]