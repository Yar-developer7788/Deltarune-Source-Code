.localvar 2 arguments

:[0]
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
call.i draw_self(argc=0)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v

:[end]