.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 16
cmp.i.v NEQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]