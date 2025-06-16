.localvar 2 arguments
.localvar 21335 dark_y_pos 9406
.localvar 21336 dark_star_y_pos 9407
.localvar 21337 dark_star_x_pos 9408
.localvar 21338 dark_star_y_pos_2 9409
.localvar 21339 dark_star_x_pos_2 9410
.localvar 107 i 9411
.localvar 21341 ground_x 9413
.localvar 21342 ground_y 9414

:[0]
call.i gml_Script_cameray(argc=0)
push.d 0.92
mul.d.v
pushi.e 680
add.i.v
pop.v.v self.bg_y_pos
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
push.d 0.92
mul.d.v
pushi.e 680
add.i.v
pop.v.v self.bg_y_pos_alt
call.i gml_Script_camerax(argc=0)
push.d 0.95
mul.d.v
pop.v.v self.bg_x_pos
push.v self.sprite_init
conv.v.b
not.b
bf [2]

:[1]
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

:[2]
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
pushi.e 1800
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
push.d 0.75
mul.d.v
pushi.e 250
add.i.v
pop.v.v local.dark_star_y_pos
call.i gml_Script_camerax(argc=0)
push.d 0.75
mul.d.v
pop.v.v local.dark_star_x_pos
pushi.e 1
conv.i.v
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
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_star_y_pos
push.v self.stars_height
pushi.e 3
mul.i.v
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
pushi.e 3157
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
call.i gml_Script_cameray(argc=0)
push.d 0.77
mul.d.v
pushi.e 350
add.i.v
pop.v.v local.dark_star_y_pos_2
call.i gml_Script_camerax(argc=0)
push.d 0.77
mul.d.v
pop.v.v local.dark_star_x_pos_2
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.dark_star_y_pos_2
push.v self.stars_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.dark_star_y_pos_2
pushloc.v local.dark_star_x_pos_2
pushi.e 20
add.i.v
pushloc.v local.dark_star_y_pos_2
pushloc.v local.dark_star_x_pos_2
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 3158
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
call.i gml_Script_camerax(argc=0)
push.d 0.94
mul.d.v
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
push.d 0.86
mul.d.v
pushi.e 1080
add.i.v
pop.v.v self.yy
push.d 0.1
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushi.e 19
cmp.i.v LT
bf [5]

:[4]
pushloc.v local.i
push.d 0.05
mul.d.v
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
pushloc.v local.i
pushi.e 15
mul.i.v
add.v.v
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
push.v self.bg_y_pos
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[5]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.buildoffset
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
pushi.e 900
add.i.v
push.v self.bg_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.bg_y_pos_alt
push.v self.bg_x_pos
push.v self.bg_y_pos_alt
push.v self.buildoffset
add.v.v
push.v self.bg_x_pos
pushi.e 0
conv.i.v
pushi.e 3137
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos
pushi.e 8
add.i.v
push.v self.ground_height
add.v.v
pushi.e 900
add.i.v
push.v self.bg_x_pos
pushbltn.v builtin.room_width
add.v.v
push.v self.bg_y_pos_alt
pushi.e 8
add.i.v
push.v self.bg_x_pos
push.v self.bg_y_pos_alt
pushi.e 8
add.i.v
push.v self.buildoffset
add.v.v
push.v self.bg_x_pos
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
push.v self.bg_y_pos
pushi.e 8
add.i.v
push.v self.ground_height
add.v.v
pushbltn.v builtin.room_width
push.v self.bg_y_pos
pushi.e 8
add.i.v
push.v self.bg_x_pos
push.v self.bg_y_pos_alt
pushi.e 8
add.i.v
push.v self.buildoffset
add.v.v
push.v self.bg_x_pos
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
push.v self.bg_x_pos
pop.v.v local.ground_x
call.i gml_Script_cameray(argc=0)
push.d 0.94
mul.d.v
pushi.e 505
add.i.v
pushi.e 100
sub.i.v
pop.v.v local.ground_y
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos_alt
push.v self.ground_height
add.v.v
pushloc.v local.ground_x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.ground_y
pushloc.v local.ground_x
push.v self.bg_y_pos_alt
push.v self.buildoffset
add.v.v
pushloc.v local.ground_x
pushi.e 0
conv.i.v
pushi.e 3140
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.bg_y_pos_alt
pushi.e 8
add.i.v
push.v self.ground_height
add.v.v
pushloc.v local.ground_x
pushbltn.v builtin.room_width
add.v.v
pushloc.v local.ground_y
pushi.e 8
add.i.v
pushloc.v local.ground_x
push.v self.bg_y_pos_alt
pushi.e 8
add.i.v
push.v self.buildoffset
add.v.v
pushloc.v local.ground_x
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
pushloc.v local.ground_y
pushi.e 500
add.i.v
pushbltn.v builtin.room_height
add.v.v
pushi.e 2
add.i.v
pushloc.v local.ground_x
pushbltn.v builtin.room_width
add.v.v
pushi.e 100
add.i.v
pushloc.v local.ground_y
pushi.e 440
add.i.v
pushloc.v local.ground_x
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
pushloc.v local.ground_y
pushi.e 640
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
pushloc.v local.ground_y
pushi.e 400
add.i.v
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

:[6]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushloc.v local.ground_y
pushi.e 600
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 760
add.i.v
pushloc.v local.ground_y
pushi.e 380
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
b [6]

:[8]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [11]

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.9
conv.d.v
push.v self.room_scale
pushloc.v local.ground_y
pushi.e 320
add.i.v
pushi.e 4
add.i.v
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[11]
pushi.e 0
pop.v.i local.i

:[12]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushloc.v local.ground_y
pushi.e 360
add.i.v
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [12]

:[14]
pushi.e 0
pop.v.i local.i

:[15]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [17]

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushloc.v local.ground_y
pushi.e 400
add.i.v
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [15]

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushloc.v local.ground_y
pushi.e 440
add.i.v
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
pushi.e 0
pop.v.i local.i

:[21]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [23]

:[22]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushloc.v local.ground_y
pushi.e 480
add.i.v
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [21]

:[23]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 10
add.i.v
pushi.e 2000
conv.i.v
pushloc.v local.ground_y
pushi.e 400
add.i.v
pushi.e 40
sub.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]