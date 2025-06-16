.localvar 2 arguments

:[0]
push.v self.hurtalpha
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.hurtalpha
push.d 0.1
sub.d.v
pop.v.v self.hurtalpha

:[2]
push.v self.y
push.v self.x
pushi.e 3
conv.i.v
pushi.e 2817
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.mouthangle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.mouthtopy
add.v.v
push.v self.y_offset
add.v.v
push.v self.x
pushi.e 60
add.i.v
push.v self.mouthbottomy
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x_offset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2030
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.mouthbottomy
add.v.v
push.v self.y_offset
add.v.v
push.v self.x
push.v self.mouthbottomy
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x_offset
add.v.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.hurtalpha
push.i 65535
conv.i.v
push.v self.mouthangle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.mouthtopy
add.v.v
push.v self.y_offset
add.v.v
push.v self.x
pushi.e 60
add.i.v
push.v self.mouthbottomy
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x_offset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2030
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.hurtalpha
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.mouthbottomy
add.v.v
push.v self.y_offset
add.v.v
push.v self.x
push.v self.mouthbottomy
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x_offset
add.v.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]