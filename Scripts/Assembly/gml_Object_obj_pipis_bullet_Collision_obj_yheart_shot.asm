.localvar 2 arguments

:[0]
push.v 697.difficulty
pushi.e 2
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
b [8]

:[4]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]