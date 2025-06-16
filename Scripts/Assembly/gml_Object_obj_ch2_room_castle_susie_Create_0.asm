.localvar 2 arguments
.localvar 31817 susie_statue 17318
.localvar 35815 susie_plush 17319

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -4
pop.v.i self.cutscene_master
pushi.e 0
pop.v.i self.leaveCounter
pushi.e -5
pushi.e 393
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 105
conv.i.v
pushi.e 224
conv.i.v
pushi.e 416
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.susie_statue
pushi.e 2907
pushloc.v local.susie_statue
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.susie_statue
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 97000
pushloc.v local.susie_statue
pushi.e -9
pop.v.i [stacktop]self.depth

:[2]
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [6]

:[3]
pushi.e 105
conv.i.v
pushi.e 143
conv.i.v
pushi.e 317
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.susie_plush
pushi.e 2908
pushloc.v local.susie_plush
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.susie_plush
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]

:[6]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [8]

:[7]
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[11]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[13]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 80
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v

:[end]