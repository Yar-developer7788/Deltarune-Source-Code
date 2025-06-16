.localvar 2 arguments
.localvar 15600 computer 16241

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.inactivetimer
pushi.e 0
pop.v.i self.lancertimer
pushi.e 0
pop.v.i self.reminder
pushi.e 0
pop.v.i self.lancercon
pushi.e 0
pop.v.b self.lancertalking
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.i self.talkinterval
pushi.e 0
pop.v.i self.talkstart
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
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
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[9]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 1144
conv.i.v
pushi.e 168
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cage_collider
pushi.e 2
push.v self.cage_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 3.5
push.v self.cage_collider
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 171
conv.i.v
pushi.e 168
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cagetop
pushi.e 0
push.v self.cagetop
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.i 96830
push.v self.cagetop
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 105
conv.i.v
pushi.e 150
conv.i.v
pushi.e 437
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.talktube
pushi.e 2851
push.v self.talktube
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.talktube
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.talktube
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2880
conv.i.v
pushi.e 24
conv.i.v
pushi.e 142
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queen_monitor_frame
push.v self.queen_monitor_frame
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
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
pushi.e 103
conv.i.v
pushi.e 24
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.computer
pushi.e 2847
pushloc.v local.computer
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.queen_monitor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
pushloc.v local.computer
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.b self.lancer_typing_start
pushi.e 0
pop.v.b self.lancer_typing_stop
pushi.e 0
pop.v.b self.monitor_on
pushi.e 0
pop.v.b self.overload
pushi.e 0
pop.v.b self.open_capsule
pushi.e 1144
conv.i.v
push.v self.cagetop
pushi.e -9
push.v [stacktop]self.y
pushi.e 171
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
sub.i.v
push.v self.cagetop
pushi.e -9
push.v [stacktop]self.x
pushi.e 12
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cage_collider_bottom
push.d 0.1
push.v self.cage_collider_bottom
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 1.4
push.v self.cage_collider_bottom
pushi.e -9
pop.v.d [stacktop]self.image_xscale

:[end]