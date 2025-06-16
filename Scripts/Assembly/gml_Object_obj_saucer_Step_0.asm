.localvar 2 arguments
.localvar 20226 myKeyXpos 8430
.localvar 20227 myKeyYpos 8431

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1198
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i self.myinteract

:[2]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
push.v self.mode
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [43]

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [43]

:[10]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lid
push.v self.depth
pushi.e 100
sub.i.v
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -4
push.v self.multiplier
mul.v.i
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.d -0.2
push.v self.multiplier
mul.v.d
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.sprite_index
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.makecontent
push.v self.content
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.makecontent
pushi.e 129
conv.i.v
push.v self.y
push.v self.yoffset
add.v.v
push.v self.x
push.v self.xoffset
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.contentmarker
push.v self.depth
pushi.e 1
sub.i.v
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.contentsprite
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.d 0.1
push.v self.multiplier
mul.v.d
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[12]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.v self.contentsprite
pushi.e 2314
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [31]

:[16]
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 260
pushenv [19]

:[17]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e -1
pop.v.i self.mode

:[19]
popenv [17]
pushi.e 3
pop.v.i self.mode
push.v self.contentmarker
pushi.e -9
push.v [stacktop]self.x
pop.v.v local.myKeyXpos
push.v self.contentmarker
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.myKeyYpos
pushbltn.v builtin.room
pushi.e 190
cmp.i.v EQ
bt [21]

:[20]
pushbltn.v builtin.room
pushi.e 192
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [31]

:[23]
pushi.e 0
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1033
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[24]
pushi.e 1033
pushenv [26]

:[25]
pushloc.v local.myKeyXpos
pop.v.v self.keyXPos
pushloc.v local.myKeyYpos
pop.v.v self.keyYPos
pushi.e 1
pop.v.i self.con

:[26]
popenv [25]

:[27]
pushi.e 1052
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[28]
pushi.e 1052
pushenv [30]

:[29]
pushloc.v local.myKeyXpos
pop.v.v self.keyXPos
pushloc.v local.myKeyYpos
pop.v.v self.keyYPos
pushi.e 1
pop.v.i self.con

:[30]
popenv [29]

:[31]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [33]

:[32]
push.v self.contentsprite
pushi.e 2310
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [43]

:[35]
push.v self.contentsprite
pushi.e 2310
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i self.activated_bomb

:[37]
pushi.e 260
pushenv [40]

:[38]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushi.e 4
pop.v.i self.mode
pushi.e 1
pop.v.i self.con

:[40]
popenv [38]
pushi.e 261
pushenv [42]

:[41]
pushi.e 6
pop.v.i self.con

:[42]
popenv [41]
exit.i

:[43]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [85]

:[44]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [62]

:[48]
push.v self.montyboss
pushi.e 0
cmp.i.v EQ
bt [50]

:[49]
push.v self.montyboss
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 1

:[51]
bf [53]

:[52]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[53]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i global.interact

:[55]
pushi.e 0
pop.v.i self.siner
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lid
push.v self.depth
pushi.e 100
sub.i.v
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.sprite_index
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.makecontent
push.v self.content
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 1
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1
pop.v.i self.makecontent
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.contentmarker
push.v self.depth
pushi.e 1
sub.i.v
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2311
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.multiplier
mul.v.d
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[60]
push.v self.content
pushi.e 2
cmp.i.v GTE
bf [62]

:[61]
pushi.e 1
pop.v.i self.makecontent
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.contentmarker
push.v self.depth
pushi.e 1
sub.i.v
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.contentsprite
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.d 0.1
push.v self.multiplier
mul.v.d
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[62]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [85]

:[63]
pushi.e 0
pop.v.i self.done
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.content
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v self.siner
pushi.e 8
conv.i.d
push.v self.multiplier
div.v.d
div.v.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
pop.v.v self.height
b [66]

:[65]
push.v self.siner
pushi.e 15
conv.i.d
push.v self.multiplier
div.v.d
div.v.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
pop.v.v self.height

:[66]
push.v self.lid
pushi.e -9
push.v [stacktop]self.ystart
push.v self.height
sub.v.v
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.siner
pushi.e 10
cmp.i.v GTE
bf [68]

:[67]
push.v self.height
pushi.e 0
cmp.i.v LTE
b [69]

:[68]
push.e 0

:[69]
bf [85]

:[70]
push.v self.montyboss
pushi.e 0
cmp.i.v EQ
bt [72]

:[71]
push.v self.montyboss
pushi.e 1
cmp.i.v EQ
b [73]

:[72]
push.e 1

:[73]
bf [75]

:[74]
pushi.e 115
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[75]
pushi.e 0
pop.v.i self.height
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
push.v self.lid
pushi.e -9
push.v [stacktop]self.ystart
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
pop.v.i self.image_index
push.v self.lid
pushi.e -9
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]
push.v self.makecontent
pushi.e 1
cmp.i.v EQ
bf [81]

:[78]
push.v self.contentmarker
pushi.e -9
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]

:[81]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [83]

:[82]
pushi.e 0
pop.v.i global.interact

:[83]
pushi.e 1196
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [85]

:[84]
push.v 1196.checkCount
push.e 1
add.i.v
pop.v.v 1196.checkCount

:[85]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [107]

:[86]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [90]

:[87]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [90]

:[88]
pushglb.v global.facing
pushi.e 2
cmp.i.v NEQ
bf [90]

:[89]
pushbltn.v builtin.room
pushi.e 195
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 0
pop.v.i self.myinteract

:[93]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.d 1.4
conv.d.v
pushi.e 105
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 266
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ufo
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.con

:[98]
pushi.e 30
pop.v.i self.yrange
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [104]

:[99]
push.v self.activated
conv.v.b
bf [104]

:[100]
call.i gml_Script_charaY(argc=0)
push.v self.y
push.v self.yrange
sub.v.v
cmp.v.v GT
bf [102]

:[101]
call.i gml_Script_charaY(argc=0)
push.v self.y
push.v self.yrange
add.v.v
push.v self.sprite_height
add.v.v
cmp.v.v LT
b [103]

:[102]
push.e 0

:[103]
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.d 1.4
conv.d.v
pushi.e 105
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 266
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ufo
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.con

:[107]
push.v self.mode
pushi.e 4
cmp.i.v EQ
bf [134]

:[108]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.flashtimer
pushi.e 2
pop.v.i self.con

:[110]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [134]

:[111]
push.v self.flashtimer
pushi.e 1
push.v self.multiplier
mul.v.i
add.v.v
pop.v.v self.flashtimer
push.v self.flashtimer
pushi.e 8
cmp.i.v GTE
bf [121]

:[112]
push.v self.activated_bomb
conv.v.b
bf [117]

:[113]
push.v self.image_index
pushi.e 6
cmp.i.v NEQ
bf [115]

:[114]
pushi.e 6
pop.v.i self.image_index
b [116]

:[115]
pushi.e 1
pop.v.i self.image_index

:[116]
b [120]

:[117]
push.v self.image_index
pushi.e 5
cmp.i.v NEQ
bf [119]

:[118]
pushi.e 5
pop.v.i self.image_index
b [120]

:[119]
pushi.e 0
pop.v.i self.image_index

:[120]
pushi.e 0
pop.v.i self.flashtimer

:[121]
push.v self.timer
pushi.e 1
push.v self.multiplier
mul.v.i
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 120
cmp.i.v GTE
bf [134]

:[122]
push.v self.montyboss
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
pushi.e 135
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[124]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.midx
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.midy
pushi.e 267
conv.i.v
push.v self.midy
push.v self.midx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 3
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.i

:[125]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [127]

:[126]
pushi.e 262
conv.i.v
push.v self.midy
push.v self.midx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v self.i
pushi.e 45
mul.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
push.v self.multiplier
mul.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.d -0.08
push.v self.multiplier
mul.v.d
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.bullet
pushi.e -9
push.v [stacktop]self.direction
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.explosiontype
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [125]

:[127]
push.v self.makecontent
pushi.e 1
cmp.i.v EQ
bf [131]

:[128]
push.v self.contentmarker
pushi.e -9
pushenv [130]

:[129]
call.i instance_destroy(argc=0)
popz.v

:[130]
popenv [129]

:[131]
push.v self.collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [133]

:[132]
push.v self.collider
call.i instance_destroy(argc=1)
popz.v

:[133]
call.i instance_destroy(argc=0)
popz.v

:[134]
push.v self.mode
pushi.e 5
cmp.i.v EQ
bf [143]

:[135]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [143]

:[139]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lid
push.v self.depth
pushi.e 100
sub.i.v
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -4
push.v self.multiplier
mul.v.i
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.d -0.2
push.v self.multiplier
mul.v.d
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.sprite_index
push.v self.lid
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.makecontent
push.v self.content
pushi.e 2
cmp.i.v GTE
bf [143]

:[140]
pushi.e 1
pop.v.i self.makecontent
pushi.e 136
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.contentmarker
push.v self.depth
pushi.e 1
sub.i.v
push.v self.contentmarker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1027
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.contentmarker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.contentmarker
pushi.e -9
pushenv [142]

:[141]
push.v other.itemid
pop.v.v self.itemid
push.v other.itemtype
pop.v.v self.itemtype
push.v other.itemflag
pop.v.v self.itemflag

:[142]
popenv [141]

:[143]
push.v self.mode
pushi.e 6
cmp.i.v EQ
bf [end]

:[144]
pushi.e 3
pop.v.i self.image_index

:[end]