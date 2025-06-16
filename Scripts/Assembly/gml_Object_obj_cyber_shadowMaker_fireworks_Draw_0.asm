.localvar 2 arguments
.localvar 21314 sus_x 9379
.localvar 21315 sus_y 9380
.localvar 21316 sus_sprite 9381
.localvar 21317 sus_index 9382
.localvar 21323 sus_height 9383
.localvar 21319 ral_x 9384
.localvar 21320 ral_y 9385
.localvar 15467 ral_sprite 9386
.localvar 21321 ral_index 9387
.localvar 21324 ral_height 9388
.localvar 21309 hacker_x 9389
.localvar 21310 hacker_y 9390
.localvar 21312 hacker_sprite 9391
.localvar 21313 hacker_index 9392
.localvar 21325 hacker_height 9393

:[0]
push.v self.is_active
conv.v.b
bt [2]

:[1]
push.v self.inactive_cleanup
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.frontshadOpacity
call.i draw_set_alpha(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 480
conv.i.v
pushi.e 280
conv.i.v
pushi.e 160
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [12]

:[7]
push.v 82.x
pushi.e 840
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.b self.fade_reset
pushi.e 1
pop.v.b self.fade_cleanup
pushi.e 0
pop.v.b self.fade_in
push.v self.frontshadOpacity
pushi.e 1
pushi.e 520
conv.i.d
push.v 82.x
div.v.d
push.d 0.25
mul.d.v
sub.v.i
mul.v.v
pop.v.v self.frontshadOpacity
b [11]

:[9]
push.v self.fade_reset
conv.v.b
not.b
bf [11]

:[10]
pushi.e 1
pop.v.b self.fade_reset
pushi.e 0
pop.v.b self.fade_cleanup
pushi.e 0
pop.v.i self.fade_timer

:[11]
pushi.e 0
conv.i.v
pushi.e 2640
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 2600
conv.i.v
pushi.e 520
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[12]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 480
conv.i.v
pushi.e 280
conv.i.v
pushi.e 360
conv.i.v
pushi.e 160
conv.i.v
pushi.e 360
conv.i.v
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2295
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 480
conv.i.v
pushi.e 480
conv.i.v
pushi.e 360
conv.i.v
pushi.e 360
conv.i.v
pushi.e 360
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2295
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.frontshadOpacity
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 360
conv.i.v
pushi.e 480
conv.i.v
pushi.e 280
conv.i.v
pushi.e 160
conv.i.v
pushi.e 280
conv.i.v
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2295
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.frontshadOpacity
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 480
conv.i.v
pushi.e 358
conv.i.v
pushi.e 360
conv.i.v
pushi.e 280
conv.i.v
pushi.e 360
conv.i.v
pushi.e 280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2295
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[14]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2800
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 2640
conv.i.v
pushi.e 520
conv.i.v
pushi.e 2640
conv.i.v
pushi.e 520
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2295
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.frontshadOpacity
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2640
conv.i.v
pushi.e 2720
conv.i.v
pushi.e 2600
conv.i.v
pushi.e 520
conv.i.v
pushi.e 2600
conv.i.v
pushi.e 520
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2295
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[16]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
push.v self.frontshadOpacity
push.v self.frontShadowColor
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
push.v 82.sprite_height
push.v 82.image_yscale
mul.v.v
add.v.v
pushi.e 4
sub.i.v
push.v 82.x
push.v 82.image_index
push.v 82.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[17]
pushi.e 276
pushenv [22]

:[18]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [20]

:[19]
push.v self.x
pop.v.v local.sus_x
push.v self.y
pop.v.v local.sus_y
push.v self.sprite_index
pop.v.v local.sus_sprite
push.v self.image_index
pop.v.v local.sus_index
push.v self.sprite_height
pop.v.v local.sus_height

:[20]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [22]

:[21]
push.v self.x
pop.v.v local.ral_x
push.v self.y
pop.v.v local.ral_y
push.v self.sprite_index
pop.v.v local.ral_sprite
push.v self.image_index
pop.v.v local.ral_index
push.v self.sprite_height
pop.v.v local.ral_height

:[22]
popenv [18]
pushloc.v local.sus_x
pushi.e 0
cmp.i.v NEQ
bf [24]

:[23]
push.v self.frontshadOpacity
push.v self.frontShadowColor
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.sus_y
pushloc.v local.sus_height
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
sub.i.v
pushloc.v local.sus_x
pushloc.v local.sus_index
pushloc.v local.sus_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
pushloc.v local.ral_x
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
push.v self.frontshadOpacity
push.v self.frontShadowColor
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.ral_y
pushloc.v local.ral_height
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
sub.i.v
pushloc.v local.ral_x
pushloc.v local.ral_index
pushloc.v local.ral_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
pushi.e 69
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[27]
pushi.e 69
pushenv [29]

:[28]
push.v self.x
pop.v.v local.hacker_x
push.v self.y
pop.v.v local.hacker_y
push.v self.sprite_index
pop.v.v local.hacker_sprite
push.v self.image_index
pop.v.v local.hacker_index
push.v self.sprite_height
pop.v.v local.hacker_height

:[29]
popenv [28]
pushi.e 1
conv.i.v
push.v self.frontShadowColor
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.hacker_y
pushloc.v local.hacker_height
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
sub.i.v
pushloc.v local.hacker_x
pushloc.v local.hacker_index
pushloc.v local.hacker_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[30]
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]