.localvar 2 arguments

:[0]
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
pushi.e 10
conv.i.d
div.d.v
add.v.v
push.v self.image_xscale
push.v self.siner
call.i sin(argc=1)
pushi.e 10
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