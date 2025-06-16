.localvar 2 arguments

:[0]
exit.i

:[1]
push.v 697.difficulty
pushi.e 2
cmp.i.v EQ
bf [5]

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
b [9]

:[5]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]

:[9]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]