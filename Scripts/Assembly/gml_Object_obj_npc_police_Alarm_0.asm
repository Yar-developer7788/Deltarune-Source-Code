.localvar 2 arguments

:[0]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
push.v self.repeatalarm
conv.v.b
bf [end]

:[1]
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]