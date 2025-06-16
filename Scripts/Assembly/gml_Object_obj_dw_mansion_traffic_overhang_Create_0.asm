.localvar 2 arguments
.localvar 24476 barrier 19672

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 337
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.barrier
pushi.e 2
pushloc.v local.barrier
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.barrier
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.depth
pushi.e 100
add.i.v
pushloc.v local.barrier
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]