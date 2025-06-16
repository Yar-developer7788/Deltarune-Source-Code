.localvar 2 arguments
.localvar 35403 traffic_switch 17239

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -4
pop.v.i self.queen_beam
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
conv.i.v
push.s "BLOCKING_CARS"@35402
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
b [6]

:[5]
pushi.e 0
conv.i.v
push.s "BLOCKING_CARS"@35402
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v

:[6]
pushi.e 105
conv.i.v
pushi.e 250
conv.i.v
pushi.e 3103
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.traffic_switch
pushi.e 2367
pushloc.v local.traffic_switch
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
conv.i.v
b [9]

:[8]
pushi.e 1
conv.i.v

:[9]
pushloc.v local.traffic_switch
pushi.e -9
pop.v.v [stacktop]self.image_index
pushloc.v local.traffic_switch
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
push.s "BG_Cityscape"@35404
conv.s.v
push.i 9005000
conv.i.v
call.i layer_create(argc=2)
pop.v.v self.cityscape
pushi.e 3144
conv.i.v
push.v self.cityscape
call.i layer_background_create(argc=2)
pop.v.v self.layerid
pushi.e 1
conv.b.v
push.v self.layerid
call.i layer_background_htiled(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.layerid
call.i layer_background_vtiled(argc=2)
popz.v
pushi.e 3080
conv.i.v
push.v self.cityscape
call.i layer_x(argc=2)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
push.v self.cityscape
call.i layer_y(argc=2)
popz.v
pushi.e 0
pop.v.i self.cityscape_init_x
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [14]

:[12]
pushglb.v global.plot
pushi.e 85
cmp.i.v LT
bt [14]

:[13]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 3080
pop.v.i self.cityscape_init_x
pushi.e 1
pop.v.b self.cityscape_parallax
b [end]

:[17]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[19]
pushi.e 124
conv.i.v
pushi.e 97
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queencar
push.v self.queencar
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 0
pop.v.b self.release_car
pushi.e 0
pop.v.b self.loop_road
pushi.e 0
pop.v.b self.shift_road
pushi.e 0
pop.v.i self.car_convo
pushi.e 0
pop.v.i self.talk_timer
pushi.e 0
pop.v.b self.realign
pushi.e 0
pop.v.b self.explosion
pushi.e 0
pop.v.i self.explodetimer
pushi.e 68
conv.i.v
pushi.e 120
conv.i.v
pushi.e 2020
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.traffic_collider_left
pushi.e 20
push.v self.traffic_collider_left
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.s "TILES_Right_Sidewalk"@35407
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_1_lay_id
push.v self.tile_1_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_1_map_id
push.s "TILES_Right_Lights"@35408
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_2_lay_id
push.v self.tile_2_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_2_map_id
push.s "TILES_Right_Buildings"@35409
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_3_lay_id
push.v self.tile_3_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_3_map_id
push.s "TILES_Right_BG"@35410
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_4_lay_id
push.v self.tile_4_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_4_map_id
pushi.e 0
pop.v.i self.car_park_timer
pushi.e 951
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_beam
pushi.e 0
push.v self.queen_beam
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.b self.crank_volume
pushi.e 0
pop.v.b self.cityscape_parallax
pushi.e 3094
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3300
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.girder_marker
pushi.e 10000
push.v self.girder_marker
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 3093
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3480
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.girder_marker_2
pushi.e 10000
push.v self.girder_marker_2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1144
conv.i.v
pushi.e 280
conv.i.v
pushi.e 3080
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.island_collider
pushi.e 6
push.v self.island_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[end]