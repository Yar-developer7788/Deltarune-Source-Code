.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.msgtimer
pushi.e 0
pop.v.i self.swantimer
push.v self.swan
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
pushi.e 1
pop.v.i self.active
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i 82.visible
pushi.e 276
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]

:[5]
push.v self.swan
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
push.d 1.5
pop.v.d self.con
pushi.e 82
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.fun
pushi.e 1
pop.v.i global.facing
pushi.e 15
conv.i.v
push.v 124.y
push.v 124.swanmaincharay
add.v.v
push.v 124.x
push.v 124.swanmaincharax
add.v.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[8]
popenv [7]
pushi.e 276
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.follow
pushi.e 1
pop.v.i self.fun
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 15
conv.i.v
push.v 124.y
push.v 124.swanmaincharay
add.v.v
pushi.e 12
sub.i.v
push.v 124.x
push.v 124.swanmaincharax
add.v.v
pushi.e 50
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[10]
popenv [9]

:[11]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [21]

:[12]
pushbltn.v builtin.room
pushi.e 201
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
push.v self.swantimer
push.e 1
add.i.v
pop.v.v self.swantimer
push.v self.swantimer
pushi.e 15
cmp.i.v GTE
bf [18]

:[17]
push.d 1.6
pop.v.d self.con
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queencar_slash_Step_0_gml_36_0"@18141
conv.s.v
push.s "\\EJ* Let's go^1, Kris!/%"@18142
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[18]
b [21]

:[19]
push.v self.swantimer
push.e 1
add.i.v
pop.v.v self.swantimer
push.v self.swantimer
pushi.e 15
cmp.i.v GTE
bf [21]

:[20]
pushi.e 0
pop.v.i self.swantimer
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i self.active

:[21]
push.v self.con
push.d 1.6
cmp.d.v EQ
bf [23]

:[22]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [27]

:[25]
push.v self.swantimer
push.e 1
add.i.v
pop.v.v self.swantimer
push.v self.swantimer
pushi.e 15
cmp.i.v GTE
bf [27]

:[26]
pushi.e 0
pop.v.i self.swantimer
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i self.active

:[27]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [67]

:[28]
pushi.e 4
pop.v.i self.wx
pushbltn.v builtin.room
pushi.e 200
cmp.i.v GTE
bf [30]

:[29]
pushi.e 2
pop.v.i self.wx

:[30]
pushi.e 0
pop.v.i self.wy
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [32]

:[31]
pushi.e -2
pop.v.i self.wy

:[32]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [34]

:[33]
pushi.e 2
pop.v.i self.wy

:[34]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [37]

:[35]
push.v self.backwardstalkcon
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i self.backwardstalkcon
pushi.e 1
pop.v.i self.dobackwardstalk

:[37]
pushi.e 0
pop.v.i self.movex
pushi.e 0
pop.v.i self.movey
pushi.e 68
conv.i.v
push.v self.y
push.v self.wy
add.v.v
push.v self.x
push.v self.wx
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [39]

:[38]
pushi.e 250
conv.i.v
push.v self.y
push.v self.wy
add.v.v
push.v self.x
push.v self.wx
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 1
pop.v.i self.movex
pushi.e 1
pop.v.i self.movey
b [52]

:[42]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self.wx
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [44]

:[43]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
push.v self.wx
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 1
pop.v.i self.movex

:[47]
pushi.e 68
conv.i.v
push.v self.y
push.v self.wy
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [49]

:[48]
pushi.e 250
conv.i.v
push.v self.y
push.v self.wy
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 1
pop.v.i self.movey

:[52]
push.v self.movex
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.pause_x_move
conv.v.b
not.b
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.v self.x
push.v self.wx
add.v.v
pop.v.v self.x

:[57]
push.v self.movey
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.v self.pause_y_move
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.v self.y
push.v self.wy
add.v.v
pop.v.v self.y

:[62]
push.v self.swan
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.v self.x
pushi.e 85
add.i.v
pop.v.v 82.x
push.v self.y
pop.v.v 82.y
b [66]

:[64]
push.v self.x
push.v self.swanmaincharax
add.v.v
pop.v.v 82.x
push.v self.y
push.v self.swanmaincharay
add.v.v
pop.v.v 82.y
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [66]

:[65]
push.v self.x
push.v self.swanmaincharax
add.v.v
pushi.e 50
sub.i.v
pop.v.v 276.x
push.v self.y
push.v self.swanmaincharay
add.v.v
pushi.e 12
sub.i.v
pop.v.v 276.y

:[66]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[67]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[68]
push.v self.pause_auto_talk
conv.v.b
not.b
bf [end]

:[69]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [78]

:[70]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [76]

:[71]
push.v self.msgtimer
push.e 1
add.i.v
pop.v.v self.msgtimer
push.v self.msgtimer
pushi.e 60
cmp.i.v GTE
bf [75]

:[72]
pushi.e 64
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.forcebutton1

:[74]
popenv [73]
pushi.e 0
pop.v.i self.msgtimer

:[75]
b [77]

:[76]
pushi.e 0
pop.v.i self.msgtimer

:[77]
b [end]

:[78]
push.v self.dotalk
pushi.e 1
cmp.i.v EQ
bf [end]

:[79]
push.s "obj_queencar_slash_Step_0_gml_110_0"@18143
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.swan
pushi.e 1
cmp.i.v EQ
bf [92]

:[80]
push.v self.talkcon
pushi.e 1
cmp.i.v EQ
bf [84]

:[81]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
push.s "obj_queencar_slash_Step_0_gml_147_0"@18144
conv.s.v
push.s "\\EM* Now, we have to think of some way to distract Queen.../%"@18145
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 968
pushenv [83]

:[82]
pushi.e 1
pop.v.b self.queen_heckle

:[83]
popenv [82]

:[84]
push.v self.talkcon
pushi.e 2
cmp.i.v EQ
bf [88]

:[85]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
push.s "obj_queencar_slash_Step_0_gml_155_0"@18147
conv.s.v
push.s "\\EM* What are these..^1. Little houses?/%"@18148
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 968
pushenv [87]

:[86]
pushi.e 1
pop.v.b self.queen_heckle

:[87]
popenv [86]

:[88]
push.v self.talkcon
pushi.e 3
cmp.i.v EQ
bf [92]

:[89]
pushi.e 968
pushenv [91]

:[90]
pushi.e 1
pop.v.b self.queen_heckle

:[91]
popenv [90]

:[92]
pushi.e -5
pushi.e 0
push.v [array]self.msg
push.s "* .../%"@14954
cmp.s.v NEQ
bf [94]

:[93]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[94]
pushi.e 0
pop.v.i self.dotalk

:[end]