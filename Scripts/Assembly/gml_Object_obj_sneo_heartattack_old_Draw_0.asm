.localvar 2 arguments

:[0]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.ystart
push.v self.xstart
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.shakey
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.shakex
call.i random(argc=1)
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]