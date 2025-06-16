.localvar 2 arguments

:[0]
push.v self.parentid
pushi.e -9
push.v [stacktop]self.depth
pushi.e 2
add.i.v
pop.v.v self.depth
pushi.e 275
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 275
pushi.e 0
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]