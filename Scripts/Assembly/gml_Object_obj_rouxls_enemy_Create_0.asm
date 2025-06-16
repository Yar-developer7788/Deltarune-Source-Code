.localvar 2 arguments
.localvar 26691 tensionbonus 13730
.localvar 26696 turretbody 13735
.localvar 26732 addstat1 13759
.localvar 26733 addstat2 13760

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e -5
pushi.e 458
push.v [array]self.flag
pushi.e 7
conv.i.d
div.d.v
pushglb.v global.maxtension
mul.v.v
push.d 0.3
mul.d.v
pop.v.v local.tensionbonus
pushloc.v local.tensionbonus
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
push.i 231883
setowner.e
pushloc.v local.tensionbonus
pushi.e -5
pushi.e 0
pop.v.v [array]self.temptension
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1162
pop.v.i self.idlesprite
pushi.e 1162
pop.v.i self.hurtsprite
pushi.e 1166
pop.v.i self.sabersprite
pushi.e 1162
pop.v.i self.sparedsprite
pushi.e 1
pop.v.i self.custom_draw_example
pushi.e -10
pop.v.i self.depth
pushi.e 730
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.thrash
push.v self.x
pushi.e 34
add.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.xx
push.v self.y
pushi.e 108
add.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.yy
push.v self.depth
pushi.e 5
add.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet
pushi.e 0
pop.v.i self.drawsiner
pushi.e 0
pop.v.i self.thrashmode
pushi.e 0
pop.v.i self.thrashcon
pushi.e 0
pop.v.i self.thrashbody
pushi.e 0
pop.v.i self.thrashtimer
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.movey
pushi.e -1
pop.v.i self.bulletoverride
pushi.e 0
pop.v.i self.chosenattack
pushi.e 8
pop.v.i self.advancespeed
pushi.e 6
pop.v.i self.returnspeed
pushi.e 15
conv.i.v
call.i irandom(argc=1)
pushi.e 10
add.i.v
pop.v.v self.aimtime
pushi.e 0
pop.v.i self.floatheight
pushi.e 0
pop.v.i self.returnease
pushi.e 0
pop.v.i self.headattack
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puddle
pushi.e 2070
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
pop.v.b local.turretbody
push.v self.remx
pushloc.v local.turretbody
conv.v.b
bf [5]

:[4]
pushi.e 18
conv.i.v
b [6]

:[5]
pushi.e 34
conv.i.v

:[6]
add.v.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.remy
pushi.e 173
add.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.s
push.v self.thrash
pushi.e -9
push.v [stacktop]self.wsiner
push.v self.thrash
pushi.e -9
push.v [stacktop]self.wsinerrate
add.v.v
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
mul.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.y
pushloc.v local.turretbody
conv.v.b
bf [8]

:[7]
pushi.e 2
conv.i.v
b [9]

:[8]
pushi.e 0
conv.i.v

:[9]
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 1
pop.v.i self.submerged
pushi.e 0
pop.v.i self.keytestmode
pushi.e 0
pop.v.i self.saberanim
pushi.e 0
pop.v.i self.head_difficulty
pushi.e 0
pop.v.i self.wheel_difficulty
pushi.e 0
pop.v.i self.buildedblocks
pushi.e 0
pop.v.i self.buildedblockstimer
pushi.e 0
pop.v.i self.did_kris_win_simcity
pushi.e 1
pop.v.i self.HouseCount
pushbltn.v builtin.room
pushi.e 202
cmp.i.v NEQ
bf [11]

:[10]
pushi.e 756
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile6
pushi.e 16
push.v self.tile6
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 6
push.v self.tile6
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile1
pushi.e 8
push.v self.tile1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 120
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile2
pushi.e 8
push.v self.tile2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 240
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile3
pushi.e 3
push.v self.tile3
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 280
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile4
pushi.e 3
push.v self.tile4
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile5
pushi.e 8
push.v self.tile5
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile6
pushi.e 8
push.v self.tile6
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[11]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
not.b
bt [13]

:[12]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [20]

:[15]
pushi.e 755
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 756
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.visible

:[19]
popenv [18]

:[20]
pushi.e 754
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [22]

:[21]
pushi.e 754
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.simcity
b [23]

:[22]
pushi.e 754
pop.v.i self.simcity

:[23]
push.v self.simcity
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.depthChange
push.v self.id
push.v self.simcity
pushi.e -9
pop.v.v [stacktop]self.maker
pushi.e 0
pop.v.i self.endbattle
push.s "tie"@26711
pop.v.s self.actresult
pushi.e 0
pop.v.i self.target_multiplier
pushi.e 868
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 0
pop.v.i self.ballooncount
pushi.e 0
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.hasplayerplacedhouses
pushi.e 0
pop.v.i self.ralseitalks
pushi.e 0
pop.v.i self.attackorder
push.i 171823
setowner.e
push.s "obj_rouxls_enemy_slash_Create_0_gml_116_0"@26716
conv.s.v
push.s "Residential"@26717
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.zone
push.s "obj_rouxls_enemy_slash_Create_0_gml_117_0"@26719
conv.s.v
push.s "Commercial"@26720
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.zone
push.s "obj_rouxls_enemy_slash_Create_0_gml_118_0"@26721
conv.s.v
push.s "Industrial"@26722
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.zone
push.i 171824
setowner.e
push.s "obj_rouxls_enemy_slash_Create_0_gml_120_0"@26723
conv.s.v
push.s "Parks"@26724
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.city
push.s "obj_rouxls_enemy_slash_Create_0_gml_121_0"@26726
conv.s.v
push.s "Crime"@22905
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.city
push.s "obj_rouxls_enemy_slash_Create_0_gml_122_0"@26727
conv.s.v
push.s "Public Transport"@26728
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.city
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [28]

:[26]
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushi.e -5
pushi.e 222
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
pop.v.b self.duckmode
push.i 171825
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 0
popaf.e
push.i 171826
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 0
popaf.e
push.i 171825
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 1
popaf.e
push.i 171826
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 1
popaf.e
push.i 171825
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 2
popaf.e
push.i 171826
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 2
popaf.e
push.i 171825
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 3
popaf.e
push.i 171826
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 3
popaf.e
push.i 171825
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 0
popaf.e
push.i 171826
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 0
popaf.e
push.i 171825
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 1
popaf.e
push.i 171826
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 1
popaf.e
push.i 171825
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 2
popaf.e
push.i 171826
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 2
popaf.e
push.i 171825
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 3
popaf.e
push.i 171826
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 3
popaf.e
push.i 171825
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 0
popaf.e
push.i 171826
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 0
popaf.e
push.i 171825
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 1
popaf.e
push.i 171826
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 1
popaf.e
push.i 171825
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 2
popaf.e
push.i 171826
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 2
popaf.e
push.i 171825
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 3
popaf.e
push.i 171826
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 3
popaf.e
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [32]

:[31]
push.i 171827
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.stat
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[32]
pushi.e 0
pop.v.i self.i

:[33]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [40]

:[34]
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v GTE
bf [39]

:[35]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.stat1
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]self.flag
conv.v.i
pushaf.e
pop.v.v local.addstat1
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.stat2
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]self.flag
conv.v.i
pushaf.e
pop.v.v local.addstat2
pushloc.v local.addstat1
pushi.e 6
cmp.i.v LT
bf [37]

:[36]
push.i 171827
setowner.e
pushi.e -1
pushloc.v local.addstat1
conv.v.i
dup.i 1
push.v [array]self.stat
pushi.e 1
add.i.v
pop.i.v [array]self.stat

:[37]
pushloc.v local.addstat2
pushi.e 6
cmp.i.v LT
bf [39]

:[38]
pushi.e -1
pushloc.v local.addstat2
conv.v.i
dup.i 1
push.v [array]self.stat
pushi.e 1
add.i.v
pop.i.v [array]self.stat

:[39]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [33]

:[40]
pushi.e -1
pop.v.i self.type
pushi.e -1
pop.v.i self.topstat
pushi.e 0
pop.v.i self.topstatlevel
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [50]

:[42]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
push.v self.topstatlevel
cmp.v.v EQ
bf [44]

:[43]
push.v self.topstatlevel
pushi.e 2
cmp.i.v GTE
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 7
pop.v.i self.type

:[47]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
push.v self.topstatlevel
cmp.v.v GT
bf [49]

:[48]
push.v self.i
pop.v.v self.topstat
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
pop.v.v self.topstatlevel

:[49]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[50]
push.v self.topstat
pop.v.v self.type
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [52]

:[51]
pushi.e -1
pop.v.i self.type

:[52]
push.v self.topstatlevel
pushi.e 0
cmp.i.v EQ
bf [end]

:[53]
pushi.e 6
pop.v.i self.type

:[end]