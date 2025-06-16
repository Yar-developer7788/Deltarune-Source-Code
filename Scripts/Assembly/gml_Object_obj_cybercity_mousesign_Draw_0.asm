.localvar 2 arguments

:[0]
push.v self.sign_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.current_index
push.v self.sign_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]