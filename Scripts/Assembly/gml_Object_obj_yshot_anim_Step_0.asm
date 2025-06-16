.localvar 2 arguments

:[0]
push.v self.image_index
push.v self.image_number
pushi.e 1
sub.i.v
cmp.v.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]