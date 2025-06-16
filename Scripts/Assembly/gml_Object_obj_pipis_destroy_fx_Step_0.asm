.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]