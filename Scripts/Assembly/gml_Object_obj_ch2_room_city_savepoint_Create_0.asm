.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushglb.v global.plot
pushi.e 75
cmp.i.v LT
bf [2]

:[1]
pushi.e 75
pop.v.i global.plot

:[2]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [10]

:[3]
pushi.e 0
pop.v.i self.capntalked
pushi.e 110
conv.i.v
pushi.e 100
conv.i.v
pushi.e 210
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sweetnpc
pushi.e 1262
push.v self.sweetnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.sweetnpc
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 110
conv.i.v
pushi.e 133
conv.i.v
pushi.e 282
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capnnpc
pushi.e 1259
push.v self.capnnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.capnnpc
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 110
conv.i.v
pushi.e 83
conv.i.v
pushi.e 355
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kknpc
pushi.e 1260
push.v self.kknpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.kknpc
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[9]
popenv [8]
b [end]

:[10]
pushi.e 103
conv.i.v
pushi.e 144
conv.i.v
pushi.e 288
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.plugboy_npc
pushi.e 1251
push.v self.plugboy_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.plugboy_npc
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]

:[end]