.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.canchoose
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.choicetotal
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.hy
pushi.e 39
add.i.v
pop.v.v self.hy
push.v self.hx
pushi.e 31
add.i.v
pop.v.v self.hx

:[end]