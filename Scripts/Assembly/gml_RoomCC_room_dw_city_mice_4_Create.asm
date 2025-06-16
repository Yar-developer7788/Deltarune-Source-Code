.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 72
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]