.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 390
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.stayVisible

:[end]