.localvar 2 arguments
.localvar 11034 __prop 3061
.localvar 11101 __index 3062
.localvar 11036 __val 3063
.localvar 11173 __cam 3064

:[0]
b [40]

> gml_Script___view_set_internal (locals=4, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.__prop
push.v arg.argument1
pop.v.v local.__index
push.v arg.argument2
pop.v.v local.__val
pushloc.v local.__prop
dup.v 0
push.l 0
cmp.l.v EQ
bt [20]

:[2]
dup.v 0
push.l 1
cmp.l.v EQ
bt [21]

:[3]
dup.v 0
push.l 2
cmp.l.v EQ
bt [22]

:[4]
dup.v 0
push.l 3
cmp.l.v EQ
bt [23]

:[5]
dup.v 0
push.l 4
cmp.l.v EQ
bt [24]

:[6]
dup.v 0
push.l 5
cmp.l.v EQ
bt [25]

:[7]
dup.v 0
push.l 6
cmp.l.v EQ
bt [26]

:[8]
dup.v 0
push.l 7
cmp.l.v EQ
bt [27]

:[9]
dup.v 0
push.l 8
cmp.l.v EQ
bt [28]

:[10]
dup.v 0
push.l 9
cmp.l.v EQ
bt [29]

:[11]
dup.v 0
push.l 10
cmp.l.v EQ
bt [30]

:[12]
dup.v 0
push.l 11
cmp.l.v EQ
bt [31]

:[13]
dup.v 0
push.l 12
cmp.l.v EQ
bt [32]

:[14]
dup.v 0
push.l 13
cmp.l.v EQ
bt [33]

:[15]
dup.v 0
push.l 14
cmp.l.v EQ
bt [34]

:[16]
dup.v 0
push.l 15
cmp.l.v EQ
bt [35]

:[17]
dup.v 0
push.l 16
cmp.l.v EQ
bt [36]

:[18]
b [37]

:[19]
b [38]

:[20]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_y(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_pos(argc=3)
popz.v
b [38]

:[21]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_x(argc=1)
pushloc.v local.__cam
call.i camera_set_view_pos(argc=3)
popz.v
b [38]

:[22]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_height(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_size(argc=3)
popz.v
b [38]

:[23]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_width(argc=1)
pushloc.v local.__cam
call.i camera_set_view_size(argc=3)
popz.v
b [38]

:[24]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_angle(argc=2)
popz.v
b [38]

:[25]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_border_y(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_border(argc=3)
popz.v
b [38]

:[26]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_border_x(argc=1)
pushloc.v local.__cam
call.i camera_set_view_border(argc=3)
popz.v
b [38]

:[27]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__cam
call.i camera_get_view_speed_y(argc=1)
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_speed(argc=3)
popz.v
b [38]

:[28]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_get_view_speed_x(argc=1)
pushloc.v local.__cam
call.i camera_set_view_speed(argc=3)
popz.v
b [38]

:[29]
pushloc.v local.__index
call.i view_get_camera(argc=1)
pop.v.v local.__cam
pushloc.v local.__val
pushloc.v local.__cam
call.i camera_set_view_target(argc=2)
popz.v
b [38]

:[30]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_visible(argc=2)
pop.v.v self.__res
b [38]

:[31]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_xport(argc=2)
pop.v.v self.__res
b [38]

:[32]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_yport(argc=2)
pop.v.v self.__res
b [38]

:[33]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_wport(argc=2)
pop.v.v self.__res
b [38]

:[34]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_hport(argc=2)
pop.v.v self.__res
b [38]

:[35]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_camera(argc=2)
pop.v.v self.__res
b [38]

:[36]
pushloc.v local.__val
pushloc.v local.__index
call.i view_set_surface_id(argc=2)
pop.v.v self.__res
b [38]

:[37]
b [38]

:[38]
popz.v
pushi.e 0
conv.i.v
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script___view_set_internal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__view_set_internal
popz.v

:[end]