.localvar 2 arguments
.localvar 14685 ww 21937
.localvar 14686 wh 21938
.localvar 10813 sw 21939
.localvar 10814 sh 21940
.localvar 6482 xx 21941
.localvar 6483 yy 21942
.localvar 14045 room_id 21943

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
bf [45]

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
pushglb.v global.screen_border_active
conv.v.b
bf [12]

:[11]
push.v self.border_alpha
pushi.e 0
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [17]

:[14]
pushglb.v global.screen_border_id
call.i gml_Script_scr_draw_screen_border_ch1(argc=1)
popz.v
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
bf [16]

:[15]
pushi.e 1
push.v self.border_alpha
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.wh
pushi.e 1
sub.i.v
pushloc.v local.ww
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_ossafe_fill_rectangle_ch1(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[16]
b [30]

:[17]
pushglb.v global.currentroom
pop.v.v local.room_id
pushi.e 1404
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e 0
pop.v.b global.disable_border

:[19]
pushloc.v local.room_id
pushi.e 282
cmp.i.v EQ
bt [27]

:[20]
pushloc.v local.room_id
pushi.e 1638
cmp.i.v EQ
bt [27]

:[21]
pushloc.v local.room_id
pushi.e 420
cmp.i.v EQ
bt [27]

:[22]
pushloc.v local.room_id
pushi.e 426
cmp.i.v EQ
bt [27]

:[23]
pushloc.v local.room_id
pushi.e 416
cmp.i.v EQ
bt [27]

:[24]
pushloc.v local.room_id
pushi.e 412
cmp.i.v EQ
bt [27]

:[25]
pushloc.v local.room_id
pushi.e 316
cmp.i.v EQ
bt [27]

:[26]
pushloc.v local.room_id
pushi.e 321
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushi.e 1
pop.v.b global.disable_border

:[30]
push.v self.paused
conv.v.b
not.b
bf [32]

:[31]
call.i os_is_paused(argc=0)
conv.v.b
b [33]

:[32]
push.e 0

:[33]
bf [37]

:[34]
pushi.e 1
pop.v.b self.paused
push.v self.screenshot
call.i sprite_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.sh
pushloc.v local.sw
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.application_surface
call.i sprite_create_from_surface(argc=9)
pop.v.v self.screenshot

:[36]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[37]
push.v self.paused
conv.v.b
bf [39]

:[38]
call.i os_is_paused(argc=0)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
call.i instance_activate_all(argc=0)
popz.v
call.i audio_resume_all(argc=0)
popz.v
pushi.e 0
pop.v.b self.paused
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[42]
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
push.v self.screenshot
call.i sprite_exists(argc=1)
conv.v.b
bf [44]

:[43]
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
pushi.e 0
conv.i.v
push.v self.screenshot
call.i draw_sprite_ext(argc=9)
popz.v

:[44]
pushi.e 1
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
b [end]

:[45]
pushi.e 0
pop.v.i global.window_xofs
pushi.e 0
pop.v.i global.window_yofs

:[end]