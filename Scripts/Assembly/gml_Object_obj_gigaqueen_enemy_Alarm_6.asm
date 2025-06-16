.localvar 2 arguments

:[0]
push.v self.balloonend
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.talked
b [end]

:[2]
push.d 0.6
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[end]