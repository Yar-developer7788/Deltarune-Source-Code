.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]