.localvar 2 arguments

:[0]
pushi.e 666
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]