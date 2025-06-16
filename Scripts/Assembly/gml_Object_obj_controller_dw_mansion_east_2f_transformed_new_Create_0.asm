.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.sidea
pushi.e 0
pop.v.i self.sideb
pushi.e 0
pop.v.i self.imagespeed
pushi.e 0
pop.v.i self.alphaer
pushi.e 0
conv.i.v
push.s "TILES_SIDE_A"@14748
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "TILES_SIDE_B"@14750
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[end]