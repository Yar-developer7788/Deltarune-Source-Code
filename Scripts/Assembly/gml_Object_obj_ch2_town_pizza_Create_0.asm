.localvar 2 arguments
.localvar 36087 burgerpants_npc 17478
.localvar 36088 napkins 17479
.localvar 36089 nicecream_npc 17480
.localvar 36090 icewolf_npc 17481
.localvar 36091 table_bottom 17482

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
pushi.e 91
conv.i.v
pushi.e 234
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.burgerpants_npc
pushi.e 1143
pushloc.v local.burgerpants_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 100
pushloc.v local.burgerpants_npc
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2961
conv.i.v
pushi.e 118
conv.i.v
pushi.e 212
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.napkins
pushloc.v local.burgerpants_npc
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pushloc.v local.napkins
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 103
conv.i.v
pushi.e 52
conv.i.v
pushi.e 77
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.nicecream_npc
pushi.e 1121
pushloc.v local.nicecream_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.nicecream_npc
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 103
conv.i.v
pushi.e 133
conv.i.v
pushi.e 73
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.icewolf_npc
pushi.e 1047
pushloc.v local.icewolf_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 95000
pushloc.v local.icewolf_npc
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2958
conv.i.v
pushi.e 118
conv.i.v
pushi.e 36
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.table_bottom
pushloc.v local.icewolf_npc
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pushloc.v local.table_bottom
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]