.localvar 2 arguments

:[0]
push.v self.custom_box_sprite
call.i sprite_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.custom_box_sprite
call.i sprite_delete(argc=1)
popz.v

:[2]
call.i @@This@@(argc=0)
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]