.localvar 2 arguments

:[0]
push.v self.madeblock
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.myblock
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]