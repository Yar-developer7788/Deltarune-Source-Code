.localvar 2 arguments
.localvar 20281 redscreen 8508

:[0]
pushi.e 26
pop.v.i local.redscreen
push.v self.id
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
bf [7]

:[1]
pushi.e 64
conv.i.v
call.i @@Other@@(argc=0)
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
bf [7]

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
push.v other.aligned
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v other.image_index
pushloc.v local.redscreen
cmp.v.v NEQ
bf [7]

:[5]
push.v other.image_index
pushi.e 9
cmp.i.v NEQ
bf [7]

:[6]
push.v other.sprite_index
pushi.e 510
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [59]

:[9]
pushi.e 0
pop.v.i self.make_simple_bullet
pushi.e 0
pop.v.i self.simple_bullet_index
pushi.e 0
pop.v.i self.cause_explosion
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.exploded
push.v other.image_index
pushi.e 27
cmp.i.v EQ
bt [11]

:[10]
push.v other.image_index
pushi.e 31
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i other.extflag
pushi.e 1
pop.v.i self.make_simple_bullet
push.s "dancer"@20285
pop.v.s self.btype

:[14]
push.v other.image_index
pushi.e 28
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.make_simple_bullet
pushi.e 2
pop.v.i self.simple_bullet_index
push.s "virus"@20287
pop.v.s self.btype

:[16]
push.v other.image_index
pushi.e 29
cmp.i.v EQ
bt [18]

:[17]
push.v other.extflag
pushi.e 6
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i self.cause_explosion
push.s "bomb"@14368
pop.v.s self.btype

:[21]
push.v other.image_index
pushi.e 37
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i self.cause_explosion
push.s "tribomb"@20288
pop.v.s self.btype

:[23]
push.v other.extflag
pushi.e 11
cmp.i.v EQ
bf [25]

:[24]
pushbltn.v builtin.room
pushi.e 105
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [32]

:[27]
pushi.e 1251
pushenv [29]

:[28]
pushi.e 99
pop.v.i self.con

:[29]
popenv [28]
pushi.e 265
pushenv [31]

:[30]
pushi.e 1
pop.v.i self.exploded

:[31]
popenv [30]
pushi.e 287
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 268
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
pop.v.i 82.battlemode
call.i gml_Script_scr_shakescreen(argc=0)
popz.v
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 352
pop.v.v [array]self.flag

:[32]
push.v other.extflag
pushi.e 10
cmp.i.v EQ
bf [38]

:[33]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 427
pop.v.v [array]self.flag
pushi.e 2631
conv.i.v
pushi.e 1150
conv.i.v
pushi.e 758
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.plat
push.i 998000
push.v self.plat
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 345
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leftlight
pushi.e 1
push.v self.leftlight
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.leftlight
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 343
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 802
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.midlight
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.midlight
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 343
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 842
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.midlight2
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.midlight2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 344
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 864
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rightlight
push.v self.plat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 12
sub.i.v
push.v self.rightlight
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 136
conv.i.v
pushi.e 1144
conv.i.v
pushi.e 844
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.chest
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shake
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1251
pushenv [36]

:[34]
push.v self.trigNum
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushi.e 99
pop.v.i self.con

:[36]
popenv [34]
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[37]
pushi.e 22
pop.v.i 268.image_yscale

:[38]
push.v self.make_simple_bullet
pushi.e 1
cmp.i.v EQ
bf [46]

:[39]
pushi.e 255
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b
push.v self.btype
push.s "dancer"@20285
cmp.s.v NEQ
bf [41]

:[40]
pushi.e 2326
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.simple_bullet_index
push.v self.b
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 0
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 10
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.tolerance

:[41]
push.v self.btype
push.s "dancer"@20285
cmp.s.v EQ
bf [43]

:[42]
pushi.e 2327
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.b
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 10
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.tolerance

:[43]
pushi.e 1
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 3
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 16
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 200
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 133633
setowner.e
pushi.e -10
conv.i.v
push.v self.b
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 2
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.b
pushi.e -9
pushenv [45]

:[44]
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 4
add.i.v
push.v 82.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[45]
popenv [44]
push.d -0.2
push.v self.b
pushi.e -9
pop.v.d [stacktop]self.friction

:[46]
push.v self.cause_explosion
pushi.e 1
cmp.i.v EQ
bf [55]

:[47]
push.v self.btype
push.s "bomb"@14368
cmp.s.v EQ
bf [51]

:[48]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [50]

:[49]
pushi.e 424
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[50]
popenv [49]

:[51]
push.v self.btype
push.s "tribomb"@20288
cmp.s.v EQ
bf [55]

:[52]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [54]

:[53]
pushi.e 425
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[54]
popenv [53]

:[55]
push.v other.extflag
pushi.e 11
cmp.i.v EQ
bf [57]

:[56]
pushi.e 42
pop.v.i other.image_index
b [58]

:[57]
pushi.e 510
pop.v.i other.sprite_index

:[58]
pushi.e 0
pop.v.i self.active
push.d 2.5
conv.d.v
pushi.e 160
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v

:[59]
push.v other.image_index
pushi.e 9
cmp.i.v EQ
bf [62]

:[60]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushbltn.v builtin.room
pushi.e 227
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [end]

:[64]
push.v other.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [68]

:[65]
push.v other.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
cmp.v.v LTE
bf [68]

:[66]
push.v other.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [68]

:[67]
push.v other.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
cmp.v.v LTE
b [69]

:[68]
push.e 0

:[69]
bf [end]

:[70]
pushi.e 1
pop.v.i other.tasquecon
pushi.e 1
pop.v.i global.interact
pushi.e 1244
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [72]

:[71]
push.d 1.5
pop.v.d 1244.con

:[72]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [74]

:[73]
pushi.e 0
pop.v.i 82.battlemode

:[74]
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [78]

:[75]
pushi.e 268
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]

:[78]
pushi.e 510
pop.v.i other.sprite_index
pushi.e 255
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [82]

:[79]
pushi.e 255
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]

:[82]
pushi.e 265
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[83]
pushi.e 265
pushenv [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [84]

:[end]