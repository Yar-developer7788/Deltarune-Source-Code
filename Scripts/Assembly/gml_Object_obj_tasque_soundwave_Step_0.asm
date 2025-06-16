.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.image_yscale
push.d 0.025
push.v self.speed
pushi.e 7
conv.i.d
div.d.v
mul.v.d
add.v.v
pop.v.v self.image_yscale
push.v self.image_xscale
push.d 0.025
push.v self.speed
pushi.e 7
conv.i.d
div.d.v
mul.v.d
add.v.v
pop.v.v self.image_xscale

:[end]