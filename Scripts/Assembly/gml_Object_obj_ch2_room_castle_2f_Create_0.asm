.localvar 2 arguments
.localvar 32726 queen_npc 17279
.localvar 30392 lancer_npc 17280
.localvar 35556 rudinn_npc 17281

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -4
pop.v.i self.cutscene_master
pushi.e 0
pop.v.i self.leaveCounter
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 387
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e -5
pushi.e 388
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [8]

:[7]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [13]

:[10]
pushi.e 105
conv.i.v
pushi.e 175
conv.i.v
pushi.e 1054
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.queen_npc
pushi.e 770
pushloc.v local.queen_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.queen_npc
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.queen_npc
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]
b [end]

:[13]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
bf [21]

:[14]
pushi.e 105
conv.i.v
pushi.e 225
conv.i.v
pushi.e 990
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.queen_npc
pushi.e 1284
pushloc.v local.queen_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.queen_npc
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.queen_npc
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 105
conv.i.v
pushi.e 235
conv.i.v
pushi.e 875
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.lancer_npc
pushi.e 1305
pushloc.v local.lancer_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.lancer_npc
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.lancer_npc
pushi.e -9
pushenv [18]

:[17]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 110
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.rudinn_npc
pushi.e 1558
pushloc.v local.rudinn_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.rudinn_npc
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.1
pop.v.d self.image_speed

:[20]
popenv [19]
b [end]

:[21]
pushi.e 135
conv.i.v
pushi.e 175
conv.i.v
pushi.e 1054
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.queen_npc
pushloc.v local.queen_npc
pushi.e -9
pushenv [23]

:[22]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[23]
popenv [22]

:[end]