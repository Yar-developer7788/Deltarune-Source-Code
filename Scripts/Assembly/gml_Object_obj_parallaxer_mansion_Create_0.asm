.localvar 2 arguments

:[0]
push.i 1000100
pop.v.i self.depth
pushi.e 0
pop.v.i self.drawx
pushi.e 0
pop.v.i self.drawy
pushi.e 0
pop.v.i self.x_offset
pushi.e 0
pop.v.i self.y_offset
pushbltn.v builtin.room
pushi.e 203
cmp.i.v EQ
bf [2]

:[1]
pushi.e 100
pop.v.i self.y_offset

:[2]
pushbltn.v builtin.room
pushi.e 204
cmp.i.v EQ
bf [4]

:[3]
pushi.e -100
pop.v.i self.y_offset

:[4]
pushbltn.v builtin.room
pushi.e 205
cmp.i.v EQ
bf [6]

:[5]
push.i 9000150
pop.v.i self.depth
pushi.e 100
pop.v.i self.y_offset

:[6]
pushbltn.v builtin.room
pushi.e 206
cmp.i.v EQ
bf [end]

:[7]
pushi.e -200
pop.v.i self.y_offset
push.i 1000300
pop.v.i self.depth

:[end]