.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [end]

:[1]
call.i draw_self(argc=0)
popz.v

:[end]