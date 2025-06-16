.localvar 2 arguments

:[0]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.s "obj_healwriter_slash_Draw_0_gml_4_0"@20693
conv.s.v
push.v self.healamt
call.i string(argc=1)
push.s "+~1"@20694
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
push.v self.y
push.v self.x
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]