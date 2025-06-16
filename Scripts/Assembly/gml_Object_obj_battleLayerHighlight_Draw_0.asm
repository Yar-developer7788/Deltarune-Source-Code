.localvar 2 arguments
.localvar 14740 lay_id 6550
.localvar 14742 map_id 6551
.localvar 14747 drawspr 6552

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.surf
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.s "TILES_BATTLEBORDER"@14732
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
pushloc.v local.lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v local.map_id
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.map_id
call.i draw_tilemap(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.surf
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_battleborder
call.i surface_reset_target(argc=0)
popz.v
push.v self.surf
call.i surface_free(argc=1)
popz.v
pushi.e 1
pop.v.i self.state

:[2]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 777777
pop.v.i self.depth
push.v self.myalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.spr_battleborder
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [end]

:[5]
push.v self.state
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.surf
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.s "TILES_BATTLEBORDER"@14732
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
pushloc.v local.lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v local.map_id
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.map_id
call.i draw_tilemap(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.surf
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_border_none
call.i surface_reset_target(argc=0)
popz.v
push.v self.surf
call.i surface_free(argc=1)
popz.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.surf
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.s "TILES_BATTLEBORDER_LEFT"@14744
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
pushloc.v local.lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v local.map_id
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.map_id
call.i draw_tilemap(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.surf
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_border_left
call.i surface_reset_target(argc=0)
popz.v
push.v self.surf
call.i surface_free(argc=1)
popz.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.surf
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.s "TILES_BATTLEBORDER_RIGHT"@14745
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
pushloc.v local.lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v local.map_id
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.map_id
call.i draw_tilemap(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.surf
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_border_right
call.i surface_reset_target(argc=0)
popz.v
push.v self.surf
call.i surface_free(argc=1)
popz.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i surface_create(argc=2)
pop.v.v self.surf
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.s "TILES_BATTLEBORDER_BOTH"@14746
conv.s.v
call.i layer_get_id(argc=1)
pop.v.v local.lay_id
pushloc.v local.lay_id
call.i layer_tilemap_get_id(argc=1)
pop.v.v local.map_id
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.map_id
call.i draw_tilemap(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.surf
call.i sprite_create_from_surface(argc=9)
pop.v.v self.spr_border_both
call.i surface_reset_target(argc=0)
popz.v
push.v self.surf
call.i surface_free(argc=1)
popz.v
pushi.e 11
pop.v.i self.state

:[7]
push.v self.state
pushi.e 11
cmp.i.v EQ
bf [end]

:[8]
push.v self.spr_border_none
pop.v.v local.drawspr
push.s "TILES_SIDE_A"@14748
conv.s.v
call.i layer_get_visible(argc=1)
pop.v.v self.leftvis
push.s "TILES_SIDE_B"@14750
conv.s.v
call.i layer_get_visible(argc=1)
pop.v.v self.rightvis
push.v self.leftvis
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.rightvis
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.spr_border_left
pop.v.v local.drawspr

:[13]
push.v self.leftvis
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.rightvis
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.spr_border_right
pop.v.v local.drawspr

:[18]
push.v self.leftvis
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.rightvis
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.spr_border_both
pop.v.v local.drawspr

:[23]
push.i 777777
pop.v.i self.depth
push.v self.myalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.drawspr
call.i draw_sprite_ext(argc=9)
popz.v

:[end]