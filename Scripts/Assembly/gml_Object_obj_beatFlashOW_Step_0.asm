.localvar 2 arguments

:[0]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [end]

:[3]
pushi.e 0
pop.v.i self.image_alpha

:[end]