.localvar 2 arguments

:[0]
push.v self.pressed
pop.v.v self.image_index
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.drawY
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.pressed
pushi.e 4
mul.i.v
add.v.v
push.v self.drawY
add.v.v
push.v self.x
push.v self.textImage
pushi.e 2392
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]