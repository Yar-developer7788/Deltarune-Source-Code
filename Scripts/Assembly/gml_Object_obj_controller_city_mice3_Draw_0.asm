.localvar 2 arguments

:[0]
push.v self.solve
pushi.e 2
cmp.i.v NEQ
bf [9]

:[1]
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
pushi.e 164
conv.i.v
pushi.e 326
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2651
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.micescore
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [4]

:[3]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
pushi.e 0
pop.v.i self.language
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.language
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.micescore
pushi.e 1
conv.i.v
push.s "obj_controller_city_mice3_slash_Draw_0_gml_18_0"@37564
conv.s.v
push.s "ILOVEMOUSE"@37565
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_copy(argc=3)
pushi.e 173
conv.i.v
pushi.e 342
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[6]
push.v self.language
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.micescore
pushi.e 1
conv.i.v
push.s "obj_controller_city_mice3_slash_Draw_0_gml_20_0"@37566
conv.s.v
push.s "ILUVNEZUMI"@37567
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_copy(argc=3)
pushi.e 173
conv.i.v
pushi.e 342
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[8]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
push.v self.micescore
sub.v.i
push.v self.micescore
pushi.e 1
add.i.v
push.s "??????????"@37568
conv.s.v
call.i string_copy(argc=3)
pushi.e 173
conv.i.v
pushi.e 484
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[9]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.weird
pushi.e 1
cmp.b.v EQ
bf [end]

:[10]
push.v self.drawshine
pushi.e 1
cmp.b.v EQ
bf [end]

:[11]
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
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2685
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shineindex
push.d 0.25
add.d.v
pop.v.v self.shineindex
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
pushi.e 270
conv.i.v
pushi.e 215
conv.i.v
push.v self.shineindex
pushi.e 2439
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]