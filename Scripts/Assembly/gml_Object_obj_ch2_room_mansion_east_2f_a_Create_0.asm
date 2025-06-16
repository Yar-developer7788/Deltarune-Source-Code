.localvar 2 arguments
.localvar 107 i 17399
.localvar 36032 table_collider 17401

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -1
pop.v.i self.key
pushi.e -1
pop.v.i self.dooropen
pushi.e 0
pop.v.b self.keyfloat
pushi.e 0
pop.v.i self.floattimer
pushi.e 0
pop.v.b self.keysparkle
pushi.e 0
pop.v.i self.sparkletimer
pushi.e 0
pop.v.b self.fadeplatters
pushi.e 0
pop.v.i self.keyXPos
pushi.e 0
pop.v.i self.keyYPos
pushi.e 0
pop.v.b self.make_forcefield
pushi.e -4
pop.v.i self.forcefield
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e -5
pushi.e 344
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2863
conv.i.v
pushi.e 40
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dooropen
push.i 899999
push.v self.dooropen
pushi.e -9
pop.v.i [stacktop]self.depth
b [5]

:[4]
pushi.e 2865
conv.i.v
pushi.e 40
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.doorlocked
push.i 899999
push.v self.doorlocked
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 261
conv.i.v
pushi.e 240
conv.i.v
pushi.e 170
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.monty
pushi.e 68
conv.i.v
pushi.e 80
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.exitcollider
pushi.e 4
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[5]
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [18]

:[7]
push.i 173995
setowner.e
pushi.e 260
conv.i.v
pushi.e 200
conv.i.v
pushi.e 870
pushi.e 321
pushloc.v local.i
mul.v.i
add.v.i
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.table
push.i 133655
setowner.e
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.table
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.table
pushi.e -9
pushenv [17]

:[8]
pushi.e 1
pop.v.i self.mode
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2313
pop.v.i self.contentsprite

:[10]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1804
pop.v.i self.contentsprite

:[12]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bf [16]

:[13]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2490
pop.v.i self.contentsprite
b [16]

:[15]
pushi.e 1802
pop.v.i self.contentsprite

:[16]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[17]
popenv [8]
pushi.e 1144
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.table
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.table
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.table_collider
push.d 2.5
pushloc.v local.table_collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[18]
pushi.e 109
conv.i.v
pushi.e 135
conv.i.v
pushi.e 1760
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatch_npc
push.v self.swatch_npc
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 103
conv.i.v
pushi.e 225
conv.i.v
pushi.e 805
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nubert_npc
pushi.e 1258
push.v self.nubert_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.nubert_npc
pushi.e -9
pushenv [22]

:[21]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 103
conv.i.v
pushi.e 220
conv.i.v
pushi.e 975
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mouse_npc
pushi.e 1277
push.v self.mouse_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.mouse_npc
pushi.e -9
pushenv [24]

:[23]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 103
conv.i.v
pushi.e 185
conv.i.v
pushi.e 1120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.yesman_npc
pushi.e 1278
push.v self.yesman_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.yesman_npc
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[26]
popenv [25]
push.v self.yesman_npc
pushi.e -9
pushenv [28]

:[27]
push.s "x"@50
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[28]
popenv [27]
pushi.e 103
conv.i.v
pushi.e 185
conv.i.v
pushi.e 1300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.yeswoman_npc
pushi.e 1279
push.v self.yeswoman_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.yeswoman_npc
pushi.e -9
pushenv [30]

:[29]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[30]
popenv [29]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [34]

:[31]
pushi.e 103
conv.i.v
pushi.e 180
conv.i.v
pushi.e 1625
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hacker_npc
pushi.e 3252
push.v self.hacker_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.hacker_npc
pushi.e -9
pushenv [33]

:[32]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[33]
popenv [32]

:[34]
pushi.e 103
conv.i.v
pushi.e 205
conv.i.v
pushi.e 1430
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wig_npc
pushi.e 1280
push.v self.wig_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.wig_npc
pushi.e -9
pushenv [36]

:[35]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[36]
popenv [35]

:[end]