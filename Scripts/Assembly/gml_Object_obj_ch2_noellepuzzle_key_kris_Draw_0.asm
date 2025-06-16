.localvar 2 arguments

:[0]
push.v self.pressed
pop.v.v self.image_index
push.v self.image_alpha
push.i 16776960
conv.i.v
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

:[end]