.localvar 2 arguments
.localvar 107 i 19847
.localvar 21234 text_color 19848

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.choice_text
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [6]

:[2]
push.v self.choice_index
pushloc.v local.i
cmp.v.v EQ
bf [4]

:[3]
push.i 65535
conv.i.v
b [5]

:[4]
push.i 16777215
conv.i.v

:[5]
pop.v.v local.text_color
pushloc.v local.text_color
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha
pushloc.v local.text_color
pushloc.v local.text_color
pushloc.v local.text_color
pushloc.v local.text_color
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.choice_text
push.v self.base_text_ypos
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.v
push.v self.ypos_offset
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 220
add.i.v
call.i draw_text_color(argc=8)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.text_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.base_heart_ypos
push.v self.choice_index
pushi.e 40
mul.i.v
add.v.v
push.v self.ypos_offset
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 200
add.i.v
pushi.e 0
conv.i.v
pushi.e 4161
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]