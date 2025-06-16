.localvar 2 arguments

:[0]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]

:[end]