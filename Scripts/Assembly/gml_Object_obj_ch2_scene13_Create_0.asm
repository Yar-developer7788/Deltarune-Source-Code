.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.explodetimer
pushi.e 0
pop.v.i self.wineglasscon
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [2]

:[1]
pushi.e 105
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1232
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.statuenpc
pushi.e 96
push.v self.statuenpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [7]

:[2]
pushi.e 110
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1232
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_a
push.v self.swatchling_npc_a
pushi.e -9
pushenv [4]

:[3]
pushi.e 1253
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.1
pop.v.d self.image_speed

:[4]
popenv [3]
pushi.e 110
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1375
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_b
push.v self.swatchling_npc_b
pushi.e -9
pushenv [6]

:[5]
pushi.e 1253
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.1
pop.v.d self.image_speed

:[6]
popenv [5]

:[7]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [9]

:[8]
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
pushi.e 0
push.v self.statuenpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 103
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.boxhead
pushi.e 0
push.v self.boxhead
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 129
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.glassexplosion
pushi.e 2275
push.v self.glassexplosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.glassexplosion
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 129
conv.i.v
pushi.e 216
conv.i.v
pushi.e 970
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noellebox
pushi.e 100
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.noellebox
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 0
pop.v.b self.noellelost

:[end]