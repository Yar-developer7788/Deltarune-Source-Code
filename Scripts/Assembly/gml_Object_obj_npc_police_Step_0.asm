.localvar 2 arguments
.localvar 15641 stopcon 7238
.localvar 15642 runspeed 7239

:[0]
push.v self.bars
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[1]
push.v self.bars
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 3198
cmp.i.v EQ
bf [9]

:[2]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.i 100000000
push.v self.bars
pushi.e -9
pop.v.i [stacktop]self.depth
b [8]

:[4]
push.v 82.y
pushi.e 60
cmp.i.v GT
bf [6]

:[5]
push.i 100000000
conv.i.v
b [7]

:[6]
pushi.e 5000
conv.i.v

:[7]
push.v self.bars
pushi.e -9
pop.v.v [stacktop]self.depth

:[8]
b [12]

:[9]
push.v self.bars
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]

:[12]
push.v self.undynedesk
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [16]

:[13]
push.v self.undynedesk
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]

:[16]
push.v self.boombox
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [20]

:[17]
push.v self.boombox
pushi.e -9
pushenv [19]

:[18]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [18]

:[20]
push.v self.con
pushi.e 5
cmp.i.v LT
bf [24]

:[21]
push.v self.keys
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[22]
push.v self.undynedesk
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.keys
pushi.e -9
pop.v.v [stacktop]self.depth

:[23]
b [26]

:[24]
push.v self.keys
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 0
push.v self.keys
pushi.e -9
pop.v.i [stacktop]self.depth

:[26]
push.v self.con
pushi.e -1
cmp.i.v GT
bf [28]

:[27]
pushi.e 1
pop.v.i global.interact

:[28]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 2
pop.v.i self.con
pushi.e 1112
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.undynedesk
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 1
pop.v.b self.undyne_slam
push.s "undyne"@3641
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_60_0"@15635
conv.s.v
push.s "\\E0* Haha..^1. DARK WORLD??/"@15636
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_61_0"@15637
conv.s.v
push.s "\\E7* Hahahaha..^1. seriously!? Hahahaha!!/"@15638
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_62_0"@15639
conv.s.v
push.s "\\E5* NGAAAHahahahahahahah!!!/%"@15640
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[33]
push.v self.undyne_slam
conv.v.b
bf [36]

:[34]
push.v self.undyne_slam_timer
push.e 1
add.i.v
pop.v.v self.undyne_slam_timer
push.v self.undyne_slam_timer
pushi.e 20
cmp.i.v GTE
bf [36]

:[35]
pushi.e 0
pop.v.i self.undyne_slam_timer
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[36]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[38]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [40]

:[39]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.b self.undyne_slam
pushi.e 0
pop.v.i self.undyne_slam_timer
pushi.e 1113
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[43]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [45]

:[44]
pushi.e 7
pop.v.i self.con
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1113
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pop.v.i self.keycon
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[45]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [47]

:[46]
pushi.e 9
pop.v.i self.con
pushi.e 1111
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.image_index

:[47]
push.v self.keycon
pushi.e 1
cmp.i.v EQ
bf [52]

:[48]
push.v self.keys
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[49]
pushi.e 2
pop.v.i self.keycon
push.v self.keys
pushi.e -9
pushenv [51]

:[50]
pushi.e 25
conv.i.v
pushi.e 10
conv.i.v
pushi.e 75
conv.i.v
pushi.e 250
conv.i.v
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[51]
popenv [50]

:[52]
push.v self.keycon
pushi.e 2
cmp.i.v EQ
bf [72]

:[53]
push.v self.key_turn_timer
push.e 1
add.i.v
pop.v.v self.key_turn_timer
push.v self.key_turn_timer
pushi.e 25
cmp.i.v GTE
bf [55]

:[54]
push.v self.keys
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [60]

:[57]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.keys
pushi.e -9
pushenv [59]

:[58]
pushi.e 1
pop.v.i self.image_index

:[59]
popenv [58]
pushi.e 1
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.image_index

:[60]
push.v self.key_turn_timer
pushi.e 65
cmp.i.v GTE
bf [62]

:[61]
push.v self.keys
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [67]

:[64]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.keys
pushi.e -9
pushenv [66]

:[65]
pushi.e 2
pop.v.i self.image_index

:[66]
popenv [65]

:[67]
push.v self.key_turn_timer
pushi.e 90
cmp.i.v GTE
bf [69]

:[68]
push.v self.keys
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 2
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 3
pop.v.i self.keycon

:[72]
push.v self.keycon
pushi.e 3
cmp.i.v EQ
bf [75]

:[73]
push.v self.pausetimer
push.e 1
add.i.v
pop.v.v self.pausetimer
push.v self.pausetimer
pushi.e 30
cmp.i.v GTE
bf [75]

:[74]
pushi.e 4
pop.v.i self.keycon
push.v self.keys
call.i instance_destroy(argc=1)
popz.v
push.v self.undyneinteract
call.i instance_destroy(argc=1)
popz.v
push.v self.undynesideinteract
call.i instance_destroy(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3198
push.v self.bars
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 68
conv.i.v
pushi.e 95
conv.i.v
pushi.e 223
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorcollider
push.d 0.35
push.v self.doorcollider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.95
push.v self.doorcollider
pushi.e -9
pop.v.d [stacktop]self.image_yscale

:[75]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [78]

:[76]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [78]

:[77]
push.v self.keycon
pushi.e 3
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
pushi.e 10
pop.v.i self.con
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.b self.repeatalarm

:[81]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.v self.kriscon
pushi.e 1
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [92]

:[85]
pushi.e 0
pop.v.b local.stopcon
pushi.e 82
pushenv [90]

:[86]
pushi.e 8
pop.v.i local.runspeed
push.v self.x
pushi.e 130
cmp.i.v GT
bf [88]

:[87]
pushi.e 2
pop.v.i global.facing
push.v self.x
pushloc.v local.runspeed
sub.v.v
pop.v.v self.x

:[88]
push.v self.x
pushi.e 130
cmp.i.v LTE
bf [90]

:[89]
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.b local.stopcon

:[90]
popenv [86]
pushloc.v local.stopcon
conv.v.b
bf [92]

:[91]
pushi.e -1
pop.v.i self.kriscon

:[92]
push.v self.con
pushi.e 12
cmp.i.v GTE
bf [94]

:[93]
push.v self.doge
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [95]

:[94]
push.e 0

:[95]
bf [107]

:[96]
pushi.e 8
pop.v.i local.runspeed
push.d 0.5
push.v self.doge
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.doge
pushi.e -9
push.v [stacktop]self.y
pushi.e 90
cmp.i.v LT
bf [98]

:[97]
push.v self.doge
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [107]

:[98]
push.v self.doge
pushi.e -9
push.v [stacktop]self.x
pushi.e 215
cmp.i.v GT
bf [100]

:[99]
push.v self.doge
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [107]

:[100]
push.v self.doge
pushi.e -9
push.v [stacktop]self.y
pushi.e 135
cmp.i.v LT
bf [102]

:[101]
push.v self.doge
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [107]

:[102]
push.v self.doge
pushi.e -9
push.v [stacktop]self.x
pushi.e 155
cmp.i.v GT
bf [104]

:[103]
push.v self.doge
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
pushi.e 1
pop.v.i self.kriscon
b [107]

:[104]
push.v self.doge
pushi.e -9
push.v [stacktop]self.y
pushi.e 250
cmp.i.v LT
bf [106]

:[105]
push.v self.doge
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [107]

:[106]
push.v self.doge
call.i instance_destroy(argc=1)
popz.v

:[107]
push.v self.con
pushi.e 13
cmp.i.v GTE
bf [109]

:[108]
push.v self.dogc
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [110]

:[109]
push.e 0

:[110]
bf [127]

:[111]
pushi.e 8
pop.v.i local.runspeed
push.d 0.5
push.v self.dogc
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.dogc
pushi.e -9
push.v [stacktop]self.x
pushi.e 220
cmp.i.v LT
bf [113]

:[112]
push.v self.dogc
pushi.e -9
push.v [stacktop]self.y
pushi.e 65
cmp.i.v LT
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
push.v self.dogc
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.x
b [127]

:[116]
pushi.e 0
push.v self.dogc
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dogc
pushi.e -9
push.v [stacktop]self.y
pushi.e 65
cmp.i.v LT
bf [118]

:[117]
push.v self.dogc
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [127]

:[118]
push.v self.dogc
pushi.e -9
push.v [stacktop]self.x
pushi.e 195
cmp.i.v GT
bf [120]

:[119]
push.v self.dogc
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [127]

:[120]
push.v self.dogc
pushi.e -9
push.v [stacktop]self.y
pushi.e 120
cmp.i.v LT
bf [122]

:[121]
push.v self.dogc
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [127]

:[122]
push.v self.dogc
pushi.e -9
push.v [stacktop]self.x
pushi.e 145
cmp.i.v GT
bf [124]

:[123]
push.v self.dogc
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [127]

:[124]
push.v self.dogc
pushi.e -9
push.v [stacktop]self.y
pushi.e 250
cmp.i.v LT
bf [126]

:[125]
push.v self.dogc
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [127]

:[126]
push.v self.dogc
call.i instance_destroy(argc=1)
popz.v

:[127]
push.v self.con
pushi.e 14
cmp.i.v GTE
bf [129]

:[128]
push.v self.dogd
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [130]

:[129]
push.e 0

:[130]
bf [147]

:[131]
pushi.e 8
pop.v.i local.runspeed
push.d 0.5
push.v self.dogd
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.dogd
pushi.e -9
push.v [stacktop]self.x
pushi.e 230
cmp.i.v LT
bf [133]

:[132]
push.v self.dogd
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v LT
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
push.v self.dogd
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.x
b [147]

:[136]
pushi.e 0
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dogd
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v LT
bf [138]

:[137]
push.v self.dogd
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [147]

:[138]
pushi.e 0
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dogd
pushi.e -9
push.v [stacktop]self.x
pushi.e 205
cmp.i.v GT
bf [140]

:[139]
push.v self.dogd
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [147]

:[140]
push.v self.dogd
pushi.e -9
push.v [stacktop]self.y
pushi.e 130
cmp.i.v LT
bf [142]

:[141]
push.v self.dogd
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [147]

:[142]
push.v self.dogd
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
cmp.i.v GT
bf [144]

:[143]
push.v self.dogd
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [147]

:[144]
push.v self.dogd
pushi.e -9
push.v [stacktop]self.y
pushi.e 250
cmp.i.v LT
bf [146]

:[145]
push.v self.dogd
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [147]

:[146]
push.v self.dogd
call.i instance_destroy(argc=1)
popz.v

:[147]
push.v self.con
pushi.e 15
cmp.i.v GTE
bf [149]

:[148]
push.v self.dogb
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [150]

:[149]
push.e 0

:[150]
bf [167]

:[151]
pushi.e 8
pop.v.i local.runspeed
push.d 0.5
push.v self.dogb
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.dogb
pushi.e -9
push.v [stacktop]self.x
pushi.e 230
cmp.i.v LT
bf [153]

:[152]
push.v self.dogb
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v LT
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.v self.dogb
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.x
b [167]

:[156]
pushi.e 0
push.v self.dogb
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dogb
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v LT
bf [158]

:[157]
push.v self.dogb
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [167]

:[158]
push.v self.dogb
pushi.e -9
push.v [stacktop]self.x
pushi.e 205
cmp.i.v GT
bf [160]

:[159]
push.v self.dogb
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [167]

:[160]
pushi.e 0
push.v self.dogb
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.dogb
pushi.e -9
push.v [stacktop]self.y
pushi.e 130
cmp.i.v LT
bf [162]

:[161]
push.v self.dogb
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [167]

:[162]
push.v self.dogb
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
cmp.i.v GT
bf [164]

:[163]
push.v self.dogb
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [167]

:[164]
push.v self.dogb
pushi.e -9
push.v [stacktop]self.y
pushi.e 250
cmp.i.v LT
bf [166]

:[165]
push.v self.dogb
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [167]

:[166]
push.v self.dogb
call.i instance_destroy(argc=1)
popz.v

:[167]
push.v self.con
pushi.e 16
cmp.i.v GTE
bf [169]

:[168]
push.v self.doga
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [170]

:[169]
push.e 0

:[170]
bf [187]

:[171]
pushi.e 8
pop.v.i local.runspeed
push.d 0.5
push.v self.doga
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.doga
pushi.e -9
push.v [stacktop]self.x
pushi.e 230
cmp.i.v LT
bf [173]

:[172]
push.v self.doga
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v LT
b [174]

:[173]
push.e 0

:[174]
bf [176]

:[175]
push.v self.doga
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.x
b [187]

:[176]
pushi.e 0
push.v self.doga
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.doga
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v LT
bf [178]

:[177]
push.v self.doga
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [187]

:[178]
push.v self.doga
pushi.e -9
push.v [stacktop]self.x
pushi.e 205
cmp.i.v GT
bf [180]

:[179]
push.v self.doga
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [187]

:[180]
pushi.e 0
push.v self.doga
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.doga
pushi.e -9
push.v [stacktop]self.y
pushi.e 130
cmp.i.v LT
bf [182]

:[181]
push.v self.doga
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [187]

:[182]
push.v self.doga
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
cmp.i.v GT
bf [184]

:[183]
push.v self.doga
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.runspeed
sub.v.v
pop.i.v [stacktop]self.x
b [187]

:[184]
push.v self.doga
pushi.e -9
push.v [stacktop]self.y
pushi.e 250
cmp.i.v LT
bf [186]

:[185]
push.v self.doga
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.runspeed
add.v.v
pop.i.v [stacktop]self.y
b [187]

:[186]
push.v self.doga
call.i instance_destroy(argc=1)
popz.v

:[187]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [189]

:[188]
pushi.e 18
pop.v.i self.con
pushi.e 0
pop.v.b self.repeatalarm

:[189]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [193]

:[190]
push.v self.undyne
pushi.e -1
cmp.i.v EQ
bf [192]

:[191]
pushi.e 1
push.v self.deskchairless
pushi.e -9
pop.v.i [stacktop]self.visible
push.v 82.depth
pushi.e 10
add.i.v
push.v self.deskchairless
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1115
conv.i.v
pushi.e 91
conv.i.v
pushi.e 147
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.undyne
pushi.e 0
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.depthcancel
push.v self.deskchairless
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
push.v self.undyne
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2968
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.depthcancel
push.v self.deskchairless
pushi.e -9
push.v [stacktop]self.depth
pushi.e 200
add.i.v
push.v self.undynedesk
pushi.e -9
pop.v.v [stacktop]self.depth
push.s "undyne"@3641
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_430_0"@15643
conv.s.v
push.s "\\E2* H-HEY^1, WAIT!!!!/%"@15644
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing

:[192]
pushi.e 20
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[193]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [208]

:[194]
push.d 0.25
push.v self.undyne
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.undyne
pushi.e -9
push.v [stacktop]self.x
pushi.e 200
cmp.i.v LT
bf [196]

:[195]
push.v self.undyne
pushi.e -9
push.v [stacktop]self.y
pushi.e 125
cmp.i.v LT
b [197]

:[196]
push.e 0

:[197]
bf [199]

:[198]
pushi.e 1117
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.undyne
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 7
add.i.v
pop.i.v [stacktop]self.x
b [208]

:[199]
push.v self.undyne
pushi.e -9
push.v [stacktop]self.y
pushi.e 125
cmp.i.v LT
bf [203]

:[200]
pushi.e 0
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.deskchairless
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.i.v EQ
bf [202]

:[201]
pushi.e 0
push.v self.deskchairless
pushi.e -9
pop.v.i [stacktop]self.visible

:[202]
pushi.e 1115
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.undyne
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 7
add.i.v
pop.i.v [stacktop]self.y
b [208]

:[203]
push.v self.undyne
pushi.e -9
push.v [stacktop]self.x
pushi.e 150
cmp.i.v GT
bf [205]

:[204]
pushi.e 1116
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.undyne
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 7
sub.i.v
pop.i.v [stacktop]self.x
b [208]

:[205]
push.v self.undyne
pushi.e -9
push.v [stacktop]self.y
pushi.e 180
cmp.i.v LT
bf [207]

:[206]
pushi.e 1115
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.undyne
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 7
add.i.v
pop.i.v [stacktop]self.y
b [208]

:[207]
pushi.e 22
pop.v.i self.con
pushi.e 0
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.image_index

:[208]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [210]

:[209]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [211]

:[210]
push.e 0

:[211]
bf [213]

:[212]
pushi.e 50
pop.v.i self.con
pushi.e 0
push.v self.undyne
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 10
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 2
pop.v.i self.un
pushi.e 893
conv.i.v
push.v self.undyne
pushi.e -9
push.v [stacktop]self.y
push.v self.undyne
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.un_actor
push.s "undyne"@3641
conv.s.v
push.v self.un_actor
push.v self.un
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1118
push.v self.un_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.un
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "undyne"@3641
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_501_0"@15647
conv.s.v
push.s "\\E2* NGAAHHHH!!^1! NOT AGAIN!!!/%"@15648
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1114
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "undyne"@3641
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_508_0"@15649
conv.s.v
push.s "\\E4* Looks like I gotta go recapture those criminals.../%"@15650
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1114
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 3
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1116
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "undyne"@3641
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_522_0"@15651
conv.s.v
push.s "\\E0* Hey^1, by the way^1, that yellow glasses lady./"@15652
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_523_0"@15653
conv.s.v
push.s "\\E2* Is she your teacher?/"@15654
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_524_0"@15655
conv.s.v
push.s "\\E7* She kinda had an accident earlier with her^1, uh^1, bike./"@15656
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_525_0"@15657
conv.s.v
push.s "\\E7* Just wanted to make sure she was feeling better./"@15658
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_526_0"@15659
conv.s.v
push.s "\\E1* So^1, uh..^1. give her this!/"@15660
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_528_0"@15661
conv.s.v
push.s "* (You got a heart-shaped box of candies that says \"Get Well Soon\".)/"@15662
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_529_0"@15663
conv.s.v
push.s "* (It has \"to your bike\" hastily scrawled underneath the Get Well Soon.)/"@15664
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "undyne"@3641
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_531_0"@15665
conv.s.v
push.s "\\E1* LOOK^1, \"GET WELL SOON\"S ALL THE STORE HAD!!/"@15666
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_532_0"@15667
conv.s.v
push.s "\\E2* OPEN IT AND I'LL ARREST YOU!^1! LOOK!!/"@15668
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_533_0"@15669
conv.s.v
push.s "\\E1* I'LL EVEN PUT A NOTE ON IT!!!/"@15670
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_534_0"@15671
conv.s.v
push.s "\\E2* NOW STOP INTERRUPTING ME!^1! I GOTTA GO!!/"@15672
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_police_slash_Step_0_gml_536_0"@15673
conv.s.v
push.s "* (You got the previously described box of candy with a note on it.)/%"@15674
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.un
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1115
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 8
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[213]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [215]

:[214]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [216]

:[215]
push.e 0

:[216]
bf [220]

:[217]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 317
pop.v.v [array]self.flag
push.v self.jail_collider
pushi.e -9
pushenv [219]

:[218]
call.i instance_destroy(argc=0)
popz.v

:[219]
popenv [218]
pushi.e 68
conv.i.v
pushi.e 98
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jail_collider_bottom
pushi.e 2
push.v self.jail_collider_bottom
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.35
push.v self.jail_collider_bottom
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 68
conv.i.v
pushi.e 98
conv.i.v
pushi.e 255
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jail_collider_side
pushi.e 1
push.v self.jail_collider_side
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.35
push.v self.jail_collider_side
pushi.e -9
pop.v.d [stacktop]self.image_yscale

:[220]
push.v self.napstacon
pushi.e 10
cmp.i.v EQ
bf [222]

:[221]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [227]

:[224]
pushi.e 1
pop.v.i global.interact
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 317
pop.v.v [array]self.flag
pushi.e 20
pop.v.i self.napstacon
pushi.e 1
pop.v.i self.alarm_sounded
pushi.e 140
pushenv [226]

:[225]
pushi.e 1
pop.v.i self.doorFadeMusic

:[226]
popenv [225]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.napstablook
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
pop.v.i self.na
pushi.e 893
conv.i.v
pushi.e 84
conv.i.v
pushi.e 92
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.na_actor
push.s "napstablook"@5429
conv.s.v
push.v self.na_actor
push.v self.na
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1127
push.v self.na_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.na
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 64
conv.i.v
pushi.e 84
conv.i.v
push.s "y"@52
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "napsta_alarm.ogg"@15634
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 84
conv.i.v
pushi.e 64
conv.i.v
push.s "y"@52
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1124
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.napstablook
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[227]
push.v self.napstacon
pushi.e 20
cmp.i.v EQ
bf [229]

:[228]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [230]

:[229]
push.e 0

:[230]
bf [end]

:[231]
push.v self.napstablook
pushi.e -9
pushenv [233]

:[232]
pushi.e -1
pop.v.i self.con

:[233]
popenv [232]
pushi.e -1
pop.v.i self.napstacon
pushi.e 0
pop.v.i global.interact

:[end]