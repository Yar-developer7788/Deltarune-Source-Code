.localvar 2 arguments

:[0]
push.v self.likes_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.dislikes_list
call.i ds_list_destroy(argc=1)
popz.v

:[end]