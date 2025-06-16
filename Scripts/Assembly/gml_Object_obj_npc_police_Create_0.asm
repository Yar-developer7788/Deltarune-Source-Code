.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 105
conv.i.v
pushi.e 56
conv.i.v
pushi.e 186
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dogd
pushi.e 1131
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 400000100
push.v self.dogd
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 105
conv.i.v
pushi.e 59
conv.i.v
pushi.e 233
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doge
pushi.e 1133
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.setdepth
push.i 400000100
push.v self.doge
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1129
conv.i.v
pushi.e 40
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.doga
pushi.e 0
push.v self.doga
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.doga
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.doga
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.doga
pushi.e -9
pop.v.i [stacktop]self.depthcancel
push.v self.dogd
pushi.e -9
push.v [stacktop]self.depth
pushi.e 20
add.i.v
push.v self.doga
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1132
conv.i.v
pushi.e 40
conv.i.v
pushi.e 202
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogb
pushi.e 0
push.v self.dogb
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.dogb
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.dogb
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.dogd
pushi.e -9
push.v [stacktop]self.depth
pushi.e 20
add.i.v
push.v self.dogb
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.dogb
pushi.e -9
pop.v.i [stacktop]self.depthcancel
pushi.e 1130
conv.i.v
pushi.e 40
conv.i.v
pushi.e 211
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogc
pushi.e 0
push.v self.dogc
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.dogc
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.dogc
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.dogc
pushi.e -9
pop.v.i [stacktop]self.depthcancel
push.v self.dogd
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.dogc
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.b self.repeatalarm
pushi.e 0
pop.v.i self.pausetimer
pushi.e 105
conv.i.v
pushi.e 143
conv.i.v
pushi.e 154
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.undyneinteract
pushi.e 0
push.v self.undyneinteract
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
pushi.e 120
conv.i.v
pushi.e 154
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.undynesideinteract
pushi.e 0
push.v self.undynesideinteract
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1109
conv.i.v
pushi.e 97
conv.i.v
pushi.e 128
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.undynedesk
pushi.e 2969
conv.i.v
pushi.e 97
conv.i.v
pushi.e 128
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.deskchairless
pushi.e 1
push.v self.deskchairless
pushi.e -9
pop.v.i [stacktop]self.depthcancel
push.i 98260
push.v self.deskchairless
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.deskchairless
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 68
conv.i.v
pushi.e 131
conv.i.v
pushi.e 129
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.undynecollider
push.d 3.5
push.v self.undynecollider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.undynecollider
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e -1
pop.v.i self.undyne
pushi.e 2972
conv.i.v
pushi.e 135
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.keys
pushi.e 0
push.v self.keys
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.keys
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.i self.key_turn_timer
pushi.e 2971
conv.i.v
pushi.e 68
conv.i.v
pushi.e 75
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.boombox
pushi.e 3197
conv.i.v
pushi.e 35
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bars
pushi.e 1
push.v self.bars
pushi.e -9
pop.v.i [stacktop]self.depthcancel
pushi.e 500
push.v self.bars
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -1
pop.v.i self.con
pushi.e -1
pop.v.i self.keycon
pushi.e -1
pop.v.i self.kriscon
pushi.e 108
conv.i.v
pushi.e 84
conv.i.v
pushi.e 92
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.napstablook
pushi.e 0
pop.v.b self.soundalarm
pushi.e 0
pop.v.i self.napstacon
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.undyne_slam
pushi.e 0
pop.v.i self.undyne_slam_timer
pushi.e 1144
conv.i.v
pushi.e 77
conv.i.v
pushi.e 179
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jail_collider
pushi.e 2
push.v self.jail_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.5
push.v self.jail_collider
pushi.e -9
pop.v.d [stacktop]self.image_yscale
b [end]

:[2]
pushi.e -1
pop.v.i self.con
pushi.e -1
pop.v.i self.keys
pushi.e -1
pop.v.i self.keycon
pushi.e -1
pop.v.i self.kriscon
pushi.e 2971
conv.i.v
pushi.e 68
conv.i.v
pushi.e 75
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.boombox
pushi.e 3198
conv.i.v
pushi.e 35
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bars
push.v self.bars
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.auto_depth
pushi.e 0
pop.v.i self.depthcancel
pushi.e 0
pop.v.i self.depth

:[4]
popenv [3]
pushi.e 3199
conv.i.v
pushi.e 35
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bars_bottom
push.v self.bars_bottom
pushi.e -9
pushenv [6]

:[5]
push.i 100000
pop.v.i self.depth

:[6]
popenv [5]
pushi.e 68
conv.i.v
pushi.e 98
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jail_collider_bottom
pushi.e 2
push.v self.jail_collider_bottom
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.35
push.v self.jail_collider_bottom
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 68
conv.i.v
pushi.e 98
conv.i.v
pushi.e 255
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jail_collider_side
pushi.e 1
push.v self.jail_collider_side
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.35
push.v self.jail_collider_side
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 68
conv.i.v
pushi.e 95
conv.i.v
pushi.e 223
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorcollider
push.d 0.35
push.v self.doorcollider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.95
push.v self.doorcollider
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 68
conv.i.v
pushi.e 97
conv.i.v
pushi.e 128
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.undynedesk
pushi.e 2968
push.v self.undynedesk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.undynedesk
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.undynedesk
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 108
conv.i.v
pushi.e 84
conv.i.v
pushi.e 92
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.napstablook
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
pop.v.b self.soundalarm
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
b [11]

:[10]
pushi.e -1
conv.i.v

:[11]
pop.v.v self.napstacon
push.v self.soundalarm
conv.v.b
bf [15]

:[12]
pushi.e 140
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.doorFadeMusic

:[14]
popenv [13]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[15]
pushi.e 0
pop.v.b self.undyne_slam
pushi.e 0
pop.v.i self.undyne_slam_timer

:[end]