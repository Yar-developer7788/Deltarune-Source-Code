.localvar 2 arguments

:[0]
push.v self.mywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]