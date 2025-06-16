.localvar 2 arguments

:[0]
push.s "capn"@14116
pop.v.s self.extflag
pushi.e 1259
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]