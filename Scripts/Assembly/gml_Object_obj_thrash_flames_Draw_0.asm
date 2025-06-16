.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v self.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale

:[end]