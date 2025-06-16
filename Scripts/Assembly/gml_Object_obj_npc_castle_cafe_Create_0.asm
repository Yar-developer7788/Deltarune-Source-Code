.localvar 2 arguments
.localvar 18071 jukebox 7391
.localvar 18072 table_a 7392
.localvar 18073 table_b 7393
.localvar 18074 table_c 7394
.localvar 18075 table_collider_a 7395
.localvar 18076 table_collider_b 7396
.localvar 18077 table_collider_c 7397
.localvar 15328 counter 7398
.localvar 18078 topchef 7399
.localvar 18079 swatchlingA 7400
.localvar 18080 swatchlingB 7401
.localvar 18081 tm 7402
.localvar 18082 tasqueA 7403

:[0]
pushi.e 3126
conv.i.v
pushi.e 82
conv.i.v
pushi.e 44
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.jukebox
pushloc.v local.jukebox
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 3125
conv.i.v
pushi.e 230
conv.i.v
pushi.e 42
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.table_a
pushloc.v local.table_a
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 3125
conv.i.v
pushi.e 230
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.table_b
pushloc.v local.table_b
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 3125
conv.i.v
pushi.e 325
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.table_c
pushloc.v local.table_c
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1144
conv.i.v
pushloc.v local.table_a
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushloc.v local.table_a
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.table_collider_a
push.d 1.9
pushloc.v local.table_collider_a
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.3
pushloc.v local.table_collider_a
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1144
conv.i.v
pushloc.v local.table_b
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushloc.v local.table_b
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.table_collider_b
push.d 1.9
pushloc.v local.table_collider_b
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.3
pushloc.v local.table_collider_b
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1144
conv.i.v
pushloc.v local.table_c
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushloc.v local.table_c
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.table_collider_c
push.d 1.9
pushloc.v local.table_collider_c
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.3
pushloc.v local.table_collider_c
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 3127
conv.i.v
pushi.e 110
conv.i.v
pushi.e 365
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.counter
push.i 98000
pushloc.v local.counter
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -1
pop.v.i self.tm_con
pushi.e -1
pop.v.i self.t_con
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 103
conv.i.v
pushi.e 70
conv.i.v
pushi.e 395
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.topchef
pushi.e 1214
pushloc.v local.topchef
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[10]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [13]

:[12]
pushi.e 103
conv.i.v
pushi.e 70
conv.i.v
pushi.e 405
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.topchef
pushi.e 1214
pushloc.v local.topchef
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [end]

:[13]
pushi.e 103
conv.i.v
pushi.e 62
conv.i.v
pushi.e 418
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swatchlingA
pushi.e 1275
pushloc.v local.swatchlingA
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.swatchlingA
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]
pushi.e -5
pushi.e 636
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
pushi.e 103
conv.i.v
pushi.e 187
conv.i.v
pushi.e 517
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swatchlingB
pushi.e 1283
pushloc.v local.swatchlingB
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.swatchlingB
pushi.e -9
pushenv [18]

:[17]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[18]
popenv [17]

:[19]
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e -5
pushi.e 632
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 103
conv.i.v
pushi.e 23
conv.i.v
pushi.e 237
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tm
pushi.e 1271
pushloc.v local.tm
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
pushloc.v local.tm
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[24]
pushi.e -5
pushi.e 632
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
pushi.e 103
conv.i.v
pushi.e 63
conv.i.v
pushi.e 255
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tasqueA
pushi.e 1669
pushloc.v local.tasqueA
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]