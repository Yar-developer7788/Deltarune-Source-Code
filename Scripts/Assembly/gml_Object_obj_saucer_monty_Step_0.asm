.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [16]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.visible
push.v self.collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.collider
call.i instance_destroy(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 190
cmp.i.v EQ
bf [11]

:[7]
pushi.e 1033
pushenv [10]

:[8]
push.v self.forcefield
pushi.e -4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.b self.make_forcefield

:[10]
popenv [8]

:[11]
pushbltn.v builtin.room
pushi.e 192
cmp.i.v EQ
bf [16]

:[12]
pushi.e 1052
pushenv [15]

:[13]
push.v self.forcefield
pushi.e -4
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.b self.make_forcefield

:[15]
popenv [13]

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [26]

:[17]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[19]
pushi.e 0
pop.v.i self.radius
push.v self.saucercount
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.keysaucer
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
push.v self.saucercount
cmp.v.v LT
bf [25]

:[21]
push.i 168974
setowner.e
pushi.e 260
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.saucer
push.i 234491
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.montyboss
push.i 133653
setowner.e
push.d 0.7
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.d [stacktop]self.image_alpha
push.i 232736
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.mode
push.v self.i
push.v self.keysaucer
cmp.v.v EQ
bf [23]

:[22]
push.i 233188
setowner.e
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.content
push.i 233190
setowner.e
pushi.e 2314
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.contentsprite
b [24]

:[23]
push.i 233188
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.content
push.i 233190
setowner.e
pushi.e 2310
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.contentsprite

:[24]
push.i 168975
setowner.e
pushi.e 90
pushi.e 360
conv.i.d
push.v self.saucercount
div.v.d
push.v self.i
mul.v.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.saucerangle
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[25]
push.i 234491
setowner.e
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.montyboss
pushi.e 2
pop.v.i self.con

:[26]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[27]
push.v self.radius
pushi.e 2
add.i.v
pop.v.v self.radius
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
push.v self.saucercount
cmp.v.v LT
bf [30]

:[29]
push.i 133617
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucerangle
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucerangle
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [28]

:[30]
push.v self.radius
pushi.e 200
conv.i.d
div.d.v
push.v self.x
pushi.e 50
add.i.v
pushi.e 19
sub.i.v
push.v 82.x
call.i lerp(argc=3)
pop.v.v 82.x
push.v self.radius
pushi.e 200
conv.i.d
div.d.v
push.v self.y
pushi.e 40
add.i.v
pushi.e 38
sub.i.v
push.v 82.y
call.i lerp(argc=3)
pop.v.v 82.y
push.v self.radius
pushi.e 100
cmp.i.v GTE
bf [35]

:[31]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
push.v self.saucercount
cmp.v.v LT
bf [34]

:[33]
push.i 133653
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [32]

:[34]
pushi.e 0
pop.v.i self.timer

:[35]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [46]

:[36]
push.v self.timer
pushi.e 1
push.v self.multiplier
mul.v.i
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [42]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
push.v self.saucercount
cmp.v.v LT
bf [42]

:[39]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pushenv [41]

:[40]
pushi.e 1
pop.v.i self.myinteract

:[41]
popenv [40]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[42]
push.v self.timer
pushi.e 100
cmp.i.v GTE
bf [46]

:[43]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 112
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.loop

:[45]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 960
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
push.v self.saucercount
mul.v.v
pushi.e 360
conv.i.d
div.d.v
add.v.i
pop.v.v self.maxsiner
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.sinerspeed

:[46]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [69]

:[47]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
pushi.e 1
add.i.v
push.v self.loop
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[49]
push.v self.siner
push.v self.sinerspeed
push.v self.multiplier
mul.v.v
add.v.v
pop.v.v self.siner
push.v self.siner
push.v self.maxsiner
pushi.e 90
sub.i.v
cmp.v.v LTE
bf [52]

:[50]
push.v self.sinerspeed
pushi.e 10
cmp.i.v LTE
bf [52]

:[51]
push.v self.sinerspeed
push.d 0.25
push.v self.multiplier
mul.v.d
add.v.v
pop.v.v self.sinerspeed

:[52]
push.v self.siner
push.v self.maxsiner
pushi.e 90
sub.i.v
cmp.v.v GTE
bf [55]

:[53]
push.v self.sinerspeed
pushi.e 5
cmp.i.v GTE
bf [55]

:[54]
push.v self.sinerspeed
push.d 0.5
push.v self.multiplier
mul.v.d
sub.v.v
pop.v.v self.sinerspeed

:[55]
push.v self.siner
push.v self.maxsiner
cmp.v.v GTE
bf [66]

:[56]
push.v self.maxsiner
pop.v.v self.siner
pushi.e 5
pop.v.i self.con
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.v self.loop
call.i gml_Script_snd_stop(argc=1)
popz.v

:[58]
pushi.e 82
pushenv [60]

:[59]
pushi.e 0
pop.v.i global.interact

:[60]
popenv [59]
pushi.e 0
pop.v.i self.i

:[61]
push.v self.i
push.v self.saucercount
cmp.v.v LT
bf [63]

:[62]
push.i 232736
setowner.e
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.i [stacktop]self.mode
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [61]

:[63]
pushi.e 260
pushenv [65]

:[64]
push.v self.x
pushi.e 8
add.i.v
push.v self.collider
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 22
add.i.v
push.v self.collider
pushi.e -9
pop.v.v [stacktop]self.y

:[65]
popenv [64]

:[66]
pushi.e 0
pop.v.i self.i

:[67]
push.v self.i
push.v self.saucercount
cmp.v.v LT
bf [69]

:[68]
push.i 133617
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucerangle
push.v self.siner
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucerangle
push.v self.siner
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.saucer
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [67]

:[69]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [78]

:[70]
pushi.e 1
pop.v.i 82.battlemode
pushi.e -1
pushi.e 0
push.v [array]self.saucer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [72]

:[71]
pushi.e 0
pop.v.i self.timer

:[72]
pushi.e -1
pushi.e 0
push.v [array]self.saucer
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [78]

:[73]
push.v self.timer
pushi.e 1
push.v self.multiplier
mul.v.i
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 120
cmp.i.v GTE
bf [75]

:[74]
pushi.e 0
pop.v.i 82.battlemode

:[75]
push.v self.timer
pushi.e 150
cmp.i.v GTE
bf [78]

:[76]
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 82
conv.i.v
push.v self.bbox_bottom
pushi.e 6
add.i.v
push.v self.bbox_right
pushi.e 6
add.i.v
push.v self.bbox_top
pushi.e 6
sub.i.v
push.v self.bbox_left
pushi.e 6
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.krischeck
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [78]

:[77]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shadow
push.v self.sprite_index
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 900000
push.v self.shadow
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1144
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakeblock
push.v self.sprite_index
push.v self.fakeblock
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.fakeblock
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.fakeblock
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.fakeblock
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fakeblock
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 255
push.v self.fakeblock
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 900000
push.v self.fakeblock
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e -100
conv.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakeme
push.v self.sprite_index
push.v self.fakeme
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.fakeme
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.fakeme
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.fakeme
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fakeme
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.fakeme
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 7
pop.v.i self.con

:[78]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[79]
push.v self.fakeme
pushi.e -9
push.v [stacktop]self.y
push.v self.y
pushi.e 15
sub.i.v
cmp.v.v GTE
bf [end]

:[80]
push.v self.fakeme
pushi.e -9
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
push.v self.shadow
pushi.e -9
pushenv [84]

:[83]
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [83]
push.v self.fakeblock
pushi.e -9
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.myinteract
pushi.e 68
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.collider
push.d 4.2
push.v self.collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 3
push.v self.collider
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]