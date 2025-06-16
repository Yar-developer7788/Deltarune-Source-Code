.localvar 2 arguments
.localvar 37994 speedrunners 19428

:[0]
push.v self.active
pushi.e 1
cmp.b.v EQ
bf [39]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [38]

:[2]
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.xx
push.v self.shift
add.v.v
pop.v.v self.x
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [30]

:[3]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [6]

:[4]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [6]

:[5]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [7]

:[6]
push.e 1

:[7]
bf [30]

:[8]
pushi.e 1259
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i 1259.triggered

:[10]
pushi.e 1
pop.v.i self.image_index
pushi.e 166
conv.i.v
pushi.e 165
conv.i.v
call.i choose(argc=2)
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.brokenpot
pushi.e 1
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.brokenpot
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[12]
popenv [11]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [29]

:[13]
pushi.e 1296
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[14]
pushi.e 1296
pushenv [26]

:[15]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.newenem
push.v self.newenem
pushi.e -9
pushenv [25]

:[16]
push.v other.sprite_index
pushi.e 1281
cmp.i.v EQ
bf [21]

:[17]
push.v other.image_xscale
pushi.e -2
cmp.i.v EQ
bf [19]

:[18]
push.v other.x
pushi.e 110
sub.i.v
pop.v.v self.x
push.v other.y
pushi.e 2
add.i.v
pop.v.v self.y
b [20]

:[19]
push.v other.x
pushi.e 12
sub.i.v
pop.v.v self.x
push.v other.y
pushi.e 2
add.i.v
pop.v.v self.y

:[20]
b [24]

:[21]
push.v other.image_xscale
pushi.e -2
cmp.i.v EQ
bf [23]

:[22]
push.v other.x
pushi.e 142
sub.i.v
pop.v.v self.x
push.v other.y
pop.v.v self.y
b [24]

:[23]
push.v other.x
pushi.e 24
add.i.v
pop.v.v self.x
push.v other.y
pop.v.v self.y

:[24]
pushi.e 56
pop.v.i self.myencounter
pushi.e 1254
pop.v.i self.sprite_index
pushi.e 1254
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.facing

:[25]
popenv [16]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [15]

:[27]
pushi.e 1261
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[28]
pushi.e 1
pop.v.i 1261.triggered

:[29]
pushi.e 0
pop.v.b self.active

:[30]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [38]

:[31]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [38]

:[32]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [35]

:[33]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [35]

:[34]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushi.e 0
pop.v.b self.active
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[38]
b [40]

:[39]
pushi.e 1
pop.v.i self.image_index

:[40]
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [42]

:[41]
push.s "right"@4637
pop.v.s self.going

:[42]
push.v self.x
push.v self.xprevious
cmp.v.v LT
bf [44]

:[43]
push.s "left"@5994
pop.v.s self.going

:[44]
push.v self.x
push.v self.xprevious
sub.v.v
pop.v.v self.tellspeed
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 2005
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.pipismarker
pushi.e 2074
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wheel1
pushi.e 2074
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wheel2
pushi.e 16
push.v self.wheel1
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e -16
push.v self.wheel2
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d 0.5
push.v self.wheel1
pushi.e -9
pop.v.d [stacktop]self.friction
push.d 0.5
push.v self.wheel2
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.depth
pushi.e 10
add.i.v
push.v self.wheel1
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 10
sub.i.v
push.v self.wheel2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 30
conv.i.v
push.v self.wheel1
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 30
conv.i.v
push.v self.wheel2
call.i gml_Script_scr_doom(argc=2)
popz.v
push.v self.pipismarker
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 0
pop.v.b self.visible
pushi.e 0
pop.v.i self.myinteract
push.d 1.4
conv.d.v
pushi.e 298
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.boss

:[46]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [49]

:[47]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [49]

:[48]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pipismarker
pushi.e 0
conv.i.v
pushi.e 102
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[49]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
push.v self.con
pushi.e 999
cmp.i.v EQ
bf [59]

:[52]
pushi.e 166
conv.i.v
pushi.e 165
conv.i.v
call.i choose(argc=2)
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.b self.active
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.brokenpot
pushi.e 1
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.brokenpot
pushi.e -9
pushenv [54]

:[53]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[54]
popenv [53]
pushi.e 0
pop.v.b self.visible
push.v self.mySwatch
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [58]

:[55]
push.v self.mySwatch
pushi.e -9
pushenv [57]

:[56]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fader
push.v self.sprite_index
push.v self.fader
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.fader
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.fader
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.fader
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
push.v self.fader
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d -1.5
conv.d.v
push.d -1.2
conv.d.v
call.i random_range(argc=2)
push.v self.fader
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 90
conv.i.v
push.v self.fader
call.i gml_Script_scr_doom(argc=2)
popz.v
push.d 1.8
conv.d.v
push.d 0.35
conv.d.v
pushi.e 103
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]

:[58]
pushi.e 2074
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wheel1
pushi.e 2074
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wheel2
push.d -1.2
push.v self.wheel1
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d -1.1
push.v self.wheel2
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.depth
pushi.e 10
add.i.v
push.v self.wheel1
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 10
sub.i.v
push.v self.wheel2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 90
conv.i.v
push.v self.wheel1
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 90
conv.i.v
push.v self.wheel2
call.i gml_Script_scr_doom(argc=2)
popz.v
push.s "satiated"@37993
pop.v.s local.speedrunners
pushi.e -999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[59]
push.v self.con
pushi.e 9999
cmp.i.v EQ
bf [end]

:[60]
pushi.e 2005
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.pipismarker
push.d -1.2
push.v self.pipismarker
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.depth
push.v self.pipismarker
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.pipismarker
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 90
conv.i.v
push.v self.pipismarker
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 2074
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wheel1
pushi.e 2074
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
push.v self.active
pushi.e 8
mul.i.v
add.v.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wheel2
pushi.e 16
push.v self.wheel1
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e -16
push.v self.wheel2
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d -0.1
push.v self.wheel1
pushi.e -9
pop.v.d [stacktop]self.friction
push.d -0.1
push.v self.wheel2
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.depth
pushi.e 10
add.i.v
push.v self.wheel1
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 10
sub.i.v
push.v self.wheel2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 90
conv.i.v
push.v self.wheel1
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 90
conv.i.v
push.v self.wheel2
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 0
pop.v.b self.visible
push.d 1.4
conv.d.v
pushi.e 298
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]