.localvar 2 arguments

:[0]
push.v self.timer
push.v self.lifetime
cmp.v.v GTE
bf [3]

:[1]
pushi.e 0
pop.v.b self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
call.i draw_self(argc=0)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[end]