.localvar 2 arguments

:[0]
push.v self.active
conv.v.b
bf [2]

:[1]
exit.i

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]