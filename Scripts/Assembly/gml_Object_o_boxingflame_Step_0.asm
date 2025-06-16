.localvar 2 arguments

:[0]
push.v self.image_xscale
push.d 0.1
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
sub.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.image_angle
push.v self.image_rotation
add.v.v
pop.v.v self.image_angle
push.v self.dustmode
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
push.i 65535
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]