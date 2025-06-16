.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.toggle

:[end]