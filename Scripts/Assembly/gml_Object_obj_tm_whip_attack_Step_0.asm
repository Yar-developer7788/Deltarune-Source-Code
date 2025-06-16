.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.damage
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.animSpeed
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.animSpeed
push.v self.creator
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.quizmode
conv.v.b
not.b
bf [3]

:[2]
push.v self.difficulty
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.difficulty

:[3]
push.v self.attacktimer
push.v self.animSpeed
add.v.v
pop.v.v self.attacktimer
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.attacktimer
pushi.e 20
cmp.i.v GTE
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
pop.v.i self.state
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state
b [10]

:[9]
pushi.e 19
pop.v.i self.attacktimer

:[10]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.attacktimer
pushi.e 35
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 2
pop.v.i self.state
pushi.e 2
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.b [stacktop]self.zapping

:[15]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v self.attacktimer
pushi.e 55
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 3
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state
pushi.e 3
pop.v.i self.state

:[20]
push.v self.attacktimer
pushi.e 65
cmp.i.v GTE
bf [end]

:[21]
pushi.e 0
pop.v.i self.state
pushi.e 5
pop.v.i self.attacktimer

:[end]