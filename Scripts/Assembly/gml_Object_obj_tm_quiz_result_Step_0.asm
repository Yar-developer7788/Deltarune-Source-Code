.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[2]
push.v self.timer
push.v self.max_time
cmp.v.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]