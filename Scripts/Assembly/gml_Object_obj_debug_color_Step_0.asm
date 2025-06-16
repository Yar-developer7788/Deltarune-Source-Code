.localvar 2 arguments

:[0]
pushi.e 436
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1]

:[1]
pushi.e 418
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[end]