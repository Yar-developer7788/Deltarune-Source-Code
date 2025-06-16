.localvar 2 arguments
.localvar 14685 ww 21930
.localvar 14686 wh 21931
.localvar 10813 sw 21932
.localvar 10814 sh 21933
.localvar 14689 scale_w 21934
.localvar 14690 scale_h 21935

:[0]
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
div.v.v
pop.v.v local.scale_w
pushloc.v local.wh
pushloc.v local.sh
div.v.v
pop.v.v local.scale_h
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
push.d 1.3333333333333333
pop.v.d global.window_scale
b [10]

:[9]
pushloc.v local.scale_h
pushloc.v local.scale_w
call.i min(argc=2)
call.i floor(argc=1)
pop.v.v global.window_scale

:[10]
b [end]

:[11]
pushloc.v local.scale_h
pushloc.v local.scale_w
call.i min(argc=2)
pop.v.v global.window_scale

:[end]