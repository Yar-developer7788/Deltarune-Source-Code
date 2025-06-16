.localvar 2 arguments

:[0]
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.image_xscale
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]