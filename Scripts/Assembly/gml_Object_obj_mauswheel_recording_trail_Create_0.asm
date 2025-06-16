.localvar 2 arguments

:[0]
push.v self.depth
pushi.e 4
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.cycleoffset
pushi.e 0
pop.v.i self.index
pushi.e 0
pop.v.i self.totalpoints
pushi.e 5
pop.v.i self.timer
push.i 168063
setowner.e
push.v 631.x
pushi.e 8
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.heartposx
push.i 171913
setowner.e
push.v 631.y
pushi.e 8
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.heartpoxy
pushi.e 0
pop.v.i self.followindex

:[end]