.localvar 2 arguments
.localvar 36613 chardist 18213
.localvar 36615 carcheck 18215

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.walkdir
push.s "down"@25524
cmp.s.v EQ
bf [2]

:[1]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 30
add.i.v
cmp.v.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.endme

:[5]
push.v self.walkdir
push.s "right"@4637
cmp.s.v EQ
bf [7]

:[6]
push.v self.x
pushbltn.v builtin.room_width
push.v self.sprite_width
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.endme

:[10]
push.v self.walkdir
push.s "left"@5994
cmp.s.v EQ
bf [12]

:[11]
push.v self.x
pushi.e 0
push.v self.sprite_width
pushi.e 2
mul.i.v
sub.v.i
cmp.v.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.endme

:[15]
pushi.e 249
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [17]

:[16]
pushi.e 1
pop.v.i self.endme

:[17]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [19]

:[18]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [44]

:[24]
push.v self.alwayswalking
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.walking

:[26]
push.v self.walkdir
push.s "down"@25524
cmp.s.v EQ
bf [34]

:[27]
push.v self.walking
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v self.y
push.v self.myspeed
add.v.v
pop.v.v self.y

:[29]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [32]

:[30]
push.v self.alwayswalking
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v self.y
push.v self.myspeed
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[32]
push.v self.alwayswalking
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v self.y
push.v self.myspeed
add.v.v
pop.v.v self.y

:[34]
push.v self.walkdir
push.s "left"@5994
cmp.s.v EQ
bf [39]

:[35]
push.v self.walking
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.x
push.v self.myspeed
sub.v.v
pop.v.v self.x

:[37]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.x
push.v self.myspeed
pushi.e 4
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x

:[39]
push.v self.walkdir
push.s "right"@4637
cmp.s.v EQ
bf [44]

:[40]
push.v self.walking
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.v self.x
push.v self.myspeed
add.v.v
pop.v.v self.x

:[42]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.x
push.v self.myspeed
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[44]
push.v self.touchcon
pushi.e 1
cmp.i.v EQ
bf [65]

:[45]
pushi.e 1118
pushenv [50]

:[46]
pushbltn.v builtin.room
pushi.e 172
cmp.i.v EQ
bf [49]

:[47]
push.v self.timefactor
pushi.e 45
cmp.i.v LT
bf [49]

:[48]
push.v self.timefactor
push.e 1
add.i.v
pop.v.v self.timefactor

:[49]
push.v self.timefactor
call.i string(argc=1)
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[50]
popenv [46]
pushi.e 0
pop.v.i self.touchtimer
pushi.e 0
pop.v.i self.spintimer
pushi.e 2
pop.v.i self.touchcon
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 82
pushenv [52]

:[51]
push.d 0.5
pop.v.d self.image_alpha

:[52]
popenv [51]
pushi.e 1280
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [54]

:[53]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [55]

:[54]
push.e 0

:[55]
bf [61]

:[56]
push.v 1280.x
pop.v.v 276.x
push.v 1280.y
pop.v.v 276.y
push.v 276.name
push.s "noelle"@74
cmp.s.v EQ
bf [58]

:[57]
pushi.e 717
pop.v.i 276.sprite_index

:[58]
pushi.e 1280
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]

:[61]
pushi.e 276
pushenv [64]

:[62]
push.v self.image_alpha
push.d 0.5
cmp.d.v GTE
bf [64]

:[63]
push.d 0.5
pop.v.d self.image_alpha

:[64]
popenv [62]
pushi.e 0
pop.v.i global.facing
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i gml_Script_scr_move_to_charmarker(argc=3)
popz.v

:[65]
push.v self.touchcon
pushi.e 2
cmp.i.v EQ
bf [83]

:[66]
push.v self.touchtimer
push.e 1
add.i.v
pop.v.v self.touchtimer
push.v self.spintimer
push.e 1
add.i.v
pop.v.v self.spintimer
push.v self.spintimer
pushi.e 4
cmp.i.v GTE
bf [76]

:[67]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
pushi.e 3
pop.v.i global.facing

:[69]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 2
pop.v.i global.facing

:[71]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i global.facing
b [75]

:[73]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
pop.v.i global.facing

:[75]
pushi.e 0
pop.v.i self.spintimer

:[76]
push.v self.touchtimer
pushi.e 30
cmp.i.v GTE
bf [83]

:[77]
pushi.e 0
pop.v.i self.touchtimer
pushi.e 0
pop.v.i self.touchcon
pushi.e 82
pushenv [79]

:[78]
pushi.e 1
pop.v.i self.image_alpha

:[79]
popenv [78]
pushi.e 276
pushenv [82]

:[80]
push.v self.image_alpha
push.d 0.5
cmp.d.v EQ
bf [82]

:[81]
pushi.e 1
pop.v.i self.image_alpha

:[82]
popenv [80]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact

:[83]
push.v self.buffer
push.e 1
sub.i.v
pop.v.v self.buffer
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [99]

:[84]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [86]

:[85]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [87]

:[86]
push.e 0

:[87]
bf [99]

:[88]
push.v self.walking
pushi.e 1
cmp.i.v EQ
bf [94]

:[89]
pushi.e 1115
pushenv [91]

:[90]
pushi.e 2
pop.v.i self.buffer
pushi.e 0
pop.v.i self.walking

:[91]
popenv [90]
pushi.e 1117
pushenv [93]

:[92]
pushi.e 2
pop.v.i self.buffer
pushi.e 0
pop.v.i self.walking

:[93]
popenv [92]
b [99]

:[94]
pushi.e 1115
pushenv [96]

:[95]
pushi.e 2
pop.v.i self.buffer
pushi.e 1
pop.v.i self.walking

:[96]
popenv [95]
pushi.e 1117
pushenv [98]

:[97]
pushi.e 2
pop.v.i self.buffer
pushi.e 1
pop.v.i self.walking

:[98]
popenv [97]

:[99]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
push.v self.madeblock
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 1144
conv.i.v
push.v self.bbox_top
push.v self.bbox_left
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myblock
push.v self.bbox_right
push.v self.bbox_left
sub.v.v
pushi.e 40
conv.i.d
div.d.v
push.v self.myblock
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.bbox_bottom
push.v self.bbox_top
sub.v.v
pushi.e 40
conv.i.d
div.d.v
push.v self.myblock
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.madeblock

:[104]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
push.v self.madeblock
pushi.e 1
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [111]

:[108]
push.v self.myblock
pushi.e -9
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 0
pop.v.i self.madeblock

:[111]
pushi.e 1283
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [120]

:[112]
push.v self.turned
pushi.e 0
cmp.i.v EQ
bf [120]

:[113]
pushi.e 1115
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.car
push.v self.car
pushi.e -9
pushenv [115]

:[114]
push.v other.myspeed
pop.v.v self.myspeed
push.s "right"@4637
pop.v.s self.walkdir
push.v other.remspeed
pop.v.v self.remspeed
push.v other.group
pop.v.v self.group
push.v other.walking
pop.v.v self.walking
push.v other.active
pop.v.v self.active
push.v other.touchcon
pop.v.v self.touchcon
push.v other.touchtimer
pop.v.v self.touchtimer
pushi.e 1
pop.v.i self.speedadjust
pushi.e 1
pop.v.i self.turned

:[115]
popenv [114]
push.v self.madeblock
pushi.e 1
cmp.i.v EQ
bf [119]

:[116]
push.v self.myblock
pushi.e -9
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]

:[119]
pushi.e 1
pop.v.i self.endme

:[120]
push.v self.endme
pushi.e 1
cmp.i.v EQ
bf [127]

:[121]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.visible
push.v self.touchcon
pushi.e 0
cmp.i.v EQ
bf [127]

:[122]
push.v self.madeblock
conv.v.b
bf [126]

:[123]
push.v self.myblock
pushi.e -9
pushenv [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
popenv [124]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
push.v self.speedadjust
conv.v.b
bf [end]

:[128]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v local.chardist
pushloc.v local.chardist
pushi.e 200
cmp.i.v GTE
bf [130]

:[129]
pushi.e 24
pop.v.i self.idealspeed

:[130]
pushloc.v local.chardist
pushi.e 200
cmp.i.v LT
bf [132]

:[131]
pushi.e 10
conv.i.v
pushloc.v local.chardist
pushi.e 16
conv.i.d
div.d.v
call.i max(argc=2)
pop.v.v self.idealspeed

:[132]
pushi.e 1
conv.i.v
push.v self.idealspeed
push.v self.myspeed
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.myspeed
pushi.e 1115
conv.i.v
push.v self.y
push.v self.x
call.i instance_place(argc=3)
pop.v.v local.carcheck
pushloc.v local.carcheck
pushi.e -4
cmp.i.v NEQ
bf [end]

:[133]
pushloc.v local.carcheck
pushi.e -9
push.v [stacktop]self.freshness
push.v self.freshness
cmp.v.v GT
bf [end]

:[134]
push.v self.y
pushi.e 12
sub.i.v
pop.v.v self.y
push.v self.myspeed
pushi.e 12
sub.i.v
pop.v.v self.myspeed
pushi.e 24
conv.i.v
pushi.e 0
conv.i.v
push.v self.myspeed
call.i clamp(argc=3)
pop.v.v self.myspeed

:[end]