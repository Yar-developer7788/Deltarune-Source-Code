.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [51]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
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
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
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

:[16]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [25]

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
bf [25]

:[21]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[23]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
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

:[25]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [43]

:[29]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [42]

:[30]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 0
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
b [33]

:[32]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target

:[33]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 140
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
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
bf [35]

:[34]
push.i 231921
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[35]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[37]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[39]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[41]
b [43]

:[42]
pushi.e 120
pop.v.i global.turntimer

:[43]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [51]

:[44]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [51]

:[45]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[47]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [51]

:[48]
pushi.e 357
pushenv [50]

:[49]
pushi.e 1
pop.v.i self.noreturn

:[50]
popenv [49]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[51]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[53]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [55]

:[54]
pushi.e 50
pop.v.i global.typer
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[55]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [57]

:[56]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [58]

:[57]
push.e 0

:[58]
bf [62]

:[59]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 357
pushenv [61]

:[60]
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[61]
popenv [60]

:[62]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [66]

:[63]
pushi.e 357
pushenv [65]

:[64]
pushi.e 0
pop.v.i self.noreturn

:[65]
popenv [64]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[66]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [104]

:[67]
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
bf [69]

:[68]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[72]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [74]

:[73]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [79]

:[76]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.automiss
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
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

:[78]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[79]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231526
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.mercymod
pushi.e 200
add.i.v
pop.i.v [array]self.mercymod
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[84]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [86]

:[85]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.i 231251
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.battlecancel
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[89]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [91]

:[90]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.battlecancel
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[94]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [96]

:[95]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231984
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[99]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase(argc=0)
popz.v

:[104]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[105]
pushi.e 15
pop.v.i self.hspeed

:[end]