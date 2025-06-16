.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 651
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
push.v self.image_yscale
mul.v.v
sub.v.v
push.v self.x
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
push.v self.image_xscale
mul.v.v
sub.v.v
push.v self.sprite_index
call.i sprite_get_height(argc=1)
push.v self.cutoff
sub.v.v
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
b [end]

:[2]
call.i draw_self(argc=0)
popz.v

:[end]