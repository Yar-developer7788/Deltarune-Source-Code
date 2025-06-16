.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 910
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 910
pop.v.v [array]self.flag

:[end]