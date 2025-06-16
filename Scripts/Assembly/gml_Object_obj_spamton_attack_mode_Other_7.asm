.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.state

:[end]