.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale

:[end]