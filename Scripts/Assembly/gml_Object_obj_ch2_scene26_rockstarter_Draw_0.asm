.localvar 2 arguments

:[0]
push.v self.smallrocks
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 260
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 320
add.i.v
pushi.e 0
conv.i.v
pushi.e 260
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 240
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 260
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 240
add.i.v
push.v self.x
pushi.e 320
add.i.v
pushi.e 0
conv.i.v
pushi.e 260
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[2]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]