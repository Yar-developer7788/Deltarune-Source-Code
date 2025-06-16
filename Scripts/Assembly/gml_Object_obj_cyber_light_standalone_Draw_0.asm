.localvar 2 arguments

:[0]
push.v self.image_alpha
push.d 0.4
sub.d.v
push.i 8421376
conv.i.v
push.v self.image_angle
push.v self.image_yscale
pushi.e 2
mul.i.v
push.v self.image_xscale
pushi.e 2
mul.i.v
push.v self.y
push.v self.x
push.v self.wd
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.d 0.2
sub.d.v
push.i 32768
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.d 1.5
mul.d.v
push.v self.image_xscale
push.d 1.5
mul.d.v
push.v self.y
push.v self.x
push.v self.wd
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]