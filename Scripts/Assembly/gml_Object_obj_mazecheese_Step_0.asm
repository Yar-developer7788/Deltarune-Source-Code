.localvar 2 arguments
.localvar 36581 yax 18188

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [4]

:[3]
push.e 0

:[4]
bf [17]

:[5]
pushi.e 0
pop.v.i self.myinteract
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1746
conv.i.v
pushi.e 278
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 35
add.i.v
pushi.e 15
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mousemarker

:[7]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [13]

:[8]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1746
conv.i.v
pushi.e 310
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 35
add.i.v
pushi.e 15
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mousemarker
b [13]

:[10]
call.i gml_Script_charaY(argc=0)
pushi.e 18
sub.i.v
pop.v.v local.yax
pushloc.v local.yax
pushi.e 240
cmp.i.v LT
bf [12]

:[11]
pushi.e 240
pop.v.i local.yax

:[12]
pushi.e 1746
conv.i.v
pushloc.v local.yax
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 35
add.i.v
pushi.e 15
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mousemarker

:[13]
pushi.e -10
push.v self.mousemarker
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 276
pushenv [16]

:[14]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.fun
pushi.e 717
pop.v.i self.sprite_index

:[16]
popenv [14]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[17]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [24]

:[18]
push.v self.mousemarker
pushi.e -9
pushenv [20]

:[19]
pushi.e 0
pop.v.i self.speed

:[20]
popenv [19]
pushi.e 276
pushenv [23]

:[21]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.fun
pushi.e 724
pop.v.i self.sprite_index

:[23]
popenv [21]
pushi.e 4
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [39]

:[28]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 536
pop.v.i self.encounterflag

:[30]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
pushi.e 537
pop.v.i self.encounterflag

:[32]
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.mousemarker
pushi.e 0
conv.i.v
pushi.e 66
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[34]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [38]

:[35]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.mousemarker
pushi.e 0
conv.i.v
pushi.e 79
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
b [38]

:[37]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.mousemarker
pushi.e 0
conv.i.v
pushi.e 54
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[38]
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[39]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [50]

:[40]
push.v self.x
pushi.e 840
cmp.i.v GT
bf [44]

:[41]
pushi.e 1114
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type
pushi.e 99
pop.v.i self.con

:[43]
popenv [42]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 361
pop.v.v [array]self.flag

:[44]
push.v self.x
pushi.e 840
cmp.i.v LT
bf [50]

:[45]
pushi.e 1114
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.con

:[47]
popenv [46]
pushi.e 1215
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e 1
pop.v.i 1215.cheeseCrushed

:[49]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type
pushi.e 8
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[50]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [52]

:[51]
pushi.e 357
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 10
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[55]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i global.interact

:[57]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [64]

:[58]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 310
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [63]

:[59]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 310
pop.v.v [array]self.flag
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [61]

:[60]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mazecheese_slash_Step_0_gml_97_0"@36583
conv.s.v
push.s "\\E8* I..^1. I never want to see cheese ever again.../%"@36584
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [62]

:[61]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 311
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mazecheese_slash_Step_0_gml_102_0"@36585
conv.s.v
push.s "* (The cheese was destroyed in the heat of battle...)/"@36586
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mazecheese_slash_Step_0_gml_103_0"@36587
conv.s.v
push.s "* (You realized you lost sight of what was important...)/%"@36588
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[62]
call.i gml_Script_d_make(argc=0)
popz.v

:[63]
pushi.e 12
pop.v.i self.con

:[64]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [66]

:[65]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 99
pop.v.i self.con
pushi.e 4
pop.v.i self.type

:[69]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [71]

:[70]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.con

:[74]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bf [end]

:[75]
push.v self.fallcon
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
pushi.e 94
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.fallcon
push.e 1
add.i.v
pop.v.v self.fallcon

:[77]
push.v self.fallcon
pushi.e 1
cmp.i.v EQ
bf [end]

:[78]
push.v self.y
pushi.e 352
cmp.i.v LT
bf [81]

:[79]
push.v self.vspeed
pushi.e 1
add.i.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 12
cmp.i.v GTE
bf [81]

:[80]
pushi.e 12
pop.v.i self.vspeed

:[81]
push.v self.y
pushi.e 312
cmp.i.v GT
bf [end]

:[82]
pushi.e 0
pop.v.i self.vspeed
pushi.e 312
pop.v.i self.y
push.v self.fallcon
push.e 1
add.i.v
pop.v.v self.fallcon

:[end]