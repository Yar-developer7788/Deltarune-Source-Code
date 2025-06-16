.localvar 2 arguments

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_delete(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_delete(argc=1)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]