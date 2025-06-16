.localvar 2 arguments

:[0]
pushi.e 615
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 614
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.con

:[4]
popenv [3]
pushi.e 1
pop.v.i 697.partmode
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
bf [end]

:[5]
pushi.e 2
pop.v.i global.turntimer

:[end]