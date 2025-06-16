.localvar 2 arguments

:[0]
push.v self.speed
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]