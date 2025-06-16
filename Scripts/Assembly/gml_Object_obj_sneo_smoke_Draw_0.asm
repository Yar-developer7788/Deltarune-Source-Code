.localvar 2 arguments
.localvar 14282 _scale_a 6017

:[0]
push.v self.timer
pushi.e 75
conv.i.d
div.d.v
push.d 2.15
conv.d.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v local._scale_a
pushloc.v local._scale_a
pop.v.v self.image_xscale
pushloc.v local._scale_a
pop.v.v self.image_yscale
push.v self.timer
pushi.e 75
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_alpha
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
call.i draw_self(argc=0)
popz.v
push.v self.timer
pushi.e 75
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]