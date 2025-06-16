.localvar 2 arguments

:[0]
push.i 99000
pop.v.i self.depth
pushi.e 275
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.fightmode

:[2]
push.v self.drawblack
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.fightmode
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 500
conv.i.v
pushi.e 2500
conv.i.v
pushi.e -10
conv.i.v
pushi.e 1630
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[7]
push.v self.drawtrack
pushi.e 1
cmp.i.v EQ
bf [15]

:[8]
push.v self.trackx
push.v self.trackspeed
add.v.v
pop.v.v self.trackx
push.v self.trackx
pushi.e 640
add.i.v
call.i gml_Script_camerax(argc=0)
cmp.v.v LT
bf [10]

:[9]
push.v self.trackx
pushi.e 640
add.i.v
pop.v.v self.trackx

:[10]
push.v self.trackx
pushi.e 640
sub.i.v
call.i gml_Script_camerax(argc=0)
cmp.v.v GT
bf [12]

:[11]
push.v self.trackx
pushi.e 640
sub.i.v
pop.v.v self.trackx

:[12]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky0
push.v self.trackx
pushi.e 640
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky0
push.v self.trackx
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky0
push.v self.trackx
pushi.e 640
add.i.v
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky1
push.v self.trackx
pushi.e 640
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky1
push.v self.trackx
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky1
push.v self.trackx
pushi.e 640
add.i.v
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky2
push.v self.trackx
pushi.e 640
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky2
push.v self.trackx
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.tracky2
push.v self.trackx
pushi.e 640
add.i.v
pushi.e 0
conv.i.v
pushi.e 2052
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [14]

:[13]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[14]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 420
conv.i.v
pushi.e 80
conv.i.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[15]
push.v self.drawblack
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.fightmode
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 500
conv.i.v
pushi.e 2500
conv.i.v
pushi.e -10
conv.i.v
pushi.e 1640
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[20]
push.v self.cityscape_active
conv.v.b
bf [end]

:[21]
push.v self.cityscape_alpha
pushi.e 1
cmp.i.v LT
bf [23]

:[22]
push.d 0.2
conv.d.v
pushi.e 1
conv.i.v
push.v self.cityscape_alpha
call.i lerp(argc=3)
pop.v.v self.cityscape_alpha

:[23]
push.v self.cityscapefade
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i self.cityscape_alpha

:[25]
push.v self.cityscape_speed
push.v self.cityscape_speed_max
sub.v.v
pop.v.v self.cityscape_speed
push.v self.cityscape_speed_max
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
push.v self.cityscape_speed
pushi.e -398
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.v self.cityscape_speed
pushi.e 398
sub.i.v
pop.v.v self.cityscape_speed

:[30]
push.v self.cityscape_alpha
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 3334
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
add.v.v
pushi.e 0
conv.i.v
pushi.e 3334
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.cityscape_alpha
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 3306
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
push.d 1.1
mul.d.v
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
push.d 1.1
mul.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 3306
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.cityscape_alpha
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 3317
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
push.d 1.2
mul.d.v
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
push.d 1.2
mul.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 3317
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.shop_spamton_bg_con
pushi.e 1
cmp.i.v GT
bf [34]

:[31]
push.v self.cityscapefade
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.d 0.15
pop.v.d self.cityscape_alpha

:[33]
push.v self.cityscape_alpha
push.i 16777215
conv.i.v
push.d 1.195
conv.d.v
push.d 1.6708
conv.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 2954
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
add.v.v
pushi.e 0
conv.i.v
pushi.e 2061
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[34]
push.v self.shop_spamton_bg_con
pushi.e 1
cmp.i.v EQ
bf [37]

:[35]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [37]

:[36]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [38]

:[37]
push.e 0

:[38]
bf [43]

:[39]
push.v self.shop_spamton_bg_timer
push.e 1
add.i.v
pop.v.v self.shop_spamton_bg_timer
push.v self.shop_spamton_bg_timer
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 202
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[41]
push.v self.shop_spamton_bg_timer
pushi.e 23
cmp.i.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i self.shop_spamton_bg_con

:[43]
push.v self.shop_spamton_bg_con
pushi.e 2
cmp.i.v EQ
bf [48]

:[44]
push.v self.shop_spamton_bg_timer
push.e 1
sub.i.v
pop.v.v self.shop_spamton_bg_timer
push.v self.shop_spamton_bg_timer
pushi.e 0
cmp.i.v EQ
bf [48]

:[45]
pushi.e 3
pop.v.i self.shop_spamton_bg_con
pushi.e 697
pushenv [47]

:[46]
pushi.e 5
pop.v.i self.targetbgspeed

:[47]
popenv [46]

:[48]
push.v self.shop_spamton_bg_con
pushi.e 0
cmp.i.v GT
bf [50]

:[49]
push.v self.shop_spamton_bg_con
pushi.e 3
cmp.i.v LT
b [51]

:[50]
push.e 0

:[51]
bf [end]

:[52]
push.v self.shop_spamton_bg_timer
pushi.e 20
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 8
conv.i.v
pushi.e 396
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 2
sub.i.v
pushi.e 2954
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 2
sub.i.v
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.cityscape_speed
add.v.v
pushi.e 0
conv.i.v
pushi.e 547
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[end]