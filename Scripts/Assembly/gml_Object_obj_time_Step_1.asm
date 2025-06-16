.localvar 2 arguments
.localvar 10813 sw 18394
.localvar 10814 sh 18395
.localvar 107 i 18399
.localvar 10755 __n 18405
.localvar 36740 gp_num 18409
.localvar 36741 any_connected 18410

:[0]
push.v self.paused
conv.v.b
not.b
bf [9]

:[1]
push.v global.time
pushi.e 1
add.i.v
pop.v.v global.time
pushglb.v global.is_console
conv.v.b
bf [3]

:[2]
call.i os_is_paused(argc=0)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 1
pop.v.b self.paused
push.v self.screenshot
call.i sprite_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
pop.v.v local.sw
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
pop.v.v local.sh
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

:[7]
exit.i

:[8]
b [10]

:[9]
exit.i

:[10]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [63]

:[11]
push.v self.quicksaved
pushi.e 2
cmp.i.v NEQ
bf [14]

:[12]
pushi.e 1
conv.b.v
call.i gml_Script_scr_84_debug(argc=1)
conv.v.b
bf [14]

:[13]
exit.i

:[14]
pushi.e 117
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [16]

:[15]
push.v self.quicksaved
pushi.e 22
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [30]

:[18]
pushi.e 1
pop.v.i self.quicksaved
pushglb.v global.myfight
pop.v.v self.remmyfight
pushglb.v global.mnfight
pop.v.v self.remmnfight
pushglb.v global.interact
pop.v.v self.reminteract
pushglb.v global.turntimer
pop.v.v self.remturntimer
call.i gml_Script_camerax(argc=0)
pop.v.v self.remcamerax
call.i gml_Script_cameray(argc=0)
pop.v.v self.remcameray
pushi.e 0
pop.v.i local.i

:[19]
pushloc.v local.i
pushbltn.v builtin.instance_count
cmp.v.v LT
bf [29]

:[20]
push.i 174475
setowner.e
pushloc.v local.i
call.i instance_id_get(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.instance_list
push.i 174476
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.xstart
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.xstart_list
push.i 174477
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.ystart
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.ystart_list
push.i 174478
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.object_index
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.object_list
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.__quickSaved

:[22]
popenv [21]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
call.i variable_instance_get_names(argc=1)
pop.v.v self.__masterArray
push.i 174479
setowner.e
push.v self.__masterArray
call.i array_length_1d(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.__arrayLength
pushi.e 0
pop.v.i local.__n

:[23]
pushloc.v local.__n
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.__arrayLength
cmp.v.v LT
bf [28]

:[24]
push.i 174480
setowner.e
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.__remArray
pushloc.v local.__n
conv.v.i
popaf.e
push.i 166937
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveSpriteIndex
push.i 166938
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.image_index
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveImageIndex
push.i 166940
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.image_xscale
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveXscale
push.i 166941
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.image_yscale
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveYscale
push.i 166942
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveAlpha
push.i 166943
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.image_blend
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveBlend
push.i 166944
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveAngle
push.i 166945
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveX
push.i 166946
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveY
push.i 166947
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.speed
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveSpeed
push.i 166948
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveDirection
push.i 166949
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.depth
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveDepth
push.i 166950
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.visible
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveVisible
push.i 166951
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.gravity
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveGravity
push.i 166952
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.gravity_direction
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveGravityDirection
push.i 166953
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
push.v [stacktop]self.friction
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.___saveFriction
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
push.s "__myVar"@10777
cmp.s.v EQ
bf [26]

:[25]
push.i 166954
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.__myVar
pushloc.v local.__n
conv.v.i
popaf.e
b [27]

:[26]
push.i 166954
setowner.e
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
call.i variable_instance_get(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.__myVar
pushloc.v local.__n
conv.v.i
popaf.e

:[27]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [23]

:[28]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [19]

:[29]
pushbltn.v builtin.instance_count
pop.v.v self.reminstancecount

:[30]
push.v self.quicksaved
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.quicksaved

:[32]
pushi.e 118
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [34]

:[33]
push.v self.quicksaved
pushi.e 99
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [63]

:[36]
push.v self.remmyfight
pop.v.v global.myfight
push.v self.remmnfight
pop.v.v global.mnfight
push.v self.reminteract
pop.v.v global.interact
push.v self.remturntimer
pop.v.v global.turntimer
push.v self.remcamerax
call.i gml_Script_camerax_set(argc=1)
popz.v
push.v self.remcameray
call.i gml_Script_cameray_set(argc=1)
popz.v
pushi.e -3
pushenv [42]

:[37]
push.v self.object_index
pushi.e 1134
cmp.i.v NEQ
bf [39]

:[38]
push.v self.object_index
pushi.e 1112
cmp.i.v NEQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 0
conv.b.v
pushi.e 1096
conv.i.v
call.i instance_change(argc=2)
popz.v

:[42]
popenv [37]
pushi.e 1096
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 0
pop.v.i local.i

:[45]
pushloc.v local.i
push.v self.reminstancecount
cmp.v.v LT
bf [51]

:[46]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [50]

:[47]
push.i 174475
setowner.e
pushi.e 129
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.ystart_list
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.xstart_list
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.instance_list
push.i 240018
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.object_list
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.__changeobject
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
conv.b.v
push.v self.__changeobject
call.i instance_change(argc=2)
popz.v

:[49]
popenv [48]

:[50]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [45]

:[51]
pushi.e 0
pop.v.i local.i

:[52]
pushloc.v local.i
push.v self.reminstancecount
cmp.v.v LT
bf [62]

:[53]
pushi.e 0
pop.v.i local.__n

:[54]
pushloc.v local.__n
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.__arrayLength
cmp.v.v LT
bf [61]

:[55]
push.i 133642
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveSpriteIndex
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133643
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveImageIndex
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 133650
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveXscale
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveYscale
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 133653
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveAlpha
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.i 133654
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveBlend
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.i 133652
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveAngle
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133617
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveX
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveY
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133626
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveSpeed
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133625
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveDirection
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133637
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveDepth
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 133635
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveVisible
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.visible
push.i 133628
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveGravity
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.gravity
push.i 133629
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveGravityDirection
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.gravity_direction
push.i 133627
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.___saveFriction
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.instance_list
pushi.e -9
pop.v.v [stacktop]self.friction
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.__remArray
pushloc.v local.__n
conv.v.i
pushaf.e
push.s "__myVar"@10777
cmp.s.v NEQ
bf [57]

:[56]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.__remArray
pushloc.v local.__n
conv.v.i
pushaf.e
push.s "__masterArray"@10754
cmp.s.v NEQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.__myVar
pushloc.v local.__n
conv.v.i
pushaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.__remArray
pushloc.v local.__n
conv.v.i
pushaf.e
push.v self.id
call.i variable_instance_set(argc=3)
popz.v

:[60]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [54]

:[61]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [52]

:[62]
pushi.e 2
pop.v.i self.quicksaved

:[63]
pushi.e 27
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [69]

:[64]
push.v self.quit_timer
pushi.e 0
cmp.i.v LT
bf [66]

:[65]
pushi.e 0
pop.v.i self.quit_timer

:[66]
push.v self.quit_timer
pushi.e 1
add.i.v
pop.v.v self.quit_timer
push.v self.quit_timer
pushi.e 30
cmp.i.v GTE
bf [68]

:[67]
call.i game_end(argc=0)
popz.v

:[68]
b [70]

:[69]
push.v self.quit_timer
pushi.e 2
sub.i.v
pop.v.v self.quit_timer

:[70]
pushi.e 115
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [72]

:[71]
push.v self.fullscreen_toggle
pushi.e 1
cmp.i.v EQ
b [73]

:[72]
push.e 1

:[73]
bf [75]

:[74]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[75]
pushi.e 0
pop.v.i local.i

:[76]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [78]

:[77]
push.i 232064
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released
push.i 232061
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [76]

:[78]
push.v self.gamepad_check_timer
pushi.e 1
add.i.v
pop.v.v self.gamepad_check_timer
push.v self.gamepad_check_timer
pushi.e 90
cmp.i.v GTE
bf [88]

:[79]
push.v 1112.gamepad_id
call.i gamepad_is_connected(argc=1)
conv.v.b
not.b
bf [87]

:[80]
call.i gamepad_get_device_count(argc=0)
pop.v.v local.gp_num
pushi.e 0
pop.v.b local.any_connected
pushi.e 0
pop.v.i local.i

:[81]
pushloc.v local.i
pushloc.v local.gp_num
cmp.v.v LT
bf [85]

:[82]
pushloc.v local.i
call.i gamepad_is_connected(argc=1)
conv.v.b
bf [84]

:[83]
pushi.e 1
pop.v.i 1112.gamepad_active
pushloc.v local.i
pop.v.v 1112.gamepad_id
pushi.e 1
pop.v.b local.any_connected
b [85]

:[84]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [81]

:[85]
pushloc.v local.any_connected
pushi.e 0
cmp.b.v EQ
bf [87]

:[86]
pushi.e 0
pop.v.i 1112.gamepad_active

:[87]
pushi.e 0
pop.v.i self.gamepad_check_timer

:[88]
push.v 1112.gamepad_active
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.v self.quicksaved
pushi.e 2
cmp.i.v NEQ
b [91]

:[90]
push.e 0

:[91]
bf [128]

:[92]
pushi.e 0
pop.v.i local.i

:[93]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [111]

:[94]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [102]

:[95]
pushi.e 1112
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [100]

:[96]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
bt [98]

:[97]
pushloc.v local.i
push.v 1112.gamepad_id
call.i gml_Script_scr_gamepad_axis_check(argc=2)
conv.v.b
b [99]

:[98]
push.e 1

:[99]
b [101]

:[100]
push.e 0

:[101]
b [103]

:[102]
push.e 1

:[103]
bf [107]

:[104]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[106]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [110]

:[107]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[109]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[110]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [93]

:[111]
pushi.e 4
pop.v.i local.i

:[112]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [127]

:[113]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [118]

:[114]
pushi.e 1112
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [116]

:[115]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
b [117]

:[116]
push.e 0

:[117]
b [119]

:[118]
push.e 1

:[119]
bf [123]

:[120]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [122]

:[121]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[122]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [126]

:[123]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[125]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[126]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [112]

:[127]
b [138]

:[128]
pushi.e 0
pop.v.i local.i

:[129]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [138]

:[130]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bf [134]

:[131]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [133]

:[132]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[133]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [137]

:[134]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[136]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[137]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [129]

:[138]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[139]
pushi.e 3
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
bf [141]

:[140]
pushi.e 903
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[141]
pushi.e 192
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[142]
pushbltn.v builtin.room_speed
pushi.e 30
cmp.i.v EQ
bf [144]

:[143]
pushi.e 150
pushi.e 140
pushi.e 17
conv.i.v
call.i keyboard_check(argc=1)
mul.v.i
sub.v.i
pop.v.v builtin.room_speed
b [end]

:[144]
pushi.e 30
pop.v.i builtin.room_speed

:[end]