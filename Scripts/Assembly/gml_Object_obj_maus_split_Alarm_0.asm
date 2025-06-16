.localvar 2 arguments

:[0]
push.v self.mcon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.mousecount
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.mcon

:[end]