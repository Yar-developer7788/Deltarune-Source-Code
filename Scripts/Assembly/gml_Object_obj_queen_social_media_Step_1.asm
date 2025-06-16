.localvar 2 arguments

:[0]
pushi.e 535
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 535.scrollSpeed
pop.v.v self.speed

:[end]