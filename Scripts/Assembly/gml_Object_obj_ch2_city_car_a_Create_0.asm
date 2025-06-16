.localvar 2 arguments
.localvar 107 i 17189
.localvar 220 j 17190
.localvar 15466 xpos 17191
.localvar 14550 ypos 17192
.localvar 35299 readable_cars 17196
.localvar 35300 readable_cars_2 17197

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.release_timer
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [8]

:[2]
pushi.e 0
pop.v.i local.j

:[3]
pushloc.v local.j
pushi.e 3
cmp.i.v LT
bf [7]

:[4]
pushi.e 325
pushi.e 88
pushloc.v local.i
mul.v.i
add.v.i
pop.v.v local.xpos
call.i gml_Script_cameray(argc=0)
pushi.e 30
sub.i.v
pushloc.v local.j
pushi.e 55
mul.i.v
add.v.v
pop.v.v local.ypos
push.i 173881
setowner.e
pushi.e 2376
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.traffic_car
pushloc.v local.j
conv.v.i
popaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
push.i 133655
setowner.e
push.d 0.15
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [3]

:[7]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[8]
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [16]

:[10]
pushi.e 0
pop.v.i local.j

:[11]
pushloc.v local.j
pushi.e 3
cmp.i.v LT
bf [15]

:[12]
pushi.e 325
pushi.e 88
pushloc.v local.i
mul.v.i
add.v.i
pop.v.v local.xpos
call.i gml_Script_cameray(argc=0)
pushi.e 345
add.i.v
pushloc.v local.j
pushi.e 55
mul.i.v
add.v.v
pop.v.v local.ypos
push.i 173881
setowner.e
pushi.e 2376
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.traffic_car
pushloc.v local.j
conv.v.i
popaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[14]
popenv [13]
push.i 133655
setowner.e
push.d 0.15
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [11]

:[15]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[16]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [18]

:[17]
pushglb.v global.plot
pushi.e 80
cmp.i.v GTE
b [19]

:[18]
push.e 1

:[19]
bf [33]

:[20]
pushglb.v global.plot
pushi.e 90
cmp.i.v LT
bf [32]

:[21]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231459
setowner.e
push.s "queen_car_radio.ogg"@20922
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 105
conv.i.v
pushi.e 208
conv.i.v
pushi.e 2075
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.carnpc
pushi.e 2984
push.v self.carnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.carnpc
pushi.e -9
pushenv [23]

:[22]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 0
pop.v.i local.i

:[24]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [31]

:[25]
pushi.e 0
pop.v.i local.j

:[26]
pushloc.v local.j
pushi.e 6
cmp.i.v LT
bf [30]

:[27]
pushi.e 1685
pushi.e 85
pushloc.v local.i
mul.v.i
add.v.i
pop.v.v local.xpos
pushi.e 65
pushloc.v local.j
pushi.e 55
mul.i.v
add.v.i
pop.v.v local.ypos
push.i 173881
setowner.e
pushi.e 2373
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.traffic_car
pushloc.v local.j
conv.v.i
popaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [29]

:[28]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.15
pop.v.d self.image_speed

:[29]
popenv [28]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [26]

:[30]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [24]

:[31]
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
pushi.e 133
conv.i.v
pushi.e 140
conv.i.v
pushi.e 2000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.readable_cars
pushi.e 10
pushloc.v local.readable_cars
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 133
conv.i.v
pushi.e 140
conv.i.v
pushi.e 2300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.readable_cars_2
pushi.e 10
pushloc.v local.readable_cars_2
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[32]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[33]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[35]
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 120
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 303
conv.i.v
pushi.e 97
conv.i.v
pushi.e -200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queencar
push.v self.queencar
pushi.e -9
pushenv [37]

:[36]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[37]
popenv [36]
pushi.e 0
pop.v.b self.break_pie
pushi.e 0
pop.v.i self.break_pie_timer
pushi.e -1
pop.v.i self.piebreak
pushi.e 0
pop.v.b self.release_car
pushi.e 0
pop.v.b self.release_banana
pushi.e 0
pop.v.b self.release_banana_b
pushi.e -1
pop.v.i self.banana
pushi.e -1
pop.v.i self.banana_b
pushi.e 0
pop.v.i self.banana_timer
pushi.e 1
pop.v.b self.loop_road
pushi.e 0
pop.v.b self.shift_road
pushi.e 0
pop.v.b self.car_crash_active
pushi.e 0
pop.v.i self.car_crash_timer
pushi.e -1
pop.v.i self.car_crash_controller
pushi.e 0
pop.v.i self.car_crash_count
pushi.e 0
pop.v.i self.car_convo
pushi.e 0
pop.v.i self.talk_timer
pushi.e 0
pop.v.b self.realign
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
push.s "TILES_City_Road_Loop_1"@35315
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_1_lay_id
push.v self.tile_1_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_1_map_id
push.s "TILES_City_Road_Loop_2"@35318
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_2_lay_id
push.v self.tile_2_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_2_map_id
push.s "TILES_City_Road_Loop_3"@35321
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.tile_3_lay_id
push.v self.tile_3_lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v self.tile_3_map_id
pushi.e 105
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.carnpc
pushi.e 2984
push.v self.carnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.carnpc
pushi.e -9
pushenv [39]

:[38]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[39]
popenv [38]
pushi.e 0
pop.v.b self.leftside_traffic
pushi.e 0
pop.v.i self.leftside_traffic_timer

:[end]