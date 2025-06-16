.localvar 2 arguments

:[0]
push.v self.fadebg
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.fadebg
call.i instance_destroy(argc=1)
popz.v

:[2]
push.v self.ring_surf
call.i surface_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v self.ring_surf
call.i surface_free(argc=1)
popz.v

:[end]