.localvar 2 arguments

:[0]
push.v self.fountain_index
push.d 0.1
add.d.v
pop.v.v self.fountain_index
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 745
conv.i.v
push.v self.fountain_index
pushi.e 4116
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
pushi.e 0
conv.i.v
pushi.e 600
conv.i.v
pushi.e 4373
conv.i.v
call.i gml_Script_draw_background_ext_ch1(argc=8)
popz.v
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.con
pushi.e 9998
cmp.i.v GT
bf [end]

:[2]
push.v self.king
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.s "obj_kingcutscene_slash_Draw_0_gml_15_0"@40715
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.king
pushi.e -9
push.v [stacktop]self.x
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_16_0"@40716
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.king
pushi.e -9
push.v [stacktop]self.y
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v

:[4]
push.s "obj_kingcutscene_slash_Draw_0_gml_18_0"@40717
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 70
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_19_0"@40718
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_21_0"@40719
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.con
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 130
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.v self.k
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.s "obj_kingcutscene_slash_Draw_0_gml_25_0"@40720
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.k
pushi.e -9
push.v [stacktop]self.x
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_26_0"@40721
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.k
pushi.e -9
push.v [stacktop]self.y
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v

:[6]
push.v self.s
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
push.s "obj_kingcutscene_slash_Draw_0_gml_31_0"@40722
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.s
pushi.e -9
push.v [stacktop]self.x
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_32_0"@40723
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.s
pushi.e -9
push.v [stacktop]self.y
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]