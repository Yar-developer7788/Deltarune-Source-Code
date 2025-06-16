.localvar 2 arguments
.localvar 14089 plugboy_npc 4848

:[0]
pushglb.v global.plot
pushi.e 51
cmp.i.v LT
bf [2]

:[1]
push.s "npc2"@14088
pop.v.s self.extflag
pushi.e 1723
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v
b [end]

:[2]
pushi.e 103
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.plugboy_npc
pushi.e 1243
pushloc.v local.plugboy_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.plugboy_npc
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
call.i instance_destroy(argc=0)
popz.v

:[end]