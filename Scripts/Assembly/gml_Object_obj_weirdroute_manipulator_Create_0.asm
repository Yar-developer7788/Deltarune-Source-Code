.localvar 2 arguments
.localvar 14740 lay_id 19758
.localvar 38126 spr_id 19759

:[0]
pushi.e 0
pop.v.i self.havenoelle
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 276
pushenv [4]

:[2]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.b other.havenoelle

:[4]
popenv [2]

:[5]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pop.v.v self.phase
pushi.e 0
pop.v.i self.trashcon
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
pushbltn.v builtin.room
pushi.e 119
cmp.i.v EQ
bf [11]

:[10]
pushi.e 240
conv.i.v
pushi.e 224
conv.i.v
pushi.e 960
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.viro
pushi.e 240
conv.i.v
pushi.e 224
conv.i.v
pushi.e 416
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire

:[11]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v GTE
bf [13]

:[12]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [23]

:[15]
pushbltn.v builtin.room
pushi.e 120
cmp.i.v EQ
bf [17]

:[16]
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[17]
pushi.e 1268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[18]
pushi.e 1268
pushenv [20]

:[19]
pushi.e 1
pop.v.b self.nocars

:[20]
popenv [19]

:[21]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1117
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1118
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1231
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 240
conv.i.v
pushi.e 160
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.omawaroid
pushi.e 240
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1680
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tasque

:[23]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.75
cmp.d.v GTE
bf [25]

:[24]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [55]

:[27]
pushi.e 1268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[28]
pushi.e 1268
pushenv [30]

:[29]
pushi.e 1
pop.v.b self.nocars

:[30]
popenv [29]

:[31]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1117
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1118
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1231
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 240
conv.i.v
pushi.e 120
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.virokun
pushi.e 240
conv.i.v
pushi.e 80
conv.i.v
pushi.e 1504
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire

:[33]
pushbltn.v builtin.room
pushi.e 148
cmp.i.v EQ
bf [35]

:[34]
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1038
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[35]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [37]

:[36]
pushi.e 110
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[37]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [39]

:[38]
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[39]
pushbltn.v builtin.room
pushi.e 147
cmp.i.v EQ
bf [55]

:[40]
pushi.e 318
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 1048
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 133
pushenv [46]

:[45]
call.i instance_destroy(argc=0)
popz.v

:[46]
popenv [45]
pushi.e 129
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[47]
pushi.e 129
pushenv [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [48]

:[50]
pushi.e 310
pushenv [52]

:[51]
pushi.e 1
pop.v.b self.dontdraw

:[52]
popenv [51]
pushi.e 309
pushenv [54]

:[53]
pushi.e 1
pop.v.b self.dontdraw

:[54]
popenv [53]
push.s "CarnivalSprites"@38123
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
push.s "graphic_58FD8107"@38124
conv.s.v
pushloc.v local.lay_id
call.i layer_sprite_get_id(argc=2)
pop.v.v local.spr_id
pushi.e 3002
conv.i.v
pushloc.v local.spr_id
call.i layer_sprite_change(argc=2)
popz.v
pushi.e 216
conv.i.v
pushloc.v local.spr_id
call.i layer_sprite_x(argc=2)
popz.v
pushi.e -120
conv.i.v
pushloc.v local.spr_id
call.i layer_sprite_y(argc=2)
popz.v

:[55]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [150]

:[56]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bt [65]

:[57]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bt [65]

:[58]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bt [65]

:[59]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bt [65]

:[60]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bt [65]

:[61]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bt [65]

:[62]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bt [65]

:[63]
pushbltn.v builtin.room
pushi.e 148
cmp.i.v EQ
bt [65]

:[64]
pushbltn.v builtin.room
pushi.e 122
cmp.i.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [88]

:[67]
pushi.e 1117
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1231
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 103
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 315
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 316
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 313
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1038
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1254
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1118
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [71]

:[68]
pushi.e 1118
pushenv [70]

:[69]
pushi.e 1
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[70]
popenv [69]

:[71]
pushi.e 311
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[72]
pushi.e 311
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.mode

:[74]
popenv [73]

:[75]
pushi.e 310
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [79]

:[76]
pushi.e 310
pushenv [78]

:[77]
pushi.e 1
pop.v.b self.dontdraw

:[78]
popenv [77]

:[79]
pushi.e 309
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [83]

:[80]
pushi.e 309
pushenv [82]

:[81]
pushi.e 1
pop.v.b self.dontdraw

:[82]
popenv [81]

:[83]
pushi.e 312
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [87]

:[84]
pushi.e 312
pushenv [86]

:[85]
pushi.e 1
pop.v.b self.dontdraw

:[86]
popenv [85]

:[87]
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[88]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [90]

:[89]
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[90]
pushbltn.v builtin.room
pushi.e 120
cmp.i.v EQ
bf [100]

:[91]
pushi.e 103
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [95]

:[92]
pushi.e 103
pushenv [94]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[94]
popenv [93]

:[95]
pushi.e 110
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [99]

:[96]
pushi.e 110
pushenv [98]

:[97]
call.i instance_destroy(argc=0)
popz.v

:[98]
popenv [97]

:[99]
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[100]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [102]

:[101]
pushi.e 240
conv.i.v
pushi.e 386
conv.i.v
pushi.e 504
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 240
conv.i.v
pushi.e 244
conv.i.v
pushi.e 1314
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[102]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [108]

:[103]
pushi.e 956
pushenv [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
popenv [104]
pushi.e 105
pushenv [107]

:[106]
call.i instance_destroy(argc=0)
popz.v

:[107]
popenv [106]
pushi.e 240
conv.i.v
pushi.e 238
conv.i.v
pushi.e 1238
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[108]
pushbltn.v builtin.room
pushi.e 135
cmp.i.v EQ
bf [116]

:[109]
pushi.e 1215
pushenv [111]

:[110]
call.i instance_destroy(argc=0)
popz.v

:[111]
popenv [110]
pushi.e 1114
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]
pushi.e 315
pushenv [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
popenv [114]
pushi.e 240
conv.i.v
pushi.e 480
conv.i.v
pushi.e 1480
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 240
conv.i.v
pushi.e 640
conv.i.v
pushi.e 960
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[116]
pushbltn.v builtin.room
pushi.e 122
cmp.i.v EQ
bf [118]

:[117]
push.s "Assets_WelcomeSign"@38131
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
push.s "graphic_66ADFD1"@38132
conv.s.v
pushloc.v local.lay_id
call.i layer_sprite_get_id(argc=2)
pop.v.v local.spr_id
pushi.e 0
conv.i.v
pushloc.v local.spr_id
call.i layer_sprite_speed(argc=2)
popz.v
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[118]
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [128]

:[119]
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v
pushi.e 316
pushenv [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
popenv [120]
pushi.e 1039
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]
pushi.e 110
pushenv [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
popenv [124]
pushi.e 103
conv.i.v
pushi.e 152
conv.i.v
pushi.e 226
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.box1
pushi.e 103
conv.i.v
pushi.e 152
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.box2
pushi.e 103
conv.i.v
pushi.e 176
conv.i.v
pushi.e 302
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.box3
pushi.e 103
pushenv [127]

:[126]
pushi.e 3233
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[127]
popenv [126]
push.s "left"@5994
push.v self.box1
pushi.e -9
pop.v.s [stacktop]self.extflag
push.s "mid"@5602
push.v self.box3
pushi.e -9
pop.v.s [stacktop]self.extflag
push.s "right"@4637
push.v self.box2
pushi.e -9
pop.v.s [stacktop]self.extflag

:[128]
pushbltn.v builtin.room
pushi.e 137
cmp.i.v EQ
bf [134]

:[129]
pushi.e 311
pushenv [131]

:[130]
pushi.e 0
pop.v.i self.mode

:[131]
popenv [130]
pushi.e 314
pushenv [133]

:[132]
call.i instance_destroy(argc=0)
popz.v

:[133]
popenv [132]
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[134]
pushbltn.v builtin.room
pushi.e 152
cmp.i.v EQ
bf [136]

:[135]
push.s "TILES_Sidewalk_Animated"@38130
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.lid
pushi.e 0
conv.i.v
push.v self.lid
call.i layer_set_visible(argc=2)
popz.v

:[136]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [140]

:[137]
pushi.e 143
pushenv [139]

:[138]
pushi.e 142
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door
push.v self.image_xscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_yscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[139]
popenv [138]

:[140]
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [146]

:[141]
pushi.e 143
pushenv [143]

:[142]
pushi.e 142
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door
push.v self.image_xscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_yscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[143]
popenv [142]
pushi.e 145
pushenv [145]

:[144]
pushi.e 144
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door
push.v self.image_xscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_yscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[145]
popenv [144]

:[146]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [150]

:[147]
pushi.e 145
pushenv [149]

:[148]
pushi.e 144
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door
push.v self.image_xscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_yscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[149]
popenv [148]

:[150]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [235]

:[151]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [153]

:[152]
pushi.e 103
conv.i.v
pushi.e 460
conv.i.v
pushi.e 600
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wigman
pushi.e 1280
push.v self.wigman
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.wigman
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.wigman
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[153]
pushbltn.v builtin.room
pushi.e 174
cmp.i.v EQ
bf [158]

:[154]
pushi.e 105
conv.i.v
pushi.e 120
conv.i.v
pushi.e 960
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spamtondoor
pushi.e 49
push.v self.spamtondoor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.spamtondoor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.spamtondoor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 105
conv.i.v
pushi.e 120
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.secretdoorlocked
pushi.e 2865
push.v self.secretdoorlocked
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.secretdoorlocked
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.secretdoorlocked
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 144
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 154
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1288
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1287
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 133
pushenv [157]

:[155]
push.v self.x
pushi.e 220
cmp.i.v LT
bf [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
popenv [155]

:[158]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bt [161]

:[159]
pushbltn.v builtin.room
pushi.e 197
cmp.i.v EQ
bt [161]

:[160]
pushbltn.v builtin.room
pushi.e 192
cmp.i.v EQ
b [162]

:[161]
push.e 1

:[162]
bf [166]

:[163]
pushi.e 140
pushenv [165]

:[164]
pushi.e -1
pop.v.i self.doorFadeMusic

:[165]
popenv [164]

:[166]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [183]

:[167]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1000
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
popz.v
pushi.e 268
pushenv [169]

:[168]
call.i instance_destroy(argc=0)
popz.v

:[169]
popenv [168]
pushi.e 271
conv.i.v
pushi.e 760
conv.i.v
pushi.e 860
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 271
pushenv [171]

:[170]
pushi.e 7
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spam
push.v self.depth
push.v self.spam
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.spam
call.i gml_Script_scr_darksize(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[171]
popenv [170]
pushi.e 270
pushenv [173]

:[172]
pushi.e 7
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spam
push.v self.depth
push.v self.spam
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.spam
call.i gml_Script_scr_darksize(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[173]
popenv [172]
pushi.e 105
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
push.i 231204
setowner.e
pushi.e 1
conv.i.b
bf [177]

:[176]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
conv.b.v
pushi.e -5
pushi.e 362
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
push.s "TILES_LOCKED_DOOR"@37837
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1218
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [182]

:[179]
pushi.e 1218
pushenv [181]

:[180]
call.i instance_destroy(argc=0)
popz.v

:[181]
popenv [180]

:[182]
pushi.e 105
conv.i.v
pushi.e 80
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kitchendoor
pushi.e 1
push.v self.kitchendoor
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 3235
push.v self.kitchendoor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.kitchendoor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.kitchendoor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 999980
push.v self.kitchendoor
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 395
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 396
pop.v.v [array]self.flag
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[183]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [190]

:[184]
pushi.e 155
pushenv [187]

:[185]
push.v self.extflag
push.s "top"@6226
cmp.s.v EQ
bf [187]

:[186]
pushi.e 560
pop.v.i self.x
pushi.e 120
pop.v.i self.y

:[187]
popenv [185]
pushi.e 1
pop.v.b 1196.weird
pushi.e 133
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]

:[190]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [194]

:[191]
pushi.e 260
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1201
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1200
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "TILES_Pathway_NoCorridors_Weird"@38142
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
pushi.e 160
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.block
push.v self.block
pushi.e -9
pushenv [193]

:[192]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[193]
popenv [192]

:[194]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [196]

:[195]
pushi.e 68
conv.i.v
pushi.e 80
conv.i.v
pushi.e 1580
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door1
pushi.e 1
push.v self.door1
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 2865
push.v self.door1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 999960
push.v self.door1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 68
conv.i.v
pushi.e 80
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door2
pushi.e 1
push.v self.door2
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 2865
push.v self.door2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 999960
push.v self.door2
pushi.e -9
pop.v.i [stacktop]self.depth

:[196]
pushbltn.v builtin.room
pushi.e 195
cmp.i.v EQ
bf [204]

:[197]
pushi.e 268
conv.i.v
pushi.e 320
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bulletarea
pushi.e 42
push.v self.bulletarea
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bulletarea
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 88
conv.i.v
pushi.e 280
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.field
push.i 800000
push.v self.field
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 325
pushenv [199]

:[198]
call.i instance_destroy(argc=0)
popz.v

:[199]
popenv [198]
pushi.e 1034
pushenv [201]

:[200]
call.i instance_destroy(argc=0)
popz.v

:[201]
popenv [200]
pushi.e 260
pushenv [203]

:[202]
call.i instance_destroy(argc=0)
popz.v

:[203]
popenv [202]

:[204]
pushbltn.v builtin.room
pushi.e 196
cmp.i.v EQ
bf [211]

:[205]
pushi.e 268
pushenv [207]

:[206]
call.i instance_destroy(argc=0)
popz.v

:[207]
popenv [206]
pushi.e 270
pushenv [209]

:[208]
call.i instance_destroy(argc=0)
popz.v

:[209]
popenv [208]
push.d 0.15
pop.v.d 1295.image_alpha
pushi.e -5
pushi.e 542
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [211]

:[210]
pushi.e 240
conv.i.v
pushi.e 160
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[211]
pushbltn.v builtin.room
pushi.e 197
cmp.i.v EQ
bf [215]

:[212]
pushi.e 1049
pushenv [214]

:[213]
call.i instance_destroy(argc=0)
popz.v

:[214]
popenv [213]
pushi.e 160
pop.v.i global.plot
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 392
pop.v.v [array]self.flag
pushi.e 68
conv.i.v
pushi.e 80
conv.i.v
pushi.e 960
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bathroomdoor
pushi.e 1
push.v self.bathroomdoor
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 3235
push.v self.bathroomdoor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.bathroomdoor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bathroomdoor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 899980
push.v self.bathroomdoor
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2863
conv.i.v
pushi.e 80
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.door
push.i 899980
push.v self.door
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2863
conv.i.v
pushi.e 80
conv.i.v
pushi.e 250
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.door_left
push.i 899980
push.v self.door_left
pushi.e -9
pop.v.i [stacktop]self.depth

:[215]
pushbltn.v builtin.room
pushi.e 200
cmp.i.v EQ
bf [219]

:[216]
pushi.e 105
pushenv [218]

:[217]
call.i instance_destroy(argc=0)
popz.v

:[218]
popenv [217]

:[219]
pushbltn.v builtin.room
pushi.e 198
cmp.i.v EQ
bf [229]

:[220]
pushi.e 109
pushenv [222]

:[221]
call.i instance_destroy(argc=0)
popz.v

:[222]
popenv [221]
pushi.e 1272
pushenv [224]

:[223]
call.i instance_destroy(argc=0)
popz.v

:[224]
popenv [223]
pushi.e 1285
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
pushi.e 133
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]
pushi.e 240
conv.i.v
pushi.e 287
conv.i.v
pushi.e 255
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[229]
pushbltn.v builtin.room
pushi.e 204
cmp.i.v EQ
bf [231]

:[230]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.field

:[231]
pushbltn.v builtin.room
pushi.e 176
cmp.i.v EQ
bf [235]

:[232]
pushi.e 1091
pushenv [234]

:[233]
pushi.e 0
pop.v.i self.uniqueRideExperience

:[234]
popenv [233]

:[235]
push.v self.phase
pushi.e 3
cmp.i.v NEQ
bf [255]

:[236]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bt [238]

:[237]
pushbltn.v builtin.room
pushi.e 195
cmp.i.v EQ
b [239]

:[238]
push.e 1

:[239]
bf [243]

:[240]
pushi.e 1238
pushenv [242]

:[241]
call.i instance_destroy(argc=0)
popz.v

:[242]
popenv [241]

:[243]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [249]

:[244]
pushi.e 313
pushenv [246]

:[245]
call.i instance_destroy(argc=0)
popz.v

:[246]
popenv [245]
pushi.e 263
pushenv [248]

:[247]
call.i instance_destroy(argc=0)
popz.v

:[248]
popenv [247]

:[249]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [253]

:[250]
pushi.e 18
pushenv [252]

:[251]
call.i instance_destroy(argc=0)
popz.v

:[252]
popenv [251]

:[253]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [255]

:[254]
pushi.e 268
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[255]
pushi.e 0
pop.v.i self.encountercheck
pushi.e -5
pushi.e 915
push.v [array]self.flag
pop.v.v self.lastphase
pushi.e 0
pop.v.b self.phasechange
pushi.e 0
pop.v.i self.init
pushi.e -5
pushi.e 916
push.v [array]self.flag
pop.v.v self.failstate

:[end]