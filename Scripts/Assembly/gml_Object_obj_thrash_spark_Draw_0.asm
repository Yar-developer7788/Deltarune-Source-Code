.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.image_alpha
push.v self.fadespeed
sub.v.v
pop.v.v self.image_alpha
push.v self.image_angle
push.v self.image_spin
add.v.v
pop.v.v self.image_angle
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]