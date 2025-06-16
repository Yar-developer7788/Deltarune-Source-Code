.localvar 2 arguments
.localvar 36487 _percent 18037
.localvar 36497 _yDiff 18038

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

:[end]