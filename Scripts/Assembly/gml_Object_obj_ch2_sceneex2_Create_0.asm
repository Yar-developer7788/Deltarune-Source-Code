.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.drawblack
pushi.e 1
pop.v.i self.drawtrack
pushi.e 0
pop.v.i self.trackx
pushi.e 180
pop.v.i self.tracky0
pushi.e 240
pop.v.i self.tracky1
pushi.e 300
pop.v.i self.tracky2
pushi.e 0
pop.v.i self.fightmode
pushi.e 0
pop.v.i self.trackspeed
pushi.e 0
pop.v.i self.trackaccel
pushi.e 0
pop.v.i self.trackspeedmax
pushi.e 0
pop.v.i self.cityscapefade
pushi.e 0
pop.v.b self.cityscape_active
pushi.e 0
pop.v.i self.cityscape_speed
pushi.e 0
pop.v.i self.cityscape_alpha
pushi.e 0
pop.v.i self.init
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.sneo_x_save
pushi.e 0
pop.v.i self.sneo_y_save
pushi.e 0
pop.v.b self.shortened
pushi.e 0
pop.v.b self.special_scene
pushi.e 0
pop.v.b self.rudebuster
pushi.e 0
pop.v.b self.sneo_fly
pushi.e 0
pop.v.b self.sneo_release
pushi.e 0
pop.v.i self.forcend
pushi.e 0
pop.v.i self.shop_spamton_bg_con
pushi.e 0
pop.v.i self.shop_spamton_bg_timer
pushi.e 5
pop.v.i self.cityscape_speed_max
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 8
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
b [end]

:[5]
pushi.e -5
pushi.e 32
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.b self.shortened

:[7]
push.v self.shortened
conv.v.b
bf [9]

:[8]
push.v self.x
pushi.e 100
add.i.v
b [10]

:[9]
push.v self.x

:[10]
pop.v.v self.start_xpos
pushi.e 1
pop.v.i self.con
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[12]
pushi.e 2057
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_marker_kris
push.v self.coaster_marker_kris
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 2057
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_marker_ra
push.v self.coaster_marker_ra
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 2057
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_marker_su
push.v self.coaster_marker_su
pushi.e -9
pushenv [18]

:[17]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 1121
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_kris
push.i 90000
push.v self.coaster_kris
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.coaster_kris
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1121
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_susie
pushi.e 1
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.type
push.i 80000
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 996
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 0
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1121
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_ralsei
pushi.e 2
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.type
push.i 70000
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1511
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 0
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.b self.loop_tiles
push.s "BG_Loop"@34093
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v self.bg_loop
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
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

:[end]