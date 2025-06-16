.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -1
pop.v.i self.exitcollider
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 110
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 105
conv.i.v
pushi.e 166
conv.i.v
pushi.e 258
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nisesusie
pushi.e 173
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 105
conv.i.v
pushi.e 190
conv.i.v
pushi.e 332
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdlynpc
pushi.e 668
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1144
conv.i.v
pushi.e 200
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