.localvar 2 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.d 0.7
conv.d.v
pushi.e 999
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1946
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.siner
call.i sin(argc=1)
pushi.e 20
conv.i.d
div.d.v
add.v.v
push.v self.image_xscale
push.v self.siner
call.i sin(argc=1)
pushi.e 20
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]