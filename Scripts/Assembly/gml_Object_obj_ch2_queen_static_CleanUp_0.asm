.localvar 2 arguments

:[0]
push.v self.goggles_surface
call.i surface_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.goggles_surface
call.i surface_free(argc=1)
popz.v

:[2]
push.v self.static_surface
call.i surface_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v self.static_surface
call.i surface_free(argc=1)
popz.v

:[end]