.localvar 2 arguments

:[0]
pushi.e 109
conv.i.v
pushi.e 205
conv.i.v
pushi.e 470
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_a
push.v self.swatchling_npc_a
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 109
conv.i.v
pushi.e 205
conv.i.v
pushi.e 750
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_b
push.v self.swatchling_npc_b
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
push.v self.swatchling_npc_b
pushi.e -9
pushenv [6]

:[5]
push.v self.yellow
pop.v.v self.current_pal

:[6]
popenv [5]

:[end]