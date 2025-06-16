.localvar 2 arguments

:[0]
push.v self.image_xscale
push.d 0.8
mul.d.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v self.image_xscale
push.v self.image_alpha
push.d 0.016666666666666666
sub.d.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v self.image_alpha
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]