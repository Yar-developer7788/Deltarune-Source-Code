.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]