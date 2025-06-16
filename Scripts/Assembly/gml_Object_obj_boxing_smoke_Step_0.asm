.localvar 2 arguments

:[0]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]