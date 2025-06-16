.localvar 2 arguments

:[0]
pushi.e 1351
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1351.x
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v 1351.y
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[end]