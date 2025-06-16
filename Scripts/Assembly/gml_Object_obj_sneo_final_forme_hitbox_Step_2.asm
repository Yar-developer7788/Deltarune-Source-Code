.localvar 2 arguments

:[0]
pushi.e 638
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 638
pop.v.i self.parent
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[2]
pushi.e 643
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]