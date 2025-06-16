.localvar 2 arguments

:[0]
push.v self.canchoose
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.choiced
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.choiced
push.v self.mychoice
pop.v.v global.choice
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]