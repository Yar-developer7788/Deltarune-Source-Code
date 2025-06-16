.localvar 2 arguments

:[0]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.state

:[end]