.localvar 2 arguments

:[0]
push.v self.healthbar_surf
call.i surface_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.healthbar_surf
call.i surface_free(argc=1)
popz.v

:[end]