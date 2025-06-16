.localvar 2 arguments

:[0]
push.v self.outline
conv.v.b
not.b
bf [end]

:[1]
call.i draw_self(argc=0)
popz.v

:[end]