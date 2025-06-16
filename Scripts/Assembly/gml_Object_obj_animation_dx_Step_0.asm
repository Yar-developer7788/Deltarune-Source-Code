.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.init
push.v self.animdone
conv.v.b
bf [end]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.endtime
cmp.v.v GTE
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]