.localvar 2 arguments
.localvar 107 i 8066

:[0]
push.v self.is_active
conv.v.b
bf [end]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.layer_y_pos
push.v self.cityscape_height
add.v.v
push.v self.layer_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.layer_y_pos
push.v self.layer_x_pos
push.v self.layer_y_pos
push.v self.layer_x_pos
pushi.e 0
conv.i.v
pushi.e 3137
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.dark_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.cityscape_height
add.v.v
push.v self.layer_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.layer_x_pos
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.layer_x_pos
pushi.e 0
conv.i.v
pushi.e 3137
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.5
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.lights_height
add.v.v
push.v self.layer_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.layer_x_pos
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.layer_x_pos
pushi.e 0
conv.i.v
pushi.e 3138
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.layer_y_pos
push.v self.ground_height
add.v.v
push.v self.layer_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.layer_y_pos
push.v self.layer_x_pos
push.v self.layer_y_pos
push.v self.layer_x_pos
pushi.e 0
conv.i.v
pushi.e 3140
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.dark_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.ground_height
add.v.v
push.v self.layer_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.layer_x_pos
push.v self.layer_y_pos
pushi.e 8
add.i.v
push.v self.layer_x_pos
pushi.e 0
conv.i.v
pushi.e 3140
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.layer_y_pos
pushi.e 500
add.i.v
pushbltn.v builtin.room_height
add.v.v
pushi.e 2
add.i.v
push.v self.layer_x_pos
pushbltn.v builtin.room_width
add.v.v
pushi.e 100
add.i.v
push.v self.layer_y_pos
pushi.e 440
add.i.v
push.v self.layer_x_pos
call.i draw_rectangle(argc=5)
popz.v
push.d 0.3
conv.d.v
push.i 8388608
conv.i.v
push.i 4210752
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 360
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.d 0.3
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 340
add.i.v
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]