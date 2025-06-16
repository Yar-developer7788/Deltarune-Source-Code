.localvar 2 arguments

:[0]
push.v other.active
conv.v.b
bf [end]

:[1]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]