.localvar 2 arguments
.localvar 18084 chefl 7408
.localvar 18085 chefl_interact 7409
.localvar 18078 topchef 7410

:[0]
pushi.e 86
conv.i.v
pushi.e 115
conv.i.v
pushi.e 352
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 133
conv.i.v
pushi.e 205
conv.i.v
pushi.e 370
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hammer_interact
pushi.e 3
push.v self.hammer_interact
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hammer_interact
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 103
conv.i.v
pushi.e 155
conv.i.v
pushi.e 355
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.chefl
pushi.e 1300
pushloc.v local.chefl
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
pushloc.v local.chefl
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 133
conv.i.v
pushi.e 205
conv.i.v
pushi.e 285
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.chefl_interact
pushi.e 3
pushloc.v local.chefl_interact
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.chefl_interact
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 103
conv.i.v
pushi.e 240
conv.i.v
pushi.e 215
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.topchef
pushi.e 1214
pushloc.v local.topchef
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]