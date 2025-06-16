.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e -1
pop.v.i global.inv

:[2]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 1
pop.v.i 631.image_alpha
push.v self.x
pop.v.v 631.x
push.v self.y
pop.v.v 631.y
pushi.e 1
pop.v.i 631.color

:[end]