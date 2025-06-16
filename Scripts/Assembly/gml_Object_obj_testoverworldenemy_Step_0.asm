.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.frozen

:[3]
pushi.e 200
conv.i.v
call.i gml_Script_scr_outside_camera(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.frozen
b [6]

:[5]
pushi.e 0
pop.v.i self.frozen

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.frozen

:[8]
push.v self.frozen
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v self.hadfrozen
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.speed
pop.v.v self.remspeed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.hadfrozen

:[11]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [16]

:[12]
push.v self.hadfrozen
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.remspeed
pop.v.v self.speed

:[15]
pushi.e 0
pop.v.i self.hadfrozen

:[16]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [19]

:[17]
push.v self.fliptimer
pushi.e 1
add.i.v
pop.v.v self.fliptimer
push.v self.fliptimer
pushi.e 30
cmp.i.v GTE
bf [19]

:[18]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.fliptimer

:[19]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [35]

:[20]
push.v self.touchsprite
pop.v.v self.sprite_index
push.v self.washit
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.ambush
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 138
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.hnka
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.washit
pushi.e 1
cmp.i.v EQ
bt [27]

:[26]
pushglb.v global.ambush
pushi.e 2
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushi.e 166
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.hnka
pushi.e 4
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.washit
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushglb.v global.ambush
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 141
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[35]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
pushi.e 138
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.hnkb
push.d 1.1
conv.d.v
push.v self.hnkb
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[37]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [51]

:[38]
pushi.e 5000
pop.v.i self.depth
pushi.e 868
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 275
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con
push.v self.slidesprite
pop.v.v self.sprite_index
pushi.e -5
push.v self.whichmonster
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.whichmonster
conv.v.i
push.v [array]self.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e -5
push.v self.whichmonster
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.whichmonster
conv.v.i
push.v [array]self.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.speed
pushi.e 0
pop.v.i self.copyhave
push.i 168858
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.copy
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.copy
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.copy
pushi.e 0
pop.v.i self.cc

:[39]
push.v self.cc
pushi.e 3
cmp.i.v LT
bf [50]

:[40]
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v NEQ
bf [42]

:[41]
push.v self.cc
push.v self.whichmonster
cmp.v.v NEQ
b [43]

:[42]
push.e 0

:[43]
bf [49]

:[44]
push.v self.copyhave
pushi.e 1
add.i.v
pop.v.v self.copyhave
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstertype
pushi.e -5
push.v self.whichmonster
conv.v.i
push.v [array]self.monstertype
cmp.v.v EQ
bf [46]

:[45]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
push.v self.cc
conv.v.i
pop.v.v [array]self.copy
push.i 133625
setowner.e
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133637
setowner.e
push.v self.depth
pushi.e 1
sub.i.v
push.v self.cc
sub.v.v
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
pushi.e -9
pop.v.v [stacktop]self.depth
b [49]

:[46]
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monsterinstancetype
call.i object_get_sprite(argc=1)
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakex
pushi.e 200
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
push.v self.cc
conv.v.i
pop.v.v [array]self.copy
push.i 234395
setowner.e
push.v self.cc
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
pushi.e -9
pop.v.v [stacktop]self.cc
push.i 133637
setowner.e
push.v self.depth
pushi.e 1
sub.i.v
push.v self.cc
sub.v.v
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
pushi.e -9
pushenv [48]

:[47]
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.cc
conv.v.i
push.v [array]self.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.speed

:[48]
popenv [47]

:[49]
push.v self.cc
pushi.e 1
add.i.v
pop.v.v self.cc
b [39]

:[50]
pushi.e 0
pop.v.i self.afterimagetimer
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[51]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [52]

:[52]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[53]
pushi.e 0
pop.v.i self.c

:[54]
push.v self.c
pushi.e 3
cmp.i.v LT
bf [58]

:[55]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.copy
pushi.e -9
pushenv [57]

:[56]
pushi.e 0
pop.v.i self.speed

:[57]
popenv [56]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [54]

:[58]
pushi.e 0
pop.v.i self.speed
pushi.e 357
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[59]
push.v self.eraser
pushi.e 1
cmp.i.v EQ
bf [63]

:[60]
pushi.e 240
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]

:[63]
push.v self.eraser
pushi.e 2
cmp.i.v EQ
bf [68]

:[64]
pushi.e 240
pushenv [67]

:[65]
push.v self.eraser
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
popenv [65]

:[68]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i self.c

:[69]
push.v self.c
pushi.e 3
cmp.i.v LT
bf [end]

:[70]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.copy
pushi.e -9
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [69]

:[end]