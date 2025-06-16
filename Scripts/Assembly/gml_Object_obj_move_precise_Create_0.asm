.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.moved
pushi.e 0
pop.v.i self.movecount
pushi.e 1
pop.v.i self.movemax
push.i 348398493
pop.v.i self.target
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.remx
pushi.e 0
pop.v.i self.remy
pushi.e 0
pop.v.i self.returnToOrigin
pushi.e 1
pop.v.i self.xOrientation
pushi.e 1
pop.v.i self.yOrientation
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [end]

:[2]
push.i 166013
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.xx
push.i 166014
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yy
push.i 169496
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.image
push.i 172380
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.imagexscale
push.i 172381
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.imageyscale
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]