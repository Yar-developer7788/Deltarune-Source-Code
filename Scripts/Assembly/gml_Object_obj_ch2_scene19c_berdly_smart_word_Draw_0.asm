.localvar 2 arguments

:[0]
push.v self.text_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 16764466
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.berdly_word
push.v self.y
push.v self.x
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]