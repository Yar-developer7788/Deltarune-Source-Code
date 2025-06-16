.localvar 2 arguments

:[0]
pushi.e 1241
pop.v.i self.sprite_index
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 2
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]