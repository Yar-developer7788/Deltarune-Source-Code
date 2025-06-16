.localvar 2 arguments

:[0]
pushi.e 1634
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1634.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v 1634.y
pushi.e 10
add.i.v
pop.v.v self.y

:[2]
pushi.e 0
pop.v.i self.grazetimer

:[end]