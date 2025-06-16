.localvar 2 arguments
.localvar 31996 ra_x 16417
.localvar 31997 ra_y 16418
.localvar 31998 swanboat_x 16419
.localvar 31973 swan_interact 16422

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 144
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [22]

:[5]
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
bf [15]

:[6]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e -100
pop.v.i 82.x
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
bf [8]

:[7]
push.v 82.x
pushi.e 40
sub.i.v
b [9]

:[8]
push.v 82.x

:[9]
pop.v.v local.ra_x
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
bf [11]

:[10]
push.v 82.y
b [12]

:[11]
push.v 82.y
pushi.e 40
sub.i.v

:[12]
pop.v.v local.ra_y
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushloc.v local.ra_y
pushloc.v local.ra_x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [14]

:[13]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[14]
popenv [13]

:[15]
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
bf [17]

:[16]
pushi.e -200
conv.i.v
b [18]

:[17]
pushi.e 140
conv.i.v

:[18]
pop.v.v local.swanboat_x
pushi.e 124
conv.i.v
pushi.e 240
conv.i.v
pushloc.v local.swanboat_x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swanboat
push.v self.swanboat
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[20]
popenv [19]
pushglb.v global.plot
pushi.e 140
cmp.i.v LT
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.con
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_auto_talk
pushi.e 105
conv.i.v
pushi.e 185
conv.i.v
pushi.e 285
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queenhand
pushi.e 2893
push.v self.queenhand
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.queenhand
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.queenhand
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.queenhand
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
push.v self.queenhand
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.b self.remove_collider
pushglb.v global.plot
pushi.e 140
cmp.i.v GTE
bf [22]

:[21]
pushi.e 1144
conv.i.v
pushi.e 320
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bottom_collider
pushi.e 0
push.v self.bottom_collider
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 6
push.v self.bottom_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 105
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
add.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swan_interact
pushi.e 0
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 4
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[22]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
pushi.e 124
conv.i.v
pushi.e 240
conv.i.v
pushi.e 235
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swanboat
push.v self.swanboat
pushi.e -9
pushenv [25]

:[24]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_auto_talk
pushi.e 105
conv.i.v
pushi.e 320
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swan_interact
pushi.e 0
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 6
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
pop.v.b self.remove_collider
pushi.e 1144
conv.i.v
pushi.e 320
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left_collider
pushi.e 0
push.v self.left_collider
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2
push.v self.left_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1144
conv.i.v
pushi.e 320
conv.i.v
pushi.e 360
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right_collider
pushi.e 0
push.v self.right_collider
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2
push.v self.right_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[end]