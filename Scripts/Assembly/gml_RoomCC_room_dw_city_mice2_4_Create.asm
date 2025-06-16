.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]