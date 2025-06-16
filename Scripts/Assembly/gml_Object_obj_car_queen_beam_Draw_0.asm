.localvar 2 arguments

:[0]
push.d 0.75
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
pushi.e 0
conv.i.v
pushi.e 3039
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]