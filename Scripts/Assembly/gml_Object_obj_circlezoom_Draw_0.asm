.localvar 2 arguments

:[0]
push.v self.surf
call.i surface_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.surf
call.i draw_surface(argc=3)
popz.v

:[2]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.lerpamount
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]