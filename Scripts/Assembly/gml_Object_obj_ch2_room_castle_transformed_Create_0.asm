.localvar 2 arguments
.localvar 36276 book_pillar 17641

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 105
conv.i.v
pushi.e 265
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.book_pillar
pushi.e 3124
pushloc.v local.book_pillar
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.book_pillar
pushi.e -9
pushenv [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [4]

:[3]
pushi.e -5
pushi.e 443
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.con
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]