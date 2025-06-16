.localvar 2 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "count="@37836
push.v self.count
call.i string(argc=1)
add.v.s
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]