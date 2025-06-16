.localvar 2 arguments

:[0]
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]