.localvar 2 arguments

:[0]
push.v self.smashed
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
pop.v.i self.smashed
pushi.e 0
pop.v.i self.timer
pushi.e 999
pop.v.i 536.hitstun

:[end]