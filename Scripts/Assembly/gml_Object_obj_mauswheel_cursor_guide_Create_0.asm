.localvar 2 arguments

:[0]
push.v self.depth
pushi.e 4
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.cycleoffset
pushi.e -4
pop.v.i self.cursor
pushi.e 0
pop.v.i self.listlength
pushi.e 0
pop.v.i self.image_speed

:[end]