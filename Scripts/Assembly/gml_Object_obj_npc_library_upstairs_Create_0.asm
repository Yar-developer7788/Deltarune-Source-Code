.localvar 2 arguments

:[0]
pushi.e 103
conv.i.v
pushi.e 158
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bird_npc
pushi.e 1107
push.v self.bird_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -1
push.v self.bird_npc
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[end]