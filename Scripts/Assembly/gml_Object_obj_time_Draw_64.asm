.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [5]

:[1]
push.v self.quicksaved
pushi.e 2
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 0
conv.b.v
call.i gml_Script_scr_84_debug(argc=1)
popz.v

:[3]
push.v self.gif_recording
conv.v.b
bf [5]

:[4]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "GIF FRAME:"@36744
push.v self.gif_timer
call.i string(argc=1)
add.v.s
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v

:[5]
push.v self.quit_timer
pushi.e 1
cmp.i.v GTE
bf [end]

:[6]
push.v self.quit_timer
pushi.e 15
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
push.v self.quit_timer
pushi.e 7
conv.i.d
div.d.v
push.s "spr_quitmessage"@12020
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[end]