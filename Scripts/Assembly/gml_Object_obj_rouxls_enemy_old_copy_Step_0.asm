.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [60]

:[1]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [16]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
pushi.e 50
pop.v.i global.typer
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[15]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[16]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [22]

:[20]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 7
pop.v.i global.mnfight

:[22]
pushglb.v global.mnfight
pushi.e 7
cmp.i.v EQ
bf [24]

:[23]
push.v self.buildedblocks
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [28]

:[26]
push.v self.buildedblockstimer
push.e 1
add.i.v
pop.v.v self.buildedblockstimer
push.v self.buildedblockstimer
pushi.e 60
cmp.i.v GT
bf [28]

:[27]
pushi.e 2
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.buildedblocks
pushi.e 0
pop.v.i self.buildedblockstimer

:[28]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [30]

:[29]
push.v self.buildedblocks
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [36]

:[32]
pushi.e 2
pop.v.i self.buildedblocks
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [34]

:[33]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[34]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[36]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [39]

:[37]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.buildedblocks
pushi.e 2
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [60]

:[41]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [59]

:[42]
push.v self.bulletoverride
pushi.e 0
cmp.i.v GTE
bf [44]

:[43]
push.v self.bulletoverride
b [45]

:[44]
pushi.e 2
conv.i.v
call.i irandom(argc=1)

:[45]
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
push.i 231869
setowner.e
push.s "ThrashHead"@26762
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 26
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [50]

:[47]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.i 231869
setowner.e
push.s "ThrashFoot"@26763
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 27
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [50]

:[49]
push.i 231869
setowner.e
push.s "PuzzleBlocks"@26764
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 28
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[50]
pushi.e 200
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.i 231921
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[52]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[54]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[58]
pushi.e 1
pop.v.i self.attacked
pushi.e 0
pop.v.i self.buildedblocks
b [60]

:[59]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[60]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [133]

:[61]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.actcon
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[66]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [73]

:[70]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.automiss
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.i 231984
setowner.e
push.s "(Warned)"@22858
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231956
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.automiss

:[72]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[73]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[78]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [80]

:[79]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [87]

:[82]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[84]
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
pushi.e 20
pop.v.i self.actcon
b [87]

:[86]
pushi.e -1
pop.v.i self.actcon

:[87]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [89]

:[88]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[92]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [94]

:[93]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[97]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus

:[102]
push.v self.actingsus
pushi.e 2
cmp.i.v EQ
bf [104]

:[103]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [109]

:[106]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
pushi.e 20
pop.v.i self.actconsus
b [109]

:[108]
pushi.e 0
pop.v.i self.actconsus

:[109]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral

:[114]
push.v self.actingral
pushi.e 2
cmp.i.v EQ
bf [116]

:[115]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [121]

:[118]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 35
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
pushi.e 20
pop.v.i self.actconral
b [121]

:[120]
pushi.e 0
pop.v.i self.actconral

:[121]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [124]

:[122]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [124]

:[123]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [125]

:[124]
push.e 1

:[125]
bf [128]

:[126]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [128]

:[127]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[128]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[133]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[134]
pushi.e 189
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [137]

:[135]
pushi.e 1
push.v self.keytestmode
sub.v.i
pop.v.v self.keytestmode
push.v self.keytestmode
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
push.s ""@157
pop.v.s builtin.keyboard_lastchar

:[137]
push.v self.keytestmode
conv.v.b
bf [139]

:[138]
pushbltn.v builtin.keyboard_lastchar
push.s ""@157
cmp.s.v NEQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
push.s ""@157
pop.v.s builtin.keyboard_lastchar

:[142]
pushi.e 103
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [144]

:[143]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [145]

:[144]
push.e 1

:[145]
bf [147]

:[146]
pushi.e 0
pop.v.i self.bulletoverride

:[147]
pushi.e 104
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [149]

:[148]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [150]

:[149]
push.e 1

:[150]
bf [152]

:[151]
pushi.e 1
pop.v.i self.bulletoverride

:[152]
pushi.e 105
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [154]

:[153]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [155]

:[154]
push.e 1

:[155]
bf [157]

:[156]
pushi.e 2
pop.v.i self.bulletoverride

:[157]
pushi.e 101
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [159]

:[158]
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [160]

:[159]
push.e 1

:[160]
bf [162]

:[161]
pushi.e -1
pop.v.i self.bulletoverride

:[162]
pushi.e 78
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [166]

:[163]
pushi.e 202
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [165]

:[164]
pushi.e 202
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 204
conv.i.v
call.i instance_destroy(argc=1)
popz.v
b [166]

:[165]
call.i @@This@@(argc=0)
pushi.e 202
conv.i.v
call.i gml_Script_scr_following_afterimage(argc=2)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 730
conv.i.v
pushi.e 204
conv.i.v
call.i gml_Script_scr_following_afterimage(argc=2)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth

:[166]
call.i gml_Script_scr_music_mute(argc=0)
popz.v

:[end]