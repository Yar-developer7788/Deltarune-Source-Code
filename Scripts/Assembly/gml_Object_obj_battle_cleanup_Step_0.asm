.localvar 2 arguments

:[0]
pushi.e 352
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[1]
push.v self.custom_box_sprite
call.i sprite_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.custom_box_sprite
call.i sprite_delete(argc=1)
popz.v

:[3]
call.i @@This@@(argc=0)
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]