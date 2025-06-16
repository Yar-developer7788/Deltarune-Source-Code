.localvar 2 arguments

:[0]
push.v self.master
pushi.e -9
push.v [stacktop]self.y
push.v self.posY
add.v.v
pop.v.v self.y
pushi.e 10000
pop.v.i self.depth
push.v self.image_xscale
push.d 0.02
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.02
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]