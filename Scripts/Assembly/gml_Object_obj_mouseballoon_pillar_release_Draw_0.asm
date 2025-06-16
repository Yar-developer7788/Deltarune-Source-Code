.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.fakeballoony
add.v.v
push.v self.x
pushi.e 12
sub.i.v
pushi.e 0
conv.i.v
pushi.e 3041
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
push.v self.fakeballoony
call.i lerp(argc=3)
pop.v.v self.fakeballoony
push.v self.fakeballoony
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [end]

:[1]
pushi.e 0
pop.v.i self.fakeballoony

:[end]