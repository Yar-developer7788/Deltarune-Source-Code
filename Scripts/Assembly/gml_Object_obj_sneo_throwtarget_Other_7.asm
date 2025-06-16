.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 2010
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]