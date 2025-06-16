.localvar 2 arguments

:[0]
push.v other.nointeract
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.graceperiod
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
push.v other.con
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]