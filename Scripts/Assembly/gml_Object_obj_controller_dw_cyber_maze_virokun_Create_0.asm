.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 391
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.b self.viro
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]