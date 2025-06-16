.localvar 2 arguments

:[0]
push.v self.lifetime
push.e 1
sub.i.v
pop.v.v self.lifetime
push.v self.depth
push.e 1
add.i.v
pop.v.v self.depth
push.v self.lifetime
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]