.localvar 2 arguments
.localvar 32035 collider_right 16456

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
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [18]

:[3]
pushi.e 0
conv.b.v
push.s "TILES_Mansion_Hide_1"@32007
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.b.v
push.s "TILES_Mansion_Hide_2"@32008
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.i 231459
setowner.e
push.s "acid_tunnel.ogg"@20902
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

:[5]
pushi.e 144
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v
pushi.e -100
pop.v.i 82.x
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[7]
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e -100
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 124
conv.i.v
pushi.e 140
conv.i.v
pushi.e -200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swanboat
push.v self.swanboat
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_auto_talk
pushi.e 0
pop.v.i self.actor_shadow
pushi.e 1
pop.v.b self.inside_tunnel
pushi.e 2383
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
pushi.e -200
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.swan_shadow
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.swan_shadow
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.d 0.5
push.v self.swan_shadow
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 1
pop.v.b self.adjust_actors
pushi.e 0
pop.v.b self.remove_shadow
pushi.e 2878
conv.i.v
pushi.e 60
conv.i.v
pushi.e 1794
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.camera
push.v self.camera
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 0
pop.v.i self.ralsei_convo
pushi.e 0
pop.v.i self.ralsei_talk_timer
pushi.e 0
pop.v.i self.choice_text_timer
pushi.e 0
pop.v.b self.loopacid
pushi.e 0
pop.v.b self.shiftacid
pushi.e 0
pop.v.b self.shift_islands
pushi.e 0
pop.v.i self.shift_islands_timer
pushi.e 0
pop.v.i self.arrive_timer
pushi.e 0
pop.v.b self.remove_island_obj
pushi.e 0
pop.v.b self.set_flags_complete
pushi.e 0
pop.v.b self.rouxls_island
pushi.e 0
pop.v.b self.release_rouxls
pushi.e -1
pop.v.i self.rouxls_appear
pushi.e 0
pop.v.i self.rouxls_appear_timer
pushi.e 0
pop.v.b self.rouxls_power_up
pushi.e 0
pop.v.b self.rouxls_power_up_cancel
pushi.e 0
pop.v.i self.rouxls_talk_timer
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 700000
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [14]

:[12]
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 222
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
pop.v.b self.duckmode
pushi.e 0
pop.v.b self.take_photo
pushi.e 0
pop.v.i self.photocon
pushi.e 0
pop.v.i self.leave_timer
pushi.e 0
pop.v.b self.remove_collider
pushi.e 0
pop.v.b self.explosion
pushi.e 0
pop.v.i self.explodetimer
pushi.e 0
pop.v.b self.finish_thrash
pushi.e 760
pop.v.i self.simtown_xpos
pushi.e 0
pop.v.i self.swan_swap
pushi.e 0
pop.v.i self.swan_depth
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
push.v self.simtown_xpos
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile1
pushi.e 8
push.v self.tile1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 120
add.i.v
push.v self.simtown_xpos
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile2
pushi.e 8
push.v self.tile2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
push.v self.simtown_xpos
pushi.e 240
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile3
pushi.e 3
push.v self.tile3
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
add.i.v
push.v self.simtown_xpos
pushi.e 280
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile4
pushi.e 3
push.v self.tile4
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
push.v self.simtown_xpos
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile5
pushi.e 8
push.v self.tile5
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
push.v self.simtown_xpos
pushi.e 160
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile6
pushi.e 8
push.v self.tile6
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 754
conv.i.v
pushi.e 0
conv.i.v
push.v self.simtown_xpos
call.i gml_Script_instance_create(argc=3)
pop.v.v self.simcity
b [end]

:[18]
pushi.e 0
pop.v.i self.rouxls_talk_timer
pushi.e 110
conv.i.v
pushi.e 190
conv.i.v
pushi.e 2525
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swanboat
pushi.e 2381
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.15
push.v self.swanboat
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.swanboat
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 4
cmp.i.v NEQ
b [23]

:[22]
push.e 0

:[23]
bf [27]

:[24]
pushi.e 109
conv.i.v
pushi.e 122
conv.i.v
pushi.e 3060
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc
push.v self.npc
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.green
pop.v.v self.current_pal

:[26]
popenv [25]

:[27]
pushi.e 68
conv.i.v
pushi.e 198
conv.i.v
pushi.e 2670
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.collider_right
pushi.e 10
pushloc.v local.collider_right
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]