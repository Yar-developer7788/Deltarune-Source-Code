.localvar 2 arguments

:[0]
push.v self.saved
pushi.e 1
cmp.b.v EQ
bf [17]

:[1]
push.v self.swatchfriend
pushi.e -9
pushenv [16]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
pushi.e 1
pop.v.i global.interact
push.d 0.25
pop.v.d self.image_speed
push.v self.x
pushi.e 1376
cmp.i.v GT
bf [5]

:[4]
push.v self.x
pushi.e 8
sub.i.v
pop.v.v self.x
b [6]

:[5]
pushi.e 1376
pop.v.i self.x
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
push.v self.y
pushi.e 140
cmp.i.v LT
bf [9]

:[8]
push.v self.y
pushi.e 8
add.i.v
pop.v.v self.y
b [10]

:[9]
pushi.e 140
pop.v.i self.y
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[11]
push.v self.x
pushi.e 1280
cmp.i.v GT
bf [13]

:[12]
push.v self.x
pushi.e 8
sub.i.v
pop.v.v self.x
b [14]

:[13]
pushi.e 1280
pop.v.i self.x
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 376
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
pushi.e 103
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.friendlySwatch
push.v self.sprite_index
push.v self.friendlySwatch
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.friendlySwatch
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 0
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.image_xscale
push.v self.friendlySwatch
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.friendlySwatch
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [2]

:[17]
push.v self.vaseSpawned
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.spawnVaseTrig
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 376
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.vaseSpawned
pushi.e 1257
conv.i.v
pushi.e -70
conv.i.v
pushi.e 1078
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vase
pushi.e 0
push.v self.vase
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.vase
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.vase
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.vase
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 4
push.v self.vase
pushi.e -9
pop.v.i [stacktop]self.newspeed

:[22]
push.v self.vase
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[23]
push.v self.vase
pushi.e -9
pushenv [29]

:[24]
pushi.e 1
pop.v.i other.swatchLines
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [29]

:[25]
push.v self.newspeed
push.d 1.5
mul.d.v
pop.v.v self.newspeed
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
push.v self.newspeed
call.i clamp(argc=3)
pop.v.v self.newspeed
push.v self.y
pushi.e 294
cmp.i.v LTE
bf [27]

:[26]
push.v self.y
push.v self.newspeed
add.v.v
pop.v.v self.y

:[27]
push.v self.y
pushi.e 294
cmp.i.v GTE
bf [29]

:[28]
pushi.e 294
pop.v.i self.y
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[29]
popenv [24]

:[30]
pushi.e 129
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[31]
pushi.e 129
pushenv [34]

:[32]
push.v self.sprite_index
pushi.e 2677
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i other.vaseCracked
pushi.e 0
pop.v.i self.timer

:[34]
popenv [32]

:[35]
push.v self.vaseCracked
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 103
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [38]

:[37]
push.e 0

:[38]
bf [45]

:[39]
push.v self.vaseCrackedCon
pushi.e -1
cmp.i.v EQ
bf [45]

:[40]
pushi.e 240
conv.i.v
push.v 103.y
pushi.e 18
add.i.v
push.v 103.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enemySwatch
push.v 103.image_xscale
push.v self.enemySwatch
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v 103.image_yscale
push.v self.enemySwatch
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 1254
push.v self.enemySwatch
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.enemySwatch
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.enemySwatch
pushi.e -9
pushenv [42]

:[41]
pushi.e 64
pop.v.i self.myencounter
push.i 100000
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 4
pop.v.i self.chasetype

:[42]
popenv [41]
pushi.e 103
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon

:[45]
push.v self.vaseCrackedCon
pushi.e 0
cmp.i.v EQ
bf [53]

:[46]
push.v self.enemySwatch
pushi.e -9
push.v [stacktop]self.x
push.v 82.x
push.v 82.sprite_width
add.v.v
pushi.e 8
add.i.v
cmp.v.v LTE
bf [48]

:[47]
pushi.e 1
pop.v.i global.interact
push.v 82.x
push.v 82.sprite_width
add.v.v
pushi.e 8
add.i.v
push.v self.enemySwatch
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.timer
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon
b [53]

:[48]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[49]
push.v self.enemySwatch
pushi.e -9
push.v [stacktop]self.x
push.v 276.x
push.v 276.sprite_width
add.v.v
pushi.e 8
add.i.v
cmp.v.v LTE
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
pop.v.i global.interact
push.v 276.x
push.v 276.sprite_width
add.v.v
pushi.e 8
add.i.v
push.v self.enemySwatch
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.timer
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon

:[53]
push.v self.vaseCrackedCon
pushi.e 1
cmp.i.v EQ
bf [59]

:[54]
pushi.e 0
push.v self.enemySwatch
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 129
conv.i.v
pushi.e 208
conv.i.v
push.v self.enemySwatch
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.friendlySwatch
pushi.e 1253
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.enemySwatch
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.friendlySwatch
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 0
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.enemySwatch
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.friendlySwatch
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.friendlySwatch
pushi.e -9
pushenv [56]

:[55]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[56]
popenv [55]
push.v self.enemySwatch
pushi.e -9
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]
pushi.e 0
pop.v.i self.timer
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon

:[59]
push.v self.vaseCrackedCon
pushi.e 2
cmp.i.v EQ
bf [67]

:[60]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [65]

:[61]
pushi.e 1
pop.v.i global.facing
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [65]

:[62]
pushi.e 276
pushenv [64]

:[63]
pushi.e 1
pop.v.i self.fun
push.v self.sprite_index
pop.v.v self._remsprite
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[64]
popenv [63]

:[65]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [67]

:[66]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_mansion_bridges_funny_slash_Step_0_gml_180_0"@37768
conv.s.v
push.s "* .../"@897
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_mansion_bridges_funny_slash_Step_0_gml_181_0"@37769
conv.s.v
push.s "* I suppose we'll just have to let it go this once./%"@37770
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon

:[67]
push.v self.vaseCrackedCon
pushi.e 3
cmp.i.v EQ
bf [70]

:[68]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [70]

:[69]
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon

:[70]
push.v self.vaseCrackedCon
pushi.e 4
cmp.i.v EQ
bf [end]

:[71]
pushi.e 1225
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 188
push.v self.friendlySwatch
pushi.e -9
pop.v.i [stacktop]self.y
push.d 0.25
push.v self.friendlySwatch
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.friendlySwatch
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 8
sub.i.v
pop.i.v [stacktop]self.x
push.v self.friendlySwatch
pushi.e -9
pushenv [73]

:[72]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[73]
popenv [72]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [79]

:[74]
pushi.e 276
pushenv [78]

:[75]
push.v other.friendlySwatch
pushi.e -9
push.v [stacktop]self.x
push.v other.friendlySwatch
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
cmp.v.v LT
bf [77]

:[76]
pushi.e 1
pop.v.i self.fun

:[77]
push.v self.sprite_index
pop.v.v self._remsprite
push.v self.lsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[78]
popenv [75]

:[79]
push.v self.friendlySwatch
pushi.e -9
push.v [stacktop]self.x
push.v 82.x
cmp.v.v LT
bf [81]

:[80]
pushi.e 3
pop.v.i global.facing

:[81]
push.v self.friendlySwatch
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
push.v self.friendlySwatch
pushi.e -9
push.v [stacktop]self.sprite_width
sub.v.v
cmp.v.v LT
bf [end]

:[82]
push.v self.friendlySwatch
pushi.e -9
pushenv [84]

:[83]
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [83]
pushi.e 0
pop.v.i global.interact
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [88]

:[85]
pushi.e 276
pushenv [87]

:[86]
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.image_index

:[87]
popenv [86]

:[88]
push.v self.vaseCrackedCon
push.e 1
add.i.v
pop.v.v self.vaseCrackedCon

:[end]