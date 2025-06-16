.localvar 2 arguments
.localvar 36487 _percent 18023
.localvar 36497 _yDiff 18024

:[0]
call.i draw_self(argc=0)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.framesAway
push.v self.frames
div.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._percent
push.v self.ystart
push.v self.endY
sub.v.v
call.i abs(argc=1)
pop.v.v local._yDiff
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
pushi.e 60
sub.i.v
pushi.e 20
add.i.v
push.v self.x
pushi.e 100
add.i.v
push.v self.y
pushi.e 60
sub.i.v
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_valign(argc=1)
popz.v

:[end]