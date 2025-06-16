.localvar 2 arguments

:[0]
pushi.e 0
conv.b.v
push.s "TILES_Edge_Hidden"@37987
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.i 100001
pop.v.i self.depth
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.forcefield
pushi.e 0
pop.v.i self.animsiner

:[end]