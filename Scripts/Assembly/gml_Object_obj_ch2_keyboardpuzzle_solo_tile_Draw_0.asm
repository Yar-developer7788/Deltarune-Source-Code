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
push.v self.x
pushi.e 20
add.i.v
pop.v.v self._xx
push.v self.y
pushi.e 320
sub.i.v
pop.v.v self._yy
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.myString
push.v self._yy
push.v self._xx
call.i draw_text(argc=3)
popz.v
push.v self.down
conv.v.b
bf [end]

:[1]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.won
conv.v.b
bf [3]

:[2]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[3]
push.v self.myString
push.v self._yy
pushi.e 28
add.i.v
push.v self._xx
call.i draw_text(argc=3)
popz.v

:[end]