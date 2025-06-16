.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.ralTimer
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.lancerSpin
pushi.e 0
pop.v.i self.totalSpins
pushi.e 1
pop.v.i self.addAmount
pushi.e 0
pop.v.i self.stepAway
pushi.e 0
pop.v.i self.glowValue
pushi.e 0
pop.v.i self.lancerGlow
pushi.e 0
pop.v.i self.tempStarwalker
pushi.e 0
pop.v.i self.lancerCard
pushi.e 0
pop.v.i self.rouxlsCard
pushi.e 0
pop.v.i self.conTimer
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 15
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e -1
pop.v.i self.con

:[5]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
pushglb.v global.plot
pushi.e 10
cmp.i.v EQ
bf [8]

:[7]
pushi.e 50
pop.v.i self.con

:[8]
pushglb.v global.plot
pushi.e 16
cmp.i.v GTE
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]