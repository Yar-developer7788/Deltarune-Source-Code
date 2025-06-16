.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v 82.x
pushi.e 1920
cmp.i.v LTE
bf [4]

:[2]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 287
conv.i.v
pushi.e 400
conv.i.v
pushi.e 2280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefield
pushi.e 2
push.v self.forcefield
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.forcefield
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.forcefield
pushi.e -9
pop.v.i [stacktop]self.black_override
pushi.e 1
push.v self.forcefield
pushi.e -9
pop.v.i [stacktop]self.canttalk
pushi.e 1
conv.b.v
push.s "TILES_Edge_Hidden"@37987
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
pop.v.i self.con
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[8]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 82.x
pushi.e 2080
cmp.i.v GTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1290
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1340
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.face
pushi.e 2
pop.v.i self.con

:[13]
push.v self.forcefield
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 0
conv.b.v
push.s "TILES_Edge_Hidden"@37987
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.v self.forcefield
pushi.e -9
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[end]