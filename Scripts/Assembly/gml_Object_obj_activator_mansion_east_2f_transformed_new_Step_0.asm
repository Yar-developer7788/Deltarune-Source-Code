.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.count
pushi.e 260
pushenv [6]

:[1]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v other.count
push.e 1
add.i.v
pop.v.v other.count

:[6]
popenv [1]
push.v self.count
pushi.e 6
cmp.i.v EQ
bf [end]

:[7]
pushi.e 260
pushenv [10]

:[8]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.b self.activated

:[10]
popenv [8]

:[end]