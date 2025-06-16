.localvar 2 arguments
.localvar 10706 result 22035

:[0]
push.v self.loaded
conv.v.b
bf [50]

:[1]
push.v self.visit_shop
conv.v.b
bf [24]

:[2]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [6]

:[3]
push.v self.commerce_dialog_open
pushi.e 1
cmp.b.v EQ
bf [6]

:[4]
call.i psn_np_commerce_dialog_tick(argc=0)
pop.v.v local.result
pushloc.v local.result
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 0
pop.v.b self.commerce_dialog_open

:[6]
push.v self.buffer
push.e 1
add.i.v
pop.v.v self.buffer
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [8]

:[7]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.heart_pos_x_default
pop.v.v self.heart_pos_x

:[8]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [10]

:[9]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.heart_pos_x_default
push.v self.heart_pos_x_h_padding
add.v.v
pop.v.v self.heart_pos_x

:[10]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [12]

:[11]
push.v self.buffer
pushi.e 3
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [21]

:[14]
pushi.e 0
pop.v.i self.buffer
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.heart_pos_x
push.v self.heart_pos_x_default
cmp.v.v EQ
bf [19]

:[15]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [17]

:[16]
push.l 72199087622348800
conv.l.v
call.i switch_show_store(argc=1)
popz.v
b [18]

:[17]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [18]

:[18]
b [21]

:[19]
push.v self.heart_pos_x
push.v self.heart_pos_x_default
push.v self.heart_pos_x_h_padding
add.v.v
cmp.v.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.b self.visit_shop

:[21]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [23]

:[22]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.b self.visit_shop

:[23]
b [49]

:[24]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [31]

:[25]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [29]

:[26]
push.v self.heart_pos_y
push.v self.yy
pushi.e 288
add.i.v
push.v self.line_height
add.v.v
cmp.v.v EQ
bf [28]

:[27]
push.v self.heart_pos_y
push.v self.line_height
sub.v.v
pop.v.v self.heart_pos_y

:[28]
b [31]

:[29]
push.v self.heart_pos_y_ja
push.v self.yy
pushi.e 328
add.i.v
push.v self.select_padding
add.v.v
cmp.v.v EQ
bf [31]

:[30]
push.v self.heart_pos_y_ja
push.v self.select_padding
sub.v.v
pop.v.v self.heart_pos_y_ja

:[31]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [38]

:[32]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [36]

:[33]
push.v self.heart_pos_y
push.v self.yy
pushi.e 288
add.i.v
cmp.v.v EQ
bf [35]

:[34]
push.v self.heart_pos_y
push.v self.line_height
add.v.v
pop.v.v self.heart_pos_y

:[35]
b [38]

:[36]
push.v self.heart_pos_y_ja
push.v self.yy
pushi.e 328
add.i.v
cmp.v.v EQ
bf [38]

:[37]
push.v self.heart_pos_y_ja
push.v self.select_padding
add.v.v
pop.v.v self.heart_pos_y_ja

:[38]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [49]

:[39]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [45]

:[40]
push.v self.heart_pos_y
push.v self.yy
pushi.e 288
add.i.v
cmp.v.v EQ
bf [42]

:[41]
push.v self.heart_pos_x_default
pop.v.v self.heart_pos_x
pushi.e 1
pop.v.b self.visit_shop
b [44]

:[42]
push.v self.heart_pos_y
push.v self.yy
pushi.e 288
add.i.v
push.v self.line_height
add.v.v
cmp.v.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.b global.store_prompt
call.i gml_Script_ossafe_game_end(argc=0)
popz.v

:[44]
b [49]

:[45]
push.v self.heart_pos_y_ja
push.v self.yy
pushi.e 328
add.i.v
cmp.v.v EQ
bf [47]

:[46]
push.v self.heart_pos_x_default
pop.v.v self.heart_pos_x
pushi.e 1
pop.v.b self.visit_shop
b [49]

:[47]
push.v self.heart_pos_y_ja
push.v self.yy
pushi.e 328
add.i.v
push.v self.select_padding
add.v.v
cmp.v.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.b global.store_prompt
call.i gml_Script_ossafe_game_end(argc=0)
popz.v

:[49]
b [end]

:[50]
push.v self.text_alpha_a
pushi.e 1
cmp.i.v LT
bf [52]

:[51]
push.v self.text_alpha_a
push.d 0.015
add.d.v
pop.v.v self.text_alpha_a

:[52]
push.v self.text_alpha_a
pushi.e 1
cmp.i.v GTE
bf [55]

:[53]
push.v self.text_alpha_b
pushi.e 1
cmp.i.v LT
bf [55]

:[54]
push.v self.text_alpha_b
push.d 0.015
add.d.v
pop.v.v self.text_alpha_b

:[55]
push.v self.text_alpha_b
pushi.e 1
cmp.i.v GTE
pop.v.b self.loaded

:[end]