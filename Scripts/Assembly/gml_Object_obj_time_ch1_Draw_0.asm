.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v builtin.fps
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v
pushglb.v global.plot
call.i string(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[end]