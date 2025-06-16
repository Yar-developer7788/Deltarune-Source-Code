.localvar 2 arguments

:[0]
push.v self.built
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.bridgetarget
push.s "bridge1"@14233
cmp.s.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 378
pop.v.v [array]self.flag

:[3]
push.v self.bridgetarget
push.s "bridge2"@14234
cmp.s.v EQ
bf [end]

:[4]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 377
pop.v.v [array]self.flag

:[end]