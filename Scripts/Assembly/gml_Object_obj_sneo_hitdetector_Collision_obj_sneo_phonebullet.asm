.localvar 2 arguments

:[0]
pushi.e 697
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.hitcon

:[2]
popenv [1]
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

:[end]