.localvar 2 arguments

:[0]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]