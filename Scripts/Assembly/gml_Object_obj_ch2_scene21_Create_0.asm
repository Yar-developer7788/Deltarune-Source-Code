.localvar 2 arguments
.localvar 107 i 16396
.localvar 19941 frame 16397

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 2880
conv.i.v
pushi.e 50
conv.i.v
pushi.e 148
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queen_monitor_frame
push.v self.queen_monitor_frame
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 288
conv.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.x
pushi.e 175
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_monitor
push.v self.queen_monitor_frame
pushi.e 100
add.i.v
push.v self.queen_monitor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 105
conv.i.v
pushi.e 290
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lever
pushi.e 2891
push.v self.lever
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.lever_timer
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [7]

:[4]
pushi.e 2880
conv.i.v
pushi.e 50
conv.i.v
push.v self.queen_monitor
pushi.e -9
push.v [stacktop]self.x
pushi.e 500
add.i.v
pushi.e 700
pushloc.v local.i
mul.v.i
add.v.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.frame
pushloc.v local.frame
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
push.i 173344
setowner.e
pushi.e 288
conv.i.v
pushloc.v local.frame
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
pushloc.v local.frame
pushi.e -9
push.v [stacktop]self.x
pushi.e 175
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.monitor
push.i 133637
setowner.e
pushloc.v local.frame
pushi.e 100
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.monitor
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[7]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [9]

:[8]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
pushi.e 0
pop.v.b self.release_swan
pushi.e 0
pop.v.i self.swanboat_init_y
pushi.e 124
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 300
add.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swanboat
push.v self.swanboat
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 0
pop.v.i self.ralsei_convo
pushi.e 0
pop.v.i self.ralsei_talk_timer
pushi.e 0
pop.v.i self.choice_text_timer
pushi.e 1
pop.v.b self.swanboat_talk
pushi.e 0
pop.v.b self.queen_heckle
pushi.e 0
pop.v.i self.queen_heckle_con
pushi.e 0
pop.v.i self.queen_heckle_index
pushi.e 0
pop.v.i self.queen_heckle_timer
pushi.e 0
pop.v.b self.queen_heckle_start
pushi.e 948
conv.i.v
pushi.e 250
conv.i.v
pushi.e 2580
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.banana
pushi.e 2
push.v self.banana
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.banana
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.banana
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.banana
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 0
pop.v.b self.got_banana
pushi.e 0
pop.v.b self.remove_collider
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

:[end]