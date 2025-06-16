.localvar 2 arguments

:[0]
push.v self.y
pushi.e -600
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]