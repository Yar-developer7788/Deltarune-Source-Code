.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[end]