.localvar 2 arguments
.localvar 41999 _colorA 22037
.localvar 42000 _colorB 22038
.localvar 107 i 22039
.localvar 20465 _xPos 22040

:[0]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
push.v self.visit_shop
conv.v.b
not.b
bf [25]

:[1]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [13]

:[2]
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha_a
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.played_text_en
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text_color(argc=8)
popz.v
push.v self.text_alpha_b
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.check_text_en
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 240
add.i.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text_color(argc=8)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.text_alpha_b
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.heart_pos_y
push.v self.xx
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 16777215
pop.v.i local._colorA
push.v self.heart_pos_y
push.v self.yy
pushi.e 288
add.i.v
cmp.v.v EQ
bf [7]

:[3]
push.v self.selected
conv.v.b
bf [5]

:[4]
pushi.e 255
conv.i.v
b [6]

:[5]
push.i 16776960
conv.i.v

:[6]
pop.v.v local._colorA

:[7]
pushloc.v local._colorA
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha_b
pushloc.v local._colorA
pushloc.v local._colorA
pushloc.v local._colorA
pushloc.v local._colorA
push.v self.check_undertale
push.v self.yy
pushi.e 280
add.i.v
push.v self.xx
pushi.e 220
add.i.v
call.i draw_text_color(argc=8)
popz.v
push.i 16777215
pop.v.i local._colorB
push.v self.heart_pos_y
push.v self.yy
pushi.e 288
add.i.v
push.v self.line_height
add.v.v
cmp.v.v EQ
bf [12]

:[8]
push.v self.selected
conv.v.b
bf [10]

:[9]
pushi.e 255
conv.i.v
b [11]

:[10]
push.i 16776960
conv.i.v

:[11]
pop.v.v local._colorB

:[12]
pushloc.v local._colorB
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha_b
pushloc.v local._colorB
pushloc.v local._colorB
pushloc.v local._colorB
pushloc.v local._colorB
push.v self.start_dr
push.v self.yy
pushi.e 280
add.i.v
push.v self.line_height
add.v.v
push.v self.xx
pushi.e 220
add.i.v
call.i draw_text_color(argc=8)
popz.v
b [24]

:[13]
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha_a
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.played_text_ja_1
push.v self.yy
pushi.e 125
add.i.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text_color(argc=8)
popz.v
push.v self.text_alpha_a
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.played_text_ja_2
push.v self.yy
pushi.e 125
add.i.v
push.v self.line_height_ja
add.v.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text_color(argc=8)
popz.v
push.v self.text_alpha_b
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.check_text_ja_1
push.v self.yy
pushi.e 225
add.i.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text_color(argc=8)
popz.v
push.v self.text_alpha_b
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.check_text_ja_2
push.v self.yy
pushi.e 225
add.i.v
push.v self.line_height_ja
add.v.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text_color(argc=8)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.text_alpha_b
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.heart_pos_y_ja
push.v self.xx
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 16777215
pop.v.i local._colorA
push.v self.heart_pos_y_ja
push.v self.yy
pushi.e 328
add.i.v
cmp.v.v EQ
bf [18]

:[14]
push.v self.selected
conv.v.b
bf [16]

:[15]
pushi.e 255
conv.i.v
b [17]

:[16]
push.i 16776960
conv.i.v

:[17]
pop.v.v local._colorA

:[18]
pushloc.v local._colorA
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha_b
pushloc.v local._colorA
pushloc.v local._colorA
pushloc.v local._colorA
pushloc.v local._colorA
push.v self.check_undertale
push.v self.yy
pushi.e 318
add.i.v
push.v self.xx
pushi.e 189
add.i.v
call.i draw_text_color(argc=8)
popz.v
push.i 16777215
pop.v.i local._colorB
push.v self.heart_pos_y_ja
push.v self.yy
pushi.e 328
add.i.v
push.v self.select_padding
add.v.v
cmp.v.v EQ
bf [23]

:[19]
push.v self.selected
conv.v.b
bf [21]

:[20]
pushi.e 255
conv.i.v
b [22]

:[21]
push.i 16776960
conv.i.v

:[22]
pop.v.v local._colorB

:[23]
pushloc.v local._colorB
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha_b
pushloc.v local._colorB
pushloc.v local._colorB
pushloc.v local._colorB
pushloc.v local._colorB
push.v self.start_dr
push.v self.yy
pushi.e 318
add.i.v
push.v self.select_padding
add.v.v
push.v self.xx
pushi.e 189
add.i.v
call.i draw_text_color(argc=8)
popz.v

:[24]
b [end]

:[25]
pushi.e 1
conv.i.v
call.i draw_set_valign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [27]

:[26]
push.s "Visit the UNDERTALE page#in the "@42001
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.shop_text
add.v.v
push.s "?"@4913
add.s.v
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text(argc=3)
popz.v
b [28]

:[27]
push.v self.shop_text
push.s "で「UNDERTALE」の#ページをチェックしますか？ "@42002
conv.s.v
call.i string_hash_to_newline(argc=1)
add.v.v
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushbltn.v builtin.room_width
push.d 0.5
mul.d.v
add.v.v
call.i draw_text(argc=3)
popz.v

:[28]
push.v self.yy
pushi.e 271
add.i.v
push.v self.heart_pos_x
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i local.i

:[29]
pushloc.v local.i
push.v self.shop_options
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [33]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.heart_pos_x_default
pushloc.v local.i
push.v self.heart_pos_x_h_padding
mul.v.v
add.v.v
pop.v.v local._xPos
push.v self.heart_pos_x
pushloc.v local._xPos
cmp.v.v EQ
bf [32]

:[31]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[32]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shop_options
push.v self.yy
pushi.e 280
add.i.v
push.v self.xx
pushi.e 240
add.i.v
pushloc.v local.i
pushi.e 150
mul.i.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[33]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]