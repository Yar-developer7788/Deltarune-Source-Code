.localvar 2 arguments

:[0]
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v

:[end]