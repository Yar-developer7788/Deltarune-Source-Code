.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.alpha
push.v self.fadespeed
sub.v.v
pop.v.v self.alpha
push.v self.growth
push.v self.growspeed
add.v.v
pop.v.v self.growth
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.color
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.y
push.v self.growth
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.growth
add.v.v
pushi.e 2
add.i.v
push.v self.y
push.v self.growth
sub.v.v
pushi.e 2
sub.i.v
push.v self.x
push.v self.growth
sub.v.v
pushi.e 2
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]