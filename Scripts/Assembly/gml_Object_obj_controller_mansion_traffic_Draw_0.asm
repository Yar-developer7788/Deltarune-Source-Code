.localvar 2 arguments

:[0]
push.d 0.75
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1040
conv.i.v
pushi.e 250
conv.i.v
pushi.e 640
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1320
conv.i.v
pushi.e 250
conv.i.v
pushi.e 1240
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]