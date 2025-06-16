.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.con
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
pushi.e 162
pushi.e 36
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction

:[end]