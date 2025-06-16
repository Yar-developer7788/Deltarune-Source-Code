.localvar 2 arguments

:[0]
push.v self.destroyoncomplete
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
push.v self.loop
conv.v.b
not.b
bf [end]

:[3]
pushi.e 0
pop.v.i self.image_speed

:[end]