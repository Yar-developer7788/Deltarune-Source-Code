.localvar 2 arguments

:[0]
push.v self.vskew
push.v self.hskew
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_skew_ext(argc=11)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "h: "@21238
push.v self.hskew
call.i string(argc=1)
add.v.s
push.s "#v: "@21239
add.s.v
push.v self.vskew
call.i string(argc=1)
add.v.v
push.s "rot: "@21240
add.s.v
push.v self.image_angle
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]