.localvar 2 arguments

:[0]
push.v self.quit_timer
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
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
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[3]
pushi.e 0
conv.b.v
call.i gml_Script_scr_84_debug_ch1(argc=1)
popz.v

:[end]