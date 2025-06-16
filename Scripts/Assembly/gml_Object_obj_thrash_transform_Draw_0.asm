.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.transformstate
pushi.e 3
cmp.i.v GTE
bf [end]

:[1]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]