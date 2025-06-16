.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [28]

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
bf [8]

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
push.s "obj_dojograzeenemy_slash_Step_0_gml_15_0"@27629
conv.s.v
push.s "Graze!"@27630
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[8]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [17]

:[12]
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
bf [17]

:[13]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [15]

:[14]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[15]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
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

:[17]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [19]

:[18]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [28]

:[21]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [27]

:[22]
pushi.e 0
pop.v.i self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i global.inv
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
pushi.e 48
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 135
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.btimer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 20
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timermax
pushi.e 7
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 0
pop.v.i self.fighttimer
pushi.e 0
pop.v.i self.speedtimer
pushi.e 1
pop.v.i self.bulletgrazecon
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag

:[24]
push.i 999999
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
pushi.e 0
pop.v.i self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.i 231921
setowner.e
push.s "obj_dojograzeenemy_slash_Step_0_gml_71_0"@27633
conv.s.v
push.s "* How'd you get past!?"@27634
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[26]
pushi.e 1
pop.v.i self.attacked
b [28]

:[27]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[28]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [49]

:[29]
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
bf [31]

:[30]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.actcon
push.s "obj_dojograzeenemy_slash_Step_0_gml_91_0"@27635
conv.s.v
push.s "* GRAZECHALLENGE - Graze the bullets!/%"@27636
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[34]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.s "obj_dojograzeenemy_slash_Step_0_gml_97_0"@27637
conv.s.v
push.s "* Susie acted!/%"@27638
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus

:[39]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.s "obj_dojograzeenemy_slash_Step_0_gml_106_0"@27639
conv.s.v
push.s "* Ralsei acted!/%"@27640
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral

:[44]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[49]
push.v self.bulletgrazecon
pushi.e 1
cmp.i.v EQ
bf [end]

:[50]
pushi.e 999
pop.v.i global.turntimer
push.v self.fighttimer
push.e 1
add.i.v
pop.v.v self.fighttimer
push.v self.speedtimer
push.e 1
add.i.v
pop.v.v self.speedtimer
push.v self.speedtimer
pushi.e 30
cmp.i.v GTE
bf [52]

:[51]
push.v self.dc
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [53]

:[52]
push.e 0

:[53]
bf [57]

:[54]
push.v self.dc
pushi.e -9
push.v [stacktop]self.timermax
pushi.e 8
cmp.i.v GT
bf [56]

:[55]
push.v self.dc
pushi.e -9
dup.i 4
push.v [stacktop]self.timermax
push.e 1
sub.i.v
pop.i.v [stacktop]self.timermax

:[56]
pushi.e 0
pop.v.i self.speedtimer

:[57]
pushglb.v global.tension
pushglb.v global.maxtension
cmp.v.v EQ
bf [59]

:[58]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag
pushi.e 10
pop.v.i self.hspeed
pushi.e -1
pop.v.i global.turntimer
pushi.e 2
pop.v.i self.bulletgrazecon
b [end]

:[59]
pushglb.v global.inv
pushi.e 0
cmp.i.v GT
bf [end]

:[60]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag
pushi.e -1
pop.v.i global.turntimer
pushi.e 10
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.bulletgrazecon

:[end]