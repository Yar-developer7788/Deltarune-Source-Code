.localvar 2 arguments
.localvar 14685 ww 6430
.localvar 14686 wh 6431
.localvar 10813 sw 6432
.localvar 10814 sh 6433
.localvar 6482 xx 6434
.localvar 6483 yy 6435

:[0]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [11]

:[4]
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
pop.v.v local.sw
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
pop.v.v local.sh
pushloc.v local.ww
pushloc.v local.sw
pushglb.v global.window_scale
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.xx
pushloc.v local.wh
pushloc.v local.sh
pushglb.v global.window_scale
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.yy
pushloc.v local.xx
pop.v.v global.window_xofs
pushloc.v local.yy
pop.v.v global.window_yofs
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [6]

:[5]
pushloc.v local.wh
pushi.e 720
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
b [10]

:[9]
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v

:[10]
pushi.e 0
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.window_scale
pushglb.v global.window_scale
pushloc.v local.yy
pushloc.v local.xx
pushbltn.v builtin.application_surface
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
b [end]

:[11]
pushi.e 0
pop.v.i global.window_xofs
pushi.e 0
pop.v.i global.window_yofs

:[end]