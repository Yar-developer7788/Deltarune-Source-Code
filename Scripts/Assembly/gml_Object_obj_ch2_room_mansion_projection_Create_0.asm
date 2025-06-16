.localvar 2 arguments

:[0]
pushi.e 109
conv.i.v
pushi.e 285
conv.i.v
pushi.e 135
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatch_npc_a
push.v self.swatch_npc_a
pushi.e -9
pushenv [2]

:[1]
pushi.e 1282
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.yellow
pop.v.v self.current_pal

:[2]
popenv [1]
pushi.e 109
conv.i.v
pushi.e 255
conv.i.v
pushi.e 265
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatch_npc_b
push.v self.swatch_npc_b
pushi.e -9
pushenv [4]

:[3]
pushi.e 1282
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 109
conv.i.v
pushi.e 285
conv.i.v
pushi.e 395
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatch_npc_c
push.v self.swatch_npc_c
pushi.e -9
pushenv [6]

:[5]
pushi.e 1282
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.orange
pop.v.v self.current_pal

:[6]
popenv [5]
pushi.e 133
conv.i.v
pushi.e 180
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.projection
pushi.e 8
push.v self.projection
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 1.5
push.v self.projection
pushi.e -9
pop.v.d [stacktop]self.image_yscale

:[end]