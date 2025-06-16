.localvar 2 arguments

:[0]
pushi.e 100
pop.v.i self.depth
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.i 166980
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.alpha
push.i 169394
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.exists
push.i 166104
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.width
push.i 169395
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myx
push.i 169396
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.init

:[end]