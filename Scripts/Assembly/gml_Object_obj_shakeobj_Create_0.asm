.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.target
pushi.e 10
pop.v.i self.shakeamt
pushi.e 2
pop.v.i self.shakereduct
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i self.shakeamt
pushi.e 1
pop.v.i self.shakereduct

:[2]
pushi.e 1
pop.v.i self.shakespeed
pushi.e 0
pop.v.i self.nowx
pushi.e 0
pop.v.i self.nowy
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.timer

:[end]