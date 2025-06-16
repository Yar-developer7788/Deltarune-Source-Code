.localvar 2 arguments

:[0]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v 415.carhit
push.e 1
add.i.v
pop.v.v 415.carhit

:[2]
call.i event_inherited(argc=0)
popz.v

:[end]