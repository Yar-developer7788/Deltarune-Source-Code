.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [4]

:[1]
pushi.e 103
conv.i.v
pushi.e 270
conv.i.v
pushi.e 420
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.plugboy_npc
pushi.e 1251
push.v self.plugboy_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.plugboy_npc
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
b [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]