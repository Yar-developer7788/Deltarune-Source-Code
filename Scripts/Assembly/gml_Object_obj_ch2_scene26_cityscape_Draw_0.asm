.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d -0.125
mul.d.v
push.v self.xstart
add.v.v
pop.v.v self.drawx
pushbltn.v builtin.room
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_cameray(argc=0)
push.d -0.125
mul.d.v
pushi.e 620
add.i.v
b [3]

:[2]
call.i gml_Script_cameray(argc=0)
push.v self.ystart
add.v.v
pushi.e 80
sub.i.v

:[3]
pop.v.v self.drawy
push.v self.auto_scroll
conv.v.b
bf [5]

:[4]
push.v self.x_offset
push.d 0.5
sub.d.v
pop.v.v self.x_offset

:[5]
push.v self.auto_scroll_y
conv.v.b
bf [8]

:[6]
push.v self.auto_scroll_y_timer
push.e 1
add.i.v
pop.v.v self.auto_scroll_y_timer
push.v self.y_offset
push.d 0.75
sub.d.v
pop.v.v self.y_offset
push.v self.auto_scroll_y_timer
pushi.e 30
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.b self.auto_scroll_y

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.drawy
push.v self.y_offset
add.v.v
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.x_offset
add.v.v
push.v self.drawy
push.v self.y_offset
add.v.v
push.v self.drawx
push.v self.x_offset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2872
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.show_laser_outline
conv.v.b
bf [16]

:[9]
push.v self.reveal_pos
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
call.i gml_Script_camerax(argc=0)
pop.v.v self.reveal_pos

:[11]
push.v self.cityscape_reveal
conv.v.b
not.b
bf [15]

:[12]
push.v self.reveal_pos
pushi.e 16
add.i.v
pop.v.v self.reveal_pos
push.v self.reveal_pos
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
cmp.v.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.b self.cityscape_reveal

:[14]
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
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
pushi.e 0
conv.i.v
push.v self.reveal_pos
call.i draw_rectangle(argc=5)
popz.v
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
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
b [16]

:[15]
push.v self.main_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[16]
push.v self.show_laser_beam
conv.v.b
bf [26]

:[17]
push.v self.beam_offset
pushi.e 60
cmp.i.v LT
bf [19]

:[18]
push.v self.beam_offset
pushi.e 4
add.i.v
pop.v.v self.beam_offset

:[19]
push.v self.show_laser_hand
conv.v.b
bf [21]

:[20]
push.v self.hand_alpha
pushi.e 0
cmp.i.v GT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v self.hand_alpha
push.d 0.1
sub.d.v
pop.v.v self.hand_alpha
b [25]

:[24]
pushi.e 0
pop.v.b self.show_laser_hand

:[25]
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
push.v self.main_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 302
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
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
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.beam_offset
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.beam_offset
sub.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.beam_offset
sub.v.v
pushi.e 0
conv.i.v
pushi.e 307
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[26]
push.v self.show_mini_fountains
conv.v.b
bf [30]

:[27]
push.v self.mini_alpha
pushi.e 1
cmp.i.v LT
bf [29]

:[28]
push.v self.mini_alpha
push.d 0.1
add.d.v
pop.v.v self.mini_alpha

:[29]
push.v self.mini_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
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
push.v self.mini_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 302
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
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
push.v self.mini_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 210
add.i.v
push.v self.kris_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
call.i gml_Script_cameray(argc=0)
push.v self.kris_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
call.i gml_Script_cameray(argc=0)
push.v self.kris_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 307
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.mini_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 210
add.i.v
push.v self.sus_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
call.i gml_Script_cameray(argc=0)
push.v self.sus_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
call.i gml_Script_cameray(argc=0)
push.v self.sus_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 307
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.mini_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 210
add.i.v
push.v self.no_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
call.i gml_Script_cameray(argc=0)
push.v self.no_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
call.i gml_Script_cameray(argc=0)
push.v self.no_screen
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 307
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[30]
push.v self.mini_cityscape
conv.v.b
bf [32]

:[31]
push.v self.main_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[32]
push.v self.tender_goodbye
conv.v.b
bf [42]

:[33]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.tender_fly
conv.v.b
not.b
bf [35]

:[34]
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.sinery
b [36]

:[35]
push.v self.sinery
pushi.e 10
sub.i.v
pop.v.v self.sinery

:[36]
push.v self.tender_reveal_pos
pushi.e 0
cmp.i.v LT
bf [38]

:[37]
pushi.e 146
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
sub.v.v
pop.v.v self.tender_reveal_pos

:[38]
push.v self.tender_reveal
conv.v.b
not.b
bf [41]

:[39]
push.v self.tender_reveal_pos
pushi.e 8
add.i.v
pop.v.v self.tender_reveal_pos
push.v self.tender_reveal_pos
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GTE
bf [41]

:[40]
pushi.e 1
pop.v.b self.tender_reveal

:[41]
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
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
add.i.v
push.v self.byebye_sprite
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.sinery
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
add.i.v
push.v self.sinery
add.v.v
push.v self.tender_reveal_pos
call.i draw_rectangle(argc=5)
popz.v
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
push.d 0.8
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
add.i.v
push.v self.sinery
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 0
conv.i.v
push.v self.byebye_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[42]
push.v self.tender_cancel
conv.v.b
bf [53]

:[43]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.tender_cancel_pos
pushi.e 0
cmp.i.v LT
bf [45]

:[44]
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 10
sub.i.v
pop.v.v self.tender_cancel_pos

:[45]
push.v self.tender_cancel_pos
pushi.e 16
add.i.v
pop.v.v self.tender_cancel_pos
push.v self.tender_cancel_pos
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
add.v.v
pushi.e 10
add.i.v
cmp.v.v GTE
bf [48]

:[46]
push.v self.tender_timer
push.e 1
sub.i.v
pop.v.v self.tender_timer
push.v self.tender_timer
pushi.e -30
cmp.i.v LTE
bf [48]

:[47]
pushi.e 1
pop.v.b self.tender_fly

:[48]
push.v self.tender_fly
conv.v.b
not.b
bf [50]

:[49]
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.sinery
b [52]

:[50]
push.v self.sinery
pushi.e 10
sub.i.v
pop.v.v self.sinery
push.v self.sinery
pushi.e -200
cmp.i.v LTE
bf [52]

:[51]
pushi.e 0
pop.v.b self.tender_goodbye
pushi.e 0
pop.v.b self.tender_cancel

:[52]
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
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 120
add.i.v
pushi.e 374
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.sinery
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
add.v.v
pushi.e 10
add.i.v
push.v self.sinery
call.i gml_Script_cameray(argc=0)
add.v.v
pushi.e 50
add.i.v
push.v self.byebye_sprite
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.tender_cancel_pos
call.i draw_rectangle(argc=5)
popz.v
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
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 50
add.i.v
push.v self.byebye_sprite
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 4
add.i.v
push.v self.sinery
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
add.v.v
pushi.e 10
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 50
add.i.v
push.v self.byebye_sprite
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sinery
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.byebye_sprite
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.9
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 120
add.i.v
push.v self.sinery
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 374
conv.i.v
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 374
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[53]
push.v self.show_hands
conv.v.b
bf [end]

:[54]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
push.v self.hand_right_xpos
pushi.e 0
conv.i.v
pushi.e 305
conv.i.v
call.i draw_sprite_ext(argc=9)
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
push.v self.knife_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.drawy
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 302
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
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
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.knife_ypos
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 313
conv.i.v
call.i sprite_get_width(argc=1)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 313
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]