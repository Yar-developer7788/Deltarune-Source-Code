.localvar 2 arguments

:[0]
push.v self.endcon
pushi.e 0
cmp.i.v GT
bf [5]

:[1]
push.v self.balloonend
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 4
pop.v.i self.endcon
b [4]

:[3]
pushi.e 2
pop.v.i self.endcon
pushi.e 0
pop.v.i self.talktimer

:[4]
b [end]

:[5]
push.v self.balloonend
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.talked
b [end]

:[7]
push.d 0.6
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[end]