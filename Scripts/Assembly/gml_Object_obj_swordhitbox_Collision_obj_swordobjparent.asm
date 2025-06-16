.localvar 2 arguments

:[0]
push.v other.destroyhitbox
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]

:[end]