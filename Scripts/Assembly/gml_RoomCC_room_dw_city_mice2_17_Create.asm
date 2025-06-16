.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [end]

:[1]
pushi.e 3293
pop.v.i self.sprite_index

:[end]