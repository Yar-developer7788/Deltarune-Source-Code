.localvar 2 arguments

:[0]
pushi.e 205
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 753
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 730
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.rim_flash
pushi.e 0
pop.v.i self.glow

:[2]
popenv [1]

:[end]