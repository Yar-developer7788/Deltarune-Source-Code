.localvar 2 arguments

:[0]
push.v self.x
push.v self.xs
add.v.v
pop.v.v self.x
push.v self.y
push.v self.ys
add.v.v
pop.v.v self.y
push.v self.xs
push.d 0.9
mul.d.v
pop.v.v self.xs
push.v self.ys
push.d 0.9
mul.d.v
pop.v.v self.ys
push.v self.image_xscale
push.d 0.97
mul.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.97
mul.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
push.v self.image_yscale
add.v.v
push.d 0.1
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]