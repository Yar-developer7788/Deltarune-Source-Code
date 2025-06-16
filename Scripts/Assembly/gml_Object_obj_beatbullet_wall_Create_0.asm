.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.siner

:[end]