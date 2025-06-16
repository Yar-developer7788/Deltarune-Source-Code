.localvar 2 arguments

:[0]
push.v self.screenshot
call.i sprite_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.screenshot
call.i sprite_delete(argc=1)
popz.v

:[end]