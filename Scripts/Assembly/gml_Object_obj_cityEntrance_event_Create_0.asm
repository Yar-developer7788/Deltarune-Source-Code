.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 67
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 420
pop.v.i self.triggerPoint
pushi.e 0
pop.v.i self.spawned
pushi.e 0
pop.v.i self.ralsei
pushi.e 0
pop.v.i self.susie

:[end]