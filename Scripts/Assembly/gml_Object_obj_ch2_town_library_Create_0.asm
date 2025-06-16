.localvar 2 arguments
.localvar 36060 lab_collider 17447
.localvar 36061 lab_interact 17448
.localvar 36062 upstairs_collider 17449

:[0]
pushi.e 68
conv.i.v
pushi.e 50
conv.i.v
pushi.e 115
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.lab_collider
push.d 4.25
pushloc.v local.lab_collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 133
conv.i.v
pushi.e 52
conv.i.v
pushi.e 144
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.lab_interact
push.d 1.6
pushloc.v local.lab_interact
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 68
conv.i.v
pushi.e 60
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.upstairs_collider
pushi.e 4
pushloc.v local.upstairs_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[2]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 135
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[4]
pushi.e 135
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]

:[7]
pushi.e 103
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[8]
pushi.e 103
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[11]
pushglb.v global.plot
pushi.e 205
cmp.i.v GTE
bf [13]

:[12]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
not.b
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[end]