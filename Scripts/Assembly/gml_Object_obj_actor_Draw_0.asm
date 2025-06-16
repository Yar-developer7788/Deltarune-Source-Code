.localvar 2 arguments

:[0]
push.v self.sprite_palette
pushi.e -1
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sinery
add.v.v
push.v self.shakey
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.shakex
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v
b [end]

:[2]
push.v self.image_alpha
push.v self.color_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sinery
add.v.v
push.v self.shakey
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.shakex
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]