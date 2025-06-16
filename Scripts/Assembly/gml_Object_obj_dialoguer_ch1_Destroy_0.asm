.localvar 2 arguments

:[0]
push.v self.free
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.interact

:[2]
push.v self.myface
pushi.e -9
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]