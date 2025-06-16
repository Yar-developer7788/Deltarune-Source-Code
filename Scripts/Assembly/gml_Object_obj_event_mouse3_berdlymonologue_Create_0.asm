.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.jp
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.jp

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.msgtimer
pushi.e -4
pop.v.i self.d

:[end]