.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
push.v self.chosencolor
pop.v.v self.image_blend
push.i 900000
pop.v.i self.depth
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [end]

:[1]
push.i 850000
pop.v.i self.depth

:[end]