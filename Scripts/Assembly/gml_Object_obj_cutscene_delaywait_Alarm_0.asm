.localvar 2 arguments

:[0]
pushi.e 898
pushenv [4]

:[1]
push.v self.cs_wait_custom
conv.v.b
bf [3]

:[2]
pushi.e 0
pop.v.i self.waiting
pushi.e 0
pop.v.b self.cs_wait_custom

:[3]
pushi.e 0
pop.v.b self.cs_wait_delay

:[4]
popenv [1]
call.i instance_destroy(argc=0)
popz.v

:[end]