.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.creator
pushi.e -9
pushenv [3]

:[2]
pushi.e 1
pop.v.i global.ambush
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 243
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.active
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]

:[end]