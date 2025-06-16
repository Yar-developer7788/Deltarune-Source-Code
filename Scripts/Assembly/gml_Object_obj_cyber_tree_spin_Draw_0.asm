.localvar 2 arguments

:[0]
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.animsiner
pushi.e 8
conv.i.d
div.d.v
pushi.e 3133
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]