.localvar 2 arguments

:[0]
push.v self.yspeed
push.d 1.1
mul.d.v
pop.v.v self.yspeed
push.v self.y
push.v self.yspeed
sub.v.v
pop.v.v self.y
push.v self.image_alpha
push.d 0.8
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]