.localvar 2 arguments

:[0]
pushglb.v global.fighting
conv.v.b
bf [10]

:[1]
pushglb.v global.encounterno
pushi.e 90
cmp.i.v EQ
bf [3]

:[2]
push.i 231204
setowner.e
pushi.e 91
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag

:[3]
pushglb.v global.encounterno
pushi.e 91
cmp.i.v EQ
bf [5]

:[4]
pushi.e 92
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag

:[5]
pushglb.v global.encounterno
pushi.e 92
cmp.i.v EQ
bf [7]

:[6]
pushi.e 93
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag

:[7]
pushglb.v global.encounterno
pushi.e 93
cmp.i.v EQ
bf [9]

:[8]
pushi.e 94
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag

:[9]
b [end]

:[10]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag

:[end]