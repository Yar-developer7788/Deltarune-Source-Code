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
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.customBox
conv.v.b
bf [3]

:[1]
push.v self.growth
conv.v.b
bf [3]

:[2]
push.v self.growcon
pushi.e 2
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
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
push.v self.spr_custom_box
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[6]
call.i draw_self(argc=0)
popz.v

:[end]