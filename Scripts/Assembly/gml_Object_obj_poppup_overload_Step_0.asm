.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d -0.8
cmp.d.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]