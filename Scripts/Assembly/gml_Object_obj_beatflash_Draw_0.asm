.localvar 2 arguments

:[0]
push.v self.image_angle
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.sprite_width
push.d 0.5
mul.d.v
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.image_angle
pushi.e 270
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_width
push.d 0.5
mul.d.v
sub.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.image_angle
pushi.e 90
cmp.i.v EQ
bf [end]

:[5]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_width
push.d 0.5
mul.d.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]