.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.flashamount
pushi.e 0
cmp.i.v GTE
bf [end]

:[1]
pushi.e 2
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[end]