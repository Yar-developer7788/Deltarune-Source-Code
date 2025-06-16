.localvar 2 arguments

:[0]
push.v self.disable_surface
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.surface
call.i surface_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v self.surface
call.i surface_free(argc=1)
popz.v

:[end]