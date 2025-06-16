.localvar 2 arguments
.localvar 24855 rightside 11915

:[0]
push.v self.buffering
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.bufferbar
push.v self.bufferduration
div.v.v
pushi.e 65
conv.i.v
pushi.e -65
conv.i.v
call.i lerp(argc=3)
pop.v.v local.rightside
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v 872.y
pushi.e 90
sub.i.v
push.v 872.x
pushi.e 65
add.i.v
push.v 872.y
pushi.e 100
sub.i.v
push.v 872.x
pushi.e 65
sub.i.v
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
push.s "Buffering..."@24856
conv.s.v
push.v 872.y
pushi.e 160
sub.i.v
push.v 872.x
pushi.e 65
sub.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v 872.y
pushi.e 90
sub.i.v
push.v 872.x
pushloc.v local.rightside
add.v.v
push.v 872.y
pushi.e 100
sub.i.v
push.v 872.x
pushi.e 65
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
b [end]

:[end]