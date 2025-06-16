.localvar 2 arguments

:[0]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 631.x
pop.v.v self.x
push.v 631.y
pop.v.v self.y

:[2]
pushi.e 0
pop.v.i self.image_speed

:[end]