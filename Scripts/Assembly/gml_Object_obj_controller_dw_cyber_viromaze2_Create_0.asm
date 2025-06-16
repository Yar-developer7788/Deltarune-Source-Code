.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.noleavefield
pushi.e -5
pushi.e 352
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e 287
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]