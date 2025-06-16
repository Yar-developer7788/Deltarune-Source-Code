.localvar 2 arguments
.localvar 31400 puzzle_b 16288
.localvar 31401 puzzle_c 16289

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -1
pop.v.i self.nisesusie
pushi.e -1
pop.v.i self.exitcollider
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 105
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [13]

:[4]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 105
conv.i.v
pushi.e 320
conv.i.v
pushi.e 98
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hackernpc
pushi.e 1230
push.v self.hackernpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[6]
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [12]

:[7]
pushi.e 1110
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[8]
pushi.e 1110
pushenv [10]

:[9]
pushi.e 120
pop.v.i self.x

:[10]
popenv [9]

:[11]
pushi.e 1110
conv.i.v
pushi.e 280
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.puzzle_b
pushi.e 2620
pushloc.v local.puzzle_b
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local.puzzle_b
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.puzzle_b
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 100000
pushloc.v local.puzzle_b
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1110
conv.i.v
pushi.e 280
conv.i.v
pushi.e 400
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.puzzle_c
pushi.e 2621
pushloc.v local.puzzle_c
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local.puzzle_c
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.puzzle_c
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 100000
pushloc.v local.puzzle_c
pushi.e -9
pop.v.i [stacktop]self.depth

:[12]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[13]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[15]
pushi.e 1144
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leftcollider
pushi.e 2
push.v self.leftcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.leftcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1144
conv.i.v
pushi.e 240
conv.i.v
pushi.e 575
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.exitcollider
pushi.e 2
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.exitcollider
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]