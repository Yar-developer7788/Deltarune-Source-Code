.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.i 231204
setowner.e
push.v 82.x
pushi.e -5
pushi.e 264
pop.v.v [array]self.flag

:[end]