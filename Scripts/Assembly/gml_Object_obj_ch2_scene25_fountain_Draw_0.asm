.localvar 2 arguments

:[0]
push.v self.fountain_index
push.d 0.1
add.d.v
pop.v.v self.fountain_index
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.fountain_index
pushi.e 2951
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]