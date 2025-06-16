.localvar 2 arguments

:[0]
push.i 1959605
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.radius
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.radius
push.d 0.25
sub.d.v
pop.v.v self.radius
push.v self.radius
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]