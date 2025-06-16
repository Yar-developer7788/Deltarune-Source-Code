.localvar 2 arguments

:[0]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i self.sizexoff
pushi.e 0
pop.v.i self.sizeyoff
push.v 631.x
pushi.e 10
add.i.v
push.v self.sizexoff
add.v.v
pop.v.v self.x
push.v 631.y
pushi.e 10
add.i.v
push.v self.sizeyoff
add.v.v
pop.v.v self.y
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]