.localvar 2 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "U- I+ Difficulty: "@29846
pushi.e -5
pushi.e 27
push.v [array]self.tempflag
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "1 , 2 , 3 Enable/Disable Enemy.#Spacebar - Reset Room."@29847
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
push.v self.x
call.i draw_text(argc=3)
popz.v
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.turntimer
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "4 - neverending@turn"@29848
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]