.localvar 2 arguments
.localvar 21335 dark_y_pos 9419
.localvar 21336 dark_star_y_pos 9420
.localvar 21337 dark_star_x_pos 9421

:[0]
call.i gml_Script_cameray(argc=0)
push.d 0.92
mul.d.v
pushi.e 680
add.i.v
pop.v.v self.bg_y_pos
call.i gml_Script_camerax(argc=0)
push.d 0.95
mul.d.v
pop.v.v self.bg_x_pos
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [4]

:[1]
push.v self.sprite_init
conv.v.b
not.b
bf [3]

:[2]
pushi.e 1
pop.v.b self.sprite_init
pushi.e 3140
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.ground_height
pushi.e 3152
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.sky_height
pushi.e 3150
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.starry_sky_height
pushi.e 3157
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.stars_height

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos
push.v self.ground_height
add.v.v
push.v self.bg_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.bg_y_pos
push.v self.bg_x_pos
push.v self.bg_y_pos
push.v self.bg_x_pos
pushi.e 0
conv.i.v
pushi.e 3136
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.sky_blue
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos
pushi.e 100
sub.i.v
push.v self.sky_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.bg_y_pos
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
push.v self.bg_y_pos
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3152
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
call.i gml_Script_cameray(argc=0)
push.d 0.6
mul.d.v
pushi.e 500
add.i.v
pop.v.v local.dark_y_pos
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushloc.v local.dark_y_pos
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.bg_y_pos
pushbltn.v builtin.room_width
pushloc.v local.dark_y_pos
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.sky_blue_dark
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_y_pos
push.v self.sky_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_y_pos
pushi.e 0
conv.i.v
pushloc.v local.dark_y_pos
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3152
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
call.i gml_Script_cameray(argc=0)
push.d 0.5
mul.d.v
pushi.e 10
add.i.v
pop.v.v local.dark_star_y_pos
call.i gml_Script_camerax(argc=0)
push.d 0.75
mul.d.v
pop.v.v local.dark_star_x_pos
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
pop.v.v self.staralpha
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
pop.v.v self.staralpha2
push.d 0.7
push.v self.staralpha2
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_star_y_pos
push.v self.starry_sky_height
push.d 3.5
mul.d.v
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
pushi.e 0
conv.i.v
pushi.e 3153
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.d 0.7
push.v self.staralpha
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_star_y_pos
push.v self.stars_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
pushi.e 20
add.i.v
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
call.i gml_Script_camerax(argc=0)
push.d 0.025
mul.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 3158
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
b [end]

:[4]
push.v self.sprite_init
conv.v.b
not.b
bf [6]

:[5]
pushi.e 1
pop.v.b self.sprite_init
pushi.e 3140
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.ground_height
pushi.e 3152
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.sky_height
pushi.e 3150
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.starry_sky_height
pushi.e 3157
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.stars_height

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos
push.v self.ground_height
add.v.v
push.v self.bg_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.bg_y_pos
push.v self.bg_x_pos
push.v self.bg_y_pos
push.v self.bg_x_pos
pushi.e 0
conv.i.v
pushi.e 3136
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.sky_blue
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos
pushi.e 100
sub.i.v
push.v self.sky_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
push.v self.bg_y_pos
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
push.v self.bg_y_pos
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3152
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
call.i gml_Script_cameray(argc=0)
push.d 0.6
mul.d.v
pushi.e 500
add.i.v
pop.v.v local.dark_y_pos
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushloc.v local.dark_y_pos
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.bg_y_pos
pushbltn.v builtin.room_width
pushloc.v local.dark_y_pos
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.sky_blue_dark
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_y_pos
push.v self.sky_height
add.v.v
pushi.e 1
sub.i.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_y_pos
pushi.e 0
conv.i.v
pushloc.v local.dark_y_pos
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3152
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
call.i gml_Script_cameray(argc=0)
push.d 0.5
mul.d.v
pushi.e 10
add.i.v
pop.v.v local.dark_star_y_pos
call.i gml_Script_camerax(argc=0)
push.d 0.75
mul.d.v
pop.v.v local.dark_star_x_pos
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
pop.v.v self.staralpha
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
pop.v.v self.staralpha2
push.d 0.7
push.v self.staralpha2
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_star_y_pos
push.v self.starry_sky_height
push.d 3.5
mul.d.v
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
pushi.e 0
conv.i.v
pushi.e 3153
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.d 0.7
push.v self.staralpha
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_star_y_pos
push.v self.stars_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
pushi.e 20
add.i.v
pushloc.v local.dark_star_y_pos
pushloc.v local.dark_star_x_pos
call.i gml_Script_camerax(argc=0)
push.d 0.025
mul.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 3158
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[end]