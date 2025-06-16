.localvar 2 arguments

:[0]
push.v self.recruit_sprite_map
call.i ds_map_destroy(argc=1)
popz.v
push.v self.recruit_dialog_map
call.i ds_map_destroy(argc=1)
popz.v

:[end]