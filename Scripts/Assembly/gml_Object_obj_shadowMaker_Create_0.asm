.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.spawned
pushi.e 1
pop.v.i self.shadLength
push.d 0.8
pop.v.d self.floorshadOpacity
push.d 0.8
pop.v.d self.frontshadOpacity
pushi.e 0
pop.v.i self.floorShadowColor
pushi.e 0
pop.v.i self.frontShadowColor
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.init
pushbltn.v builtin.room
pushi.e 198
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.type

:[end]