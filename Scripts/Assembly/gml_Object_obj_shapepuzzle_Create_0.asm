.localvar 2 arguments

:[0]
push.i 999990
pop.v.i self.depth
pushi.e 60
push.v self.image_xscale
mul.v.i
pop.v.v self.puzzleSize
pushi.e 0
pop.v.b self.setupComplete
pushi.e 1
pop.v.b self.goalCheck
pushi.e 0
pop.v.b self.goalHit
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.finalGlow
pushi.e 1
pop.v.b self.insideOnly
pushbltn.v builtin.room
pushi.e 163
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.plot
pushi.e 105
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.b self.goalHit
push.d 0.7
pop.v.d self.finalGlow

:[3]
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bf [6]

:[4]
pushglb.v global.plot
pushi.e 110
cmp.i.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.b self.goalHit
push.d 0.7
pop.v.d self.finalGlow

:[6]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
bf [9]

:[7]
pushglb.v global.plot
pushi.e 115
cmp.i.v GTE
bf [9]

:[8]
pushi.e 1
pop.v.b self.goalHit
push.d 0.7
pop.v.d self.finalGlow

:[9]
pushi.e 0
pop.v.b self.inUse
pushi.e 0
pop.v.i self.instructionLerp

:[end]