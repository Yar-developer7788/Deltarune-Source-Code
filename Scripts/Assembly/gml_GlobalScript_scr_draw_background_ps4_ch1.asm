.localvar 2 arguments
.localvar 11942 bg 4753
.localvar 6482 xx 4754
.localvar 6483 yy 4755
.localvar 11944 scale 4756

:[0]
b [8]

> gml_Script_scr_draw_background_ps4_ch1 (locals=4, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.bg
push.v arg.argument1
pop.v.v local.xx
push.v arg.argument2
pop.v.v local.yy
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bt [3]

:[2]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i window_get_width(argc=0)
pushi.e 1920
conv.i.d
div.d.v
pop.v.v local.scale
pushloc.v local.bg
call.i gml_Script_background_get_height_ch1(argc=1)
pushloc.v local.scale
mul.v.v
pushloc.v local.bg
call.i gml_Script_background_get_width_ch1(argc=1)
pushloc.v local.scale
mul.v.v
pushloc.v local.yy
pushloc.v local.scale
mul.v.v
pushloc.v local.xx
pushloc.v local.scale
mul.v.v
pushloc.v local.bg
call.i gml_Script_draw_background_stretched_ch1(argc=5)
popz.v
b [7]

:[6]
pushloc.v local.yy
pushloc.v local.xx
pushloc.v local.bg
call.i gml_Script_draw_background_ch1(argc=3)
popz.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_draw_background_ps4_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_background_ps4_ch1
popz.v

:[end]