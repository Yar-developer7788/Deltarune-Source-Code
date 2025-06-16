.localvar 2 arguments
.localvar 22390 substring 10052

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[1]
pushi.e 123
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e -1
pop.v.i global.inv
pushi.e 4
pop.v.i self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage
call.i gml_Script_scr_damage(argc=0)
popz.v

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [50]

:[4]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [19]

:[8]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[10]
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
bf [12]

:[11]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[12]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[14]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[16]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[18]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[19]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [22]

:[21]
push.e 0

:[22]
bf [28]

:[23]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [28]

:[24]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [26]

:[25]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[26]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
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

:[28]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [30]

:[29]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [50]

:[32]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [49]

:[33]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.i 231869
setowner.e
push.s "HomingDiamonds"@22388
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
pushi.e 0
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [36]

:[35]
push.i 231869
setowner.e
push.s "RisingDiamonds"@22389
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
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[36]
pushi.e 140
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
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i gml_Script_scr_messagepriority(argc=1)
conv.v.b
bf [45]

:[37]
push.v self.myself
call.i string(argc=1)
pop.v.v local.substring
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.i 231921
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[39]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[41]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[43]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [45]

:[44]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[45]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [48]

:[46]
pushi.e 100
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
call.i gml_Script_scr_messagepriority(argc=1)
conv.v.b
bf [48]

:[47]
push.v self.myself
call.i string(argc=1)
pop.v.v local.substring
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[48]
pushi.e 1
pop.v.i self.attacked
b [50]

:[49]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[50]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[51]
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
bf [53]

:[52]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
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

:[56]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.automiss
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.i 231984
setowner.e
push.s ""@157
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

:[62]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[63]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [65]

:[64]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[68]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [70]

:[69]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [77]

:[72]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s ""@157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[74]
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
bf [76]

:[75]
pushi.e 20
pop.v.i self.actcon
b [77]

:[76]
pushi.e -1
pop.v.i self.actcon

:[77]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [79]

:[78]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
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

:[82]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [84]

:[83]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
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

:[87]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.v self.actconsus
pushi.e 1
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

:[92]
push.v self.actingsus
pushi.e 2
cmp.i.v EQ
bf [94]

:[93]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [99]

:[96]
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
bf [98]

:[97]
pushi.e 20
pop.v.i self.actconsus
b [99]

:[98]
pushi.e 0
pop.v.i self.actconsus

:[99]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
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

:[104]
push.v self.actingral
pushi.e 2
cmp.i.v EQ
bf [106]

:[105]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [111]

:[108]
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
bf [110]

:[109]
pushi.e 20
pop.v.i self.actconral
b [111]

:[110]
pushi.e 0
pop.v.i self.actconral

:[111]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [114]

:[112]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [114]

:[113]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [115]

:[114]
push.e 1

:[115]
bf [118]

:[116]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [118]

:[117]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[118]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [121]

:[120]
push.e 0

:[121]
bf [end]

:[122]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[end]