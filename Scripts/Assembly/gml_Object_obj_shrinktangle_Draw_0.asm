.localvar 2 arguments
.localvar 25485 colo 12913

:[0]
call.i draw_get_color(argc=0)
pop.v.v local.colo
push.i 49152
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.bottom
pushi.e 4
add.i.v
push.v self.right
pushi.e 4
add.i.v
push.v self.top
pushi.e 4
sub.i.v
push.v self.left
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.bottom
push.v self.right
push.v self.top
push.v self.left
call.i draw_rectangle(argc=5)
popz.v
pushloc.v local.colo
call.i draw_set_colour(argc=1)
popz.v

:[end]