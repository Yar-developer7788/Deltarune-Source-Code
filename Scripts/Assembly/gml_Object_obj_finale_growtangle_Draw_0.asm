.localvar 2 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
pushi.e 3340
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.maxyscale
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.image_xscale
push.v self.maxxscale
pushi.e 2
conv.i.d
div.d.v
div.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]