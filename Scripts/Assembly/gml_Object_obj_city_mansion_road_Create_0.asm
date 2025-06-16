.localvar 2 arguments

:[0]
pushi.e 320
pop.v.i self.cx
pushi.e 10
pop.v.i self.factor
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bred

:[end]