.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.collide
pushi.e -1
pop.v.i self.collidetimer
pushi.e 0
pop.v.i self.cancollide
pushi.e 0
pop.v.i self.collider
pushi.e 0
pop.v.i self.slidetimer
pushi.e 0
pop.v.i self.abovey
pushi.e 0
pop.v.i self.move_lr_enabled
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1
pop.v.i self.move_lr_enabled

:[end]