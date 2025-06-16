.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -4
pop.v.i self.explosion
pushi.e -4
pop.v.i self.cake
pushi.e -4
pop.v.i self.healanim
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]