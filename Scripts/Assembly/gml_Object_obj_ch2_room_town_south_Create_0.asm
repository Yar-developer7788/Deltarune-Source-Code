.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [3]

:[1]
pushi.e -5
pushi.e 443
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 444
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.con
b [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]