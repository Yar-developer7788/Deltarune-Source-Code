.localvar 2 arguments

:[0]
push.v self.char
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1119
pushenv [3]

:[2]
pushi.e -1
pop.v.i self.lastmarker

:[3]
popenv [2]
pushi.e 1
pop.v.i self.lastmarker

:[end]