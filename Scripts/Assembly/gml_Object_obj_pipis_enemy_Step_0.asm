.localvar 2 arguments
.localvar 14810 randomnumber 6630
.localvar 14813 smallfacetext 6631

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [1]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [32]

:[2]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[8]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[9]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [21]

:[13]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [21]

:[14]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [16]

:[15]
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[19]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
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

:[21]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [23]

:[22]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [32]

:[25]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [31]

:[26]
pushi.e 0
pop.v.i self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.i 231869
setowner.e
push.s "PipisExplosion"@14804
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
pushi.e 50
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 50
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 35
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.btimer
push.v self.id
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.creatorid

:[28]
pushi.e 90
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
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i gml_Script_scr_messagepriority(argc=1)
conv.v.b
bf [30]

:[29]
push.i 231921
setowner.e
push.s "obj_pipis_enemy_slash_Step_0_gml_73_0"@14808
conv.s.v
push.s "* Pipis"@14809
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[30]
pushi.e 1
pop.v.i self.attacked
b [32]

:[31]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[32]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[33]
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
bf [35]

:[34]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1
pop.v.i self.actcon
pushi.e 5555
conv.i.v
pushi.e 42
conv.i.v
call.i irandom_range(argc=2)
pop.v.v local.randomnumber
push.s "obj_pipis_enemy_slash_Step_0_gml_97_0"@14811
conv.s.v
pushloc.v local.randomnumber
call.i string(argc=1)
push.s "~1 liked this!  "@14812
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.smallfacetext
pushloc.v local.smallfacetext
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 0
conv.i.v
push.s "empty"@6222
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_pipis_enemy_slash_Step_0_gml_100_0"@14814
conv.s.v
push.s "PIPIS - ''The Original'' An invasive species of freshwater clam. \\f0 /%"@14815
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[38]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bt [46]

:[42]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
b [47]

:[46]
push.e 1

:[47]
bf [58]

:[48]
push.s "obj_pipis_enemy_slash_Step_0_gml_110_0"@14816
conv.s.v
push.s "* Nothing happened!/%"@14817
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus

:[53]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral

:[58]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [61]

:[59]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [61]

:[60]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [62]

:[61]
push.e 1

:[62]
bf [65]

:[63]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [65]

:[64]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[65]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [68]

:[67]
push.e 0

:[68]
bf [end]

:[69]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[end]