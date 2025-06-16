.localvar 2 arguments

:[0]
push.v self.recording
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.b self.recording
pushi.e 0
pop.v.i self.addIndex
exit.i

:[4]
push.i 168309
setowner.e
push.v 631.x
pushi.e -1
push.v self.addIndex
conv.v.i
pop.v.v [array]self.xpos
push.i 167861
setowner.e
push.v 631.y
pushi.e -1
push.v self.addIndex
conv.v.i
pop.v.v [array]self.ypos
push.v self.addIndex
push.e 1
add.i.v
pop.v.v self.addIndex

:[end]