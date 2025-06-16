.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v 789.final_sequence_red_alpha
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]