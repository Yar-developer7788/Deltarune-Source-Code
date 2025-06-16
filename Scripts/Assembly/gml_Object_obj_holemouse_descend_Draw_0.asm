.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.y
pushi.e 400
cmp.i.v GT
bf [end]

:[1]
push.v self.y
pushi.e 200
sub.i.v
pushi.e 480
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]