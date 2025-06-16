.localvar 2 arguments
.localvar 36080 alvin_npc 17473

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
pushi.e 103
conv.i.v
pushi.e 50
conv.i.v
pushi.e 87
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.alvin_npc
pushi.e 1142
pushloc.v local.alvin_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.alvin_npc
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]

:[end]