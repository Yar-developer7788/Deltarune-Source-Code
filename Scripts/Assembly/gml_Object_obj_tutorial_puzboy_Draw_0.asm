.localvar 2 arguments

:[0]
push.v self.tickAlpha
push.d 0.1
sub.d.v
pop.v.v self.tickAlpha
push.v self.tickAlpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 26
sub.i.v
pushi.e 0
conv.i.v
pushi.e 3283
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]