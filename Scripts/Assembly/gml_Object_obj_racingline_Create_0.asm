.localvar 2 arguments

:[0]
push.i 800000
pop.v.i self.depth
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.extflag
pushi.e -5
pushi.e 385
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]