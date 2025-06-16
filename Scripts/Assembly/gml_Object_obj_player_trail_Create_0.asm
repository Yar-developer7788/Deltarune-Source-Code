.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.type
push.v self.depth
pushi.e 4
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.cycleoffset
pushi.e 0
pop.v.i self.init

:[end]