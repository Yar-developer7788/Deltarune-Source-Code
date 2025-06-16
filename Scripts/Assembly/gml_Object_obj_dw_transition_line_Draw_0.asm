.localvar 2 arguments

:[0]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e 2
mul.i.v
push.v self.image_xscale
pushi.e 2
mul.i.v
push.v self.y
pushi.e 2
mul.i.v
push.v self.x
pushi.e 2
mul.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]