.localvar 2 arguments

:[0]
push.v self.fade_in
conv.v.b
bf [end]

:[1]
push.v self.sign_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[2]
push.v self.sign_alpha
push.d 0.1
add.d.v
pop.v.v self.sign_alpha
push.v self.sign_alpha
pushi.e 1
cmp.i.v GTE
bf [end]

:[3]
pushi.e 0
pop.v.b self.fade_in
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]