.localvar 2 arguments

:[0]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]