.localvar 2 arguments

:[0]
push.v self.init
conv.v.b
not.b
bf [8]

:[1]
pushi.e 1
pop.v.b self.init
push.v self.width
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
push.v self.sprite_index
call.i sprite_get_width(argc=1)
push.v self.x_scale
mul.v.v
b [4]

:[3]
push.v self.width

:[4]
pop.v.v self.width
push.v self.height
pushi.e -1
cmp.i.v EQ
bf [6]

:[5]
push.v self.sprite_index
call.i sprite_get_height(argc=1)
push.v self.y_scale
mul.v.v
b [7]

:[6]
push.v self.height

:[7]
pop.v.v self.height

:[8]
push.v self.x_pos
push.v self.x_speed
add.v.v
pop.v.v self.x_pos
push.v self.room_wide
conv.v.b
bf [14]

:[9]
push.v self.x_pos
push.v self.width
add.v.v
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.x_pos
push.v self.width
add.v.v
pop.v.v self.x_pos

:[11]
push.v self.x_pos
push.v self.width
sub.v.v
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.x_pos
push.v self.width
sub.v.v
pop.v.v self.x_pos

:[13]
b [18]

:[14]
push.v self.x_pos
push.v self.width
add.v.v
call.i gml_Script_camerax(argc=0)
cmp.v.v LT
bf [16]

:[15]
push.v self.x_pos
push.v self.width
add.v.v
pop.v.v self.x_pos

:[16]
push.v self.x_pos
push.v self.width
sub.v.v
call.i gml_Script_camerax(argc=0)
cmp.v.v GT
bf [18]

:[17]
push.v self.x_pos
push.v self.width
sub.v.v
pop.v.v self.x_pos

:[18]
push.v self.y_speed
pushi.e 0
cmp.i.v NEQ
bf [23]

:[19]
push.v self.y_pos
push.v self.y_speed
add.v.v
pop.v.v self.y_pos
push.v self.y_pos
push.v self.height
add.v.v
call.i gml_Script_cameray(argc=0)
cmp.v.v LT
bf [21]

:[20]
push.v self.y_pos
push.v self.height
add.v.v
pop.v.v self.y_pos

:[21]
push.v self.y_pos
push.v self.height
sub.v.v
call.i gml_Script_cameray(argc=0)
cmp.v.v GT
bf [23]

:[22]
push.v self.y_pos
push.v self.height
sub.v.v
pop.v.v self.y_pos

:[23]
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.width
add.v.v
push.v self.y_pos
push.v self.x_pos
push.v self.y_pos
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.y_pos
push.v self.x_pos
push.v self.y_pos
push.v self.x_pos
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.width
add.v.v
push.v self.y_pos
push.v self.x_pos
push.v self.width
add.v.v
push.v self.y_pos
push.v self.x_pos
push.v self.width
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.loop_vertical
conv.v.b
bf [end]

:[24]
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.x_pos
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.x_pos
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
add.v.v
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
add.v.v
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
sub.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.alpha
push.v self.color
push.v self.y_scale
push.v self.x_scale
push.v self.y_pos
push.v self.height
add.v.v
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.y_pos
push.v self.height
add.v.v
push.v self.x_pos
push.v self.width
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[end]