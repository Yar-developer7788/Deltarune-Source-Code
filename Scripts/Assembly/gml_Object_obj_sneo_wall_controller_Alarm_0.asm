.localvar 2 arguments

:[0]
push.v self.turnaroundcon
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.timer
pushi.e 3
cmp.i.v GTE
bf [3]

:[2]
push.d -1.1
pop.v.d self.sinetargetspeed

:[3]
push.i 68097
setowner.e
pushi.e 98
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[4]
push.v self.turnaroundcon
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v self.timer
pushi.e 3
cmp.i.v GTE
bf [7]

:[6]
push.d 1.2
pop.v.d self.sinetargetspeed

:[7]
push.v self.turnaroundcon
push.e 1
add.i.v
pop.v.v self.turnaroundcon

:[end]