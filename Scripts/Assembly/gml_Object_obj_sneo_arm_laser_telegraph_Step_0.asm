.localvar 2 arguments

:[0]
push.v 697.partmode
pushi.e 3
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 632.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[4]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
push.v 631.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]