.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.v 574.y
pushi.e 240
add.i.v
push.v self.x2
push.v self.timer
add.v.v
push.v 574.y
pushi.e 83
sub.i.v
push.v self.x1
push.v self.timer
sub.v.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.v 574.y
pushi.e 240
add.i.v
push.v self.x2
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 574.y
pushi.e 83
sub.i.v
push.v self.x1
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]