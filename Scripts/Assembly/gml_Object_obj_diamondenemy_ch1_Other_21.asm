.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 332
cmp.i.v EQ
bf [2]

:[1]
push.i 231204
setowner.e
pushi.e -5
pushi.e 500
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[2]
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[4]
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e -5
pushi.e 501
pop.v.v [array]self.flag

:[end]