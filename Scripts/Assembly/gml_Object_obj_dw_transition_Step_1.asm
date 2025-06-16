.localvar 2 arguments

:[0]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [2]

:[1]
push.v self.timer
pushi.e 26
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i 82.cutscene

:[end]