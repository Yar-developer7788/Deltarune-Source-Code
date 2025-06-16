.localvar 2 arguments

:[0]
push.v self.sb_con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.text_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.sb_word_current
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.i 49139
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.sb_noelle
call.i gml_Script_cameray(argc=0)
pushi.e 140
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 235
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16764466
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.sb_berdly
call.i gml_Script_cameray(argc=0)
pushi.e 140
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[2]
push.v self.berdly_smart
conv.v.b
bf [end]

:[3]
push.v self.berdly_iq_siner
push.e 1
add.i.v
pop.v.v self.berdly_iq_siner
push.d 0.75
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [6]

:[5]
push.s "obj_ch2_scene19c_spelling_bee_slash_Draw_0_gml_37_0"@31685
conv.s.v
push.s "IQ"@31686
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_cameray(argc=0)
pushi.e 150
add.i.v
push.v self.berdly_iq_siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
add.v.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 295
add.i.v
push.v self.berdly_iq_siner
pushi.e 8
conv.i.d
div.d.v
push.v self.i
add.v.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]