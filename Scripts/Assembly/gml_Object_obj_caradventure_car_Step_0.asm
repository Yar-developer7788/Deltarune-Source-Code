.localvar 2 arguments
.localvar 21189 canmove 9147
.localvar 9579 y_pos 9148
.localvar 21190 random_y 9149
.localvar 6706 d 9151

:[0]
push.v self.active
conv.v.b
bf [145]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.block
push.v self.pause_x_move
conv.v.b
not.b
bf [3]

:[2]
pushi.e 6
pop.v.i self.hspeed
b [4]

:[3]
pushi.e 0
pop.v.i self.hspeed

:[4]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.hspeed
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 1
pop.v.b local.canmove
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [7]

:[5]
push.v self.x
pushi.e 1080
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.b local.canmove

:[7]
pushloc.v local.canmove
conv.v.b
bf [18]

:[8]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [10]

:[9]
call.i gml_Script_up_h(argc=0)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[13]
push.v self.y
pushi.e 240
cmp.i.v LT
bf [15]

:[14]
call.i gml_Script_down_h(argc=0)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y

:[18]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [20]

:[19]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 20
add.i.v
cmp.v.v GT
b [21]

:[20]
push.e 0

:[21]
bf [24]

:[22]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
push.v self.hits
pushi.e 4
cmp.i.v LT
bf [24]

:[23]
pushi.e 1
pop.v.i self.block

:[24]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [26]

:[25]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
cmp.v.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v self.x
pushi.e 6
add.i.v
pop.v.v self.x

:[29]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[30]
push.v self.x
pushi.e 85
add.i.v
pop.v.v 82.x
push.v self.y
pop.v.v 82.y

:[31]
push.v self.cartimer
push.e 1
add.i.v
pop.v.v self.cartimer
push.v self.cartimer
push.v self.carthreshold
pushi.e 6
conv.i.v
push.v self.hits
pushi.e 2
conv.i.d
div.d.v
call.i min(argc=2)
sub.v.v
cmp.v.v GTE
bf [33]

:[32]
push.v self.talktimer
pushi.e 860
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [46]

:[35]
pushi.e 0
pop.v.i local.y_pos
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v local.random_y
push.v self.bananamode
conv.v.b
bf [40]

:[36]
pushloc.v local.random_y
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
pushi.e 150
conv.i.v
pushi.e 110
conv.i.v
call.i random_range(argc=2)
b [39]

:[38]
pushi.e 280
conv.i.v
pushi.e 260
conv.i.v
call.i random_range(argc=2)

:[39]
pop.v.v local.y_pos
b [41]

:[40]
pushi.e 100
pushi.e 180
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.y_pos

:[41]
pushi.e 366
conv.i.v
pushi.e 140
conv.i.v
pushloc.v local.y_pos
call.i clamp(argc=3)
pop.v.v local.y_pos
pushi.e 304
conv.i.v
pushloc.v local.y_pos
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.car
push.v self.car
pushi.e -9
pushenv [43]

:[42]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[43]
popenv [42]
push.v self.hits
pushi.e 4
cmp.i.v LT
bf [45]

:[44]
push.v self.car
pushi.e -9
push.v [stacktop]self.hspeed
pushi.e 1
sub.i.v
push.v self.car
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.car
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
pushi.e 6
sub.i.v
pop.i.v [stacktop]self.hspeed
push.v self.car
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.image_xscale

:[45]
pushi.e 0
pop.v.i self.cartimer
push.v self.carcount
push.e 1
add.i.v
pop.v.v self.carcount

:[46]
push.v self.triggertalk
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 120
pop.v.i self.talkshowtimer
pushi.e 0
pop.v.i self.triggertalk

:[48]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
pushi.e 30
cmp.i.v EQ
bf [61]

:[49]
push.v self.remy
push.v self.y
cmp.v.v EQ
bf [60]

:[50]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 1
pop.v.i global.fe
pushglb.v global.is_console
conv.v.b
bt [52]

:[51]
push.v 1112.gamepad_active
conv.v.b
b [53]

:[52]
push.e 1

:[53]
bf [58]

:[54]
push.s "obj_caradventure_car_slash_Step_0_gml_80_0_b"@21191
conv.s.v
push.s "\\E0* Kris Press Directional Buttons To Steer/%"@21192
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [57]

:[55]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [57]

:[56]
push.s "obj_caradventure_car_slash_Step_0_gml_57_0"@21193
conv.s.v
push.s "\\E0* Kris Press Directions To Steer/%"@21194
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[57]
b [59]

:[58]
push.s "obj_caradventure_car_slash_Step_0_gml_57_0"@21193
conv.s.v
push.s "\\E0* Kris Press Directions To Steer/%"@21194
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[59]
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
b [61]

:[60]
push.v self.cartimer
pushi.e 90
add.i.v
pop.v.v self.cartimer
push.v self.talktimer
pushi.e 90
add.i.v
pop.v.v self.talktimer

:[61]
push.v self.talktimer
pushi.e 120
cmp.i.v EQ
bf [68]

:[62]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [67]

:[63]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [67]

:[64]
pushi.e 64
pushenv [66]

:[65]
pushi.e 1
pop.v.i self.forcebutton1

:[66]
popenv [65]

:[67]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_80_0"@21195
conv.s.v
push.s "\\EE* Kris Don't Hit The Cars!/%"@21196
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[68]
push.v self.talktimer
pushi.e 270
cmp.i.v LT
bf [71]

:[69]
push.v self.hits
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.v self.hittalk
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [79]

:[73]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [78]

:[74]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [78]

:[75]
pushi.e 64
pushenv [77]

:[76]
pushi.e 1
pop.v.i self.forcebutton1

:[77]
popenv [76]

:[78]
pushi.e 1
pop.v.i self.hittalk
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_98_0"@21197
conv.s.v
push.s "\\E1* Haha Okay Actually Hit All The Cars/%"@21198
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[79]
push.v self.talktimer
pushi.e 300
cmp.i.v EQ
bf [86]

:[80]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [85]

:[81]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [85]

:[82]
pushi.e 64
pushenv [84]

:[83]
pushi.e 1
pop.v.i self.forcebutton1

:[84]
popenv [83]

:[85]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_115_0"@21199
conv.s.v
push.s "\\E1* So Much Traffic Isn't It Wonderful/%"@21200
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[86]
push.v self.talktimer
pushi.e 360
cmp.i.v EQ
bf [93]

:[87]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [92]

:[88]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [92]

:[89]
pushi.e 64
pushenv [91]

:[90]
pushi.e 1
pop.v.i self.forcebutton1

:[91]
popenv [90]

:[92]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_131_0"@21201
conv.s.v
push.s "\\ED* Lightners Love Traffic They Look It Up All The Time/%"@21202
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[93]
push.v self.talktimer
pushi.e 450
cmp.i.v EQ
bf [100]

:[94]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [99]

:[95]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [99]

:[96]
pushi.e 64
pushenv [98]

:[97]
pushi.e 1
pop.v.i self.forcebutton1

:[98]
popenv [97]

:[99]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_147_0"@21203
conv.s.v
push.s "\\EB* Poor Noelle She Would Love Hitting All These Cars/%"@21204
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[100]
push.v self.talktimer
pushi.e 540
cmp.i.v EQ
bf [107]

:[101]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [106]

:[102]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [106]

:[103]
pushi.e 64
pushenv [105]

:[104]
pushi.e 1
pop.v.i self.forcebutton1

:[105]
popenv [104]

:[106]
pushi.e 1
pop.v.i self.triggertalk
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 8
pop.v.i global.fe
push.s "obj_caradventure_car_slash_Step_0_gml_164_0"@21205
conv.s.v
push.s "\\E2* Umm^1, actually^1, I... she^1, um^1, might not^1, um.../%"@21206
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[107]
push.v self.talktimer
pushi.e 640
cmp.i.v EQ
bf [113]

:[108]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [112]

:[109]
pushi.e 64
pushenv [111]

:[110]
pushi.e 1
pop.v.i self.forcebutton1

:[111]
popenv [110]

:[112]
pushi.e 1
pop.v.i self.bananamode
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 1
pop.v.i global.fe
push.s "obj_caradventure_car_slash_Step_0_gml_179_0"@21207
conv.s.v
push.s "\\EH* Stop Everything/%"@21208
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[113]
push.v self.talktimer
pushi.e 700
cmp.i.v EQ
bf [120]

:[114]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [119]

:[115]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [119]

:[116]
pushi.e 64
pushenv [118]

:[117]
pushi.e 1
pop.v.i self.forcebutton1

:[118]
popenv [117]

:[119]
pushi.e 1
pop.v.i self.triggertalk
pushi.e 305
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 660
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.banana
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_198_0"@21210
conv.s.v
push.s "\\E0* Kris Get The Banana/%"@21211
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[120]
push.v self.talktimer
pushi.e 900
cmp.i.v EQ
bf [122]

:[121]
push.v self.bananahit
pushi.e 0
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [130]

:[124]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [129]

:[125]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [129]

:[126]
pushi.e 64
pushenv [128]

:[127]
pushi.e 1
pop.v.i self.forcebutton1

:[128]
popenv [127]

:[129]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_216_0"@21212
conv.s.v
push.s "\\EF* Kris You Are Going To Get Sick/%"@21213
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[130]
push.v self.talktimer
pushi.e 1000
cmp.i.v EQ
bf [137]

:[131]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [136]

:[132]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [136]

:[133]
pushi.e 64
pushenv [135]

:[134]
pushi.e 1
pop.v.i self.forcebutton1

:[135]
popenv [134]

:[136]
pushi.e 1
pop.v.i self.triggertalk
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_car_slash_Step_0_gml_233_0"@21214
conv.s.v
push.s "\\E1* Here Comes A Crossing Get Ready To Stop/%"@21215
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[137]
push.v self.talktimer
pushi.e 1060
cmp.i.v EQ
bf [144]

:[138]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [143]

:[139]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [143]

:[140]
pushi.e 64
pushenv [142]

:[141]
pushi.e 1
pop.v.i self.forcebutton1

:[142]
popenv [141]

:[143]
pushi.e 1
pop.v.b self.finish_convo

:[144]
b [end]

:[145]
pushi.e 0
pop.v.i self.hspeed

:[end]