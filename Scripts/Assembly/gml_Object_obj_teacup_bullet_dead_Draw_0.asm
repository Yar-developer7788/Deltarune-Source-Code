.localvar 2 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_yoffset
sub.v.v
push.v self.x
push.v self.sprite_xoffset
sub.v.v
push.v self.spriteHeightRoot
push.v self.spriteWidthRoot
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]