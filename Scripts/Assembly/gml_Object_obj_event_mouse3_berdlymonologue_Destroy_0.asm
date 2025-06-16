.localvar 2 arguments

:[0]
push.v self.d
pushi.e -4
cmp.i.v NEQ
bf [4]

:[1]
push.v self.d
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 64
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 0
pop.v.i global.interact

:[end]