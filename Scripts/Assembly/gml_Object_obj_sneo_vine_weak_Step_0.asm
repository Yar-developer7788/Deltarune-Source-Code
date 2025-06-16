.localvar 2 arguments

:[0]
push.v self.image_index
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]