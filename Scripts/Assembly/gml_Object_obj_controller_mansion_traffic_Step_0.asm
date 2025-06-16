.localvar 2 arguments

:[0]
push.v 82.x
pushi.e 1246
cmp.i.v GTE
bf [3]

:[1]
push.v self.carGen
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.v self.victory
pushi.e 0
cmp.b.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1117
conv.i.v
pushi.e 120
conv.i.v
pushi.e 1241
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.carGen
pushi.e 2
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.group
pushi.e 5
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.gen_rate
pushi.e -5
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.timer
pushi.e 12
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.gen_speed
pushi.e 2375
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.car_sprite
pushi.e 0
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.skipEvery
pushi.e 0
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.walking
pushi.e 1
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.speedadjust
pushi.e 1
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.alwayswalking
pushi.e 0
push.v self.carGen
pushi.e -9
pop.v.i [stacktop]self.prepopulate

:[6]
push.v 82.x
pushi.e 1246
cmp.i.v LT
bf [8]

:[7]
push.v self.carGen
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
push.v self.carGen
pushi.e -9
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]

:[13]
push.v self.victory
pushi.e 1
cmp.b.v EQ
bf [100]

:[14]
pushi.e 1115
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[15]
pushi.e 1115
pushenv [20]

:[16]
pushi.e 0
pop.v.i self.animsiner
pushi.e 1298
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [20]

:[17]
push.v other.hitcount
push.e 1
add.i.v
pop.v.v other.hitcount
pushi.e 1116
conv.i.v
push.v self.y
pushi.e 24
sub.i.v
pushi.e 92
add.i.v
push.v self.x
pushi.e 6
sub.i.v
pushi.e 5
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.run
push.v other.hitcount
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
push.v self.run
pushi.e -9
pop.v.i [stacktop]self.dir

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [16]

:[21]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [39]

:[22]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 370
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1115
pushenv [36]

:[23]
push.v self.y
push.v 82.y
cmp.v.v LTE
bf [25]

:[24]
push.v self.x
pushi.e 1160
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 0
pop.v.i self.active
b [29]

:[28]
pushi.e 8
pop.v.i self.vspeed

:[29]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 100
sub.i.v
cmp.v.v LT
bt [33]

:[30]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
pushi.e 640
add.i.v
cmp.v.v GT
bt [33]

:[31]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
cmp.v.v LT
bt [33]

:[32]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
pushi.e 480
add.i.v
cmp.v.v GT
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [23]
pushi.e 1117
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[39]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [94]

:[40]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [44]

:[41]
pushi.e 2685
conv.i.v
pushi.e 1360
conv.i.v
pushi.e 1400
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.hole
push.v self.hole
pushi.e -9
pushenv [43]

:[42]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[43]
popenv [42]
pushi.e 5
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[44]
push.v self.timer
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 4
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index

:[46]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 3
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index

:[48]
push.v self.timer
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
pushi.e 2
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index

:[50]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index

:[52]
push.v self.timer
pushi.e 6
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index

:[54]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [60]

:[55]
pushi.e 2696
conv.i.v
pushi.e 1380
conv.i.v
pushi.e 1420
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mousetail
pushi.e -90
push.v self.mousetail
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.mousetail
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.mousetail
pushi.e -9
pushenv [57]

:[56]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[57]
popenv [56]
pushi.e 2691
conv.i.v
pushi.e 1380
conv.i.v
pushi.e 1418
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mouse1
push.v self.mouse1
pushi.e -9
pushenv [59]

:[58]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[59]
popenv [58]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[60]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1298
conv.i.v
pushi.e 1390
conv.i.v
pushi.e 1420
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[62]
push.v self.timer
pushi.e 35
cmp.i.v EQ
bt [66]

:[63]
push.v self.timer
pushi.e 40
cmp.i.v EQ
bt [66]

:[64]
push.v self.timer
pushi.e 45
cmp.i.v EQ
bt [66]

:[65]
push.v self.timer
pushi.e 50
cmp.i.v EQ
b [67]

:[66]
push.e 1

:[67]
bf [69]

:[68]
pushi.e 1298
conv.i.v
pushi.e 1390
conv.i.v
pushi.e 1420
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[69]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [75]

:[70]
push.v self.mouse1
pushi.e -9
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
push.v self.mousetail
pushi.e -9
pushenv [74]

:[73]
call.i instance_destroy(argc=0)
popz.v

:[74]
popenv [73]

:[75]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [77]

:[76]
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index

:[77]
push.v self.timer
pushi.e 51
cmp.i.v EQ
bf [79]

:[78]
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index

:[79]
push.v self.timer
pushi.e 52
cmp.i.v EQ
bf [81]

:[80]
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index

:[81]
push.v self.timer
pushi.e 53
cmp.i.v EQ
bf [83]

:[82]
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index

:[83]
push.v self.timer
pushi.e 54
cmp.i.v EQ
bf [85]

:[84]
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.e 1
add.i.v
pop.i.v [stacktop]self.image_index

:[85]
push.v self.timer
pushi.e 55
cmp.i.v EQ
bf [89]

:[86]
push.v self.hole
pushi.e -9
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]

:[89]
push.v self.timer
pushi.e 50
cmp.i.v GT
bf [91]

:[90]
pushi.e 1298
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[94]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [100]

:[95]
pushi.e 1231
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [99]

:[96]
pushi.e 1231
pushenv [98]

:[97]
pushbltn.v builtin.room_width
pushi.e 2
mul.i.v
pop.v.v self.x
pushbltn.v builtin.room_height
pushi.e 2
mul.i.v
pop.v.v self.y

:[98]
popenv [97]

:[99]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[100]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[101]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[102]
pushi.e 1143
pop.v.i 82.x
pushi.e 360
pop.v.i 82.y

:[end]