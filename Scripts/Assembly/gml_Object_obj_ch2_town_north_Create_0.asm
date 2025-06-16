.localvar 2 arguments
.localvar 36092 bratty_door 17485
.localvar 36093 flower_sign 17486
.localvar 36094 sign_collider 17487
.localvar 36095 froggit_npc 17488
.localvar 36096 rabbit_npc 17489
.localvar 36097 mw_npc 17490

:[0]
pushi.e -1
pop.v.i self.con
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 133
conv.i.v
pushi.e 60
conv.i.v
pushi.e 920
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bratty_door
push.d 1.5
pushloc.v local.bratty_door
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 152
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 105
conv.i.v
pushi.e 70
conv.i.v
pushi.e 1255
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.flower_sign
pushi.e 2799
pushloc.v local.flower_sign
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.flower_sign
pushi.e -9
pushenv [6]

:[5]
push.i 98700
pop.v.i self.depth

:[6]
popenv [5]
pushi.e 68
conv.i.v
pushi.e 96
conv.i.v
pushi.e 1250
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.sign_collider
pushi.e 2
pushloc.v local.sign_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 1.1
pushloc.v local.sign_collider
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 103
conv.i.v
pushi.e 190
conv.i.v
pushi.e 1050
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.froggit_npc
pushi.e 1149
pushloc.v local.froggit_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.froggit_npc
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 103
conv.i.v
pushi.e 105
conv.i.v
pushi.e 1135
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.rabbit_npc
pushi.e 1150
pushloc.v local.rabbit_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.rabbit_npc
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 103
conv.i.v
pushi.e 105
conv.i.v
pushi.e 1295
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.mw_npc
pushi.e 1154
pushloc.v local.mw_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.mw_npc
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]

:[end]