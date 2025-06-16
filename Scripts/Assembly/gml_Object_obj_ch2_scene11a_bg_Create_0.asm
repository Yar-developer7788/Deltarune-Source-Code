.localvar 2 arguments
.localvar 107 i 16185

:[0]
pushi.e 209
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cityscape_bg_0
pushi.e 3154
push.v self.cityscape_bg_0
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3144
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 3
mul.i.v
push.v self.cityscape_bg_0
pushi.e -9
pop.v.v [stacktop]self.width
pushi.e 3144
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 1
sub.i.v
push.v self.cityscape_bg_0
pushi.e -9
pop.v.v [stacktop]self.height
pushi.e 1
push.v self.cityscape_bg_0
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 1000500
push.v self.cityscape_bg_0
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.cityscape_bg_0
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.cityscape_bg_0
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 209
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cityscape_bg_1
pushi.e 3145
push.v self.cityscape_bg_1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3145
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 3
mul.i.v
push.v self.cityscape_bg_1
pushi.e -9
pop.v.v [stacktop]self.width
pushi.e 3145
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 1
sub.i.v
push.v self.cityscape_bg_1
pushi.e -9
pop.v.v [stacktop]self.height
pushi.e 1
push.v self.cityscape_bg_1
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 1000400
push.v self.cityscape_bg_1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.cityscape_bg_1
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.cityscape_bg_1
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 209
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.cityscape_bg_2
pushi.e 3146
push.v self.cityscape_bg_2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3146
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 3
mul.i.v
push.v self.cityscape_bg_2
pushi.e -9
pop.v.v [stacktop]self.width
pushi.e 3146
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 1
sub.i.v
push.v self.cityscape_bg_2
pushi.e -9
pop.v.v [stacktop]self.height
pushi.e 1
push.v self.cityscape_bg_2
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 1000300
push.v self.cityscape_bg_2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.cityscape_bg_2
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.cityscape_bg_2
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 209
conv.i.v
pushi.e 64
conv.i.v
pushi.e 815
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.coaster_bg_1
pushi.e 3180
push.v self.coaster_bg_1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3180
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 3
mul.i.v
push.v self.coaster_bg_1
pushi.e -9
pop.v.v [stacktop]self.width
pushi.e 3180
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 1
sub.i.v
push.v self.coaster_bg_1
pushi.e -9
pop.v.v [stacktop]self.height
pushi.e 1
push.v self.coaster_bg_1
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 1000200
push.v self.coaster_bg_1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.coaster_bg_1
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.coaster_bg_1
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.i 173219
setowner.e
pushi.e 209
conv.i.v
pushi.e 130
pushloc.v local.i
pushi.e 60
mul.i.v
add.v.i
pushi.e 815
conv.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.coaster_track
push.i 133642
setowner.e
pushi.e 3141
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 231640
setowner.e
pushi.e 3141
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 7
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.v [stacktop]self.width
push.i 232522
setowner.e
pushi.e 3141
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 1
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.v [stacktop]self.height
push.i 234195
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 133637
setowner.e
push.i 1000100
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 234189
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.x_scale
push.i 234190
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.y_scale
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[3]
pushi.e 1
pop.v.b self.parallax
pushi.e 0
pop.v.b self.looping
pushi.e 3143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 815
conv.i.v
call.i gml_Script_scr_marker_animated(argc=3)
pop.v.v self.fountain
push.v self.fountain
pushi.e -9
pushenv [5]

:[4]
push.i 1000450
pop.v.i self.depth
push.d 0.125
pop.v.d self.image_speed

:[5]
popenv [4]
pushi.e 0
pop.v.b self.fountain_active

:[end]