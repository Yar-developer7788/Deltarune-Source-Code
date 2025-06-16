.localvar 2 arguments

:[0]
push.v self.slowOff
conv.v.b
bf [2]

:[1]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.d 0.025
sub.d.v
pop.v.v self.image_alpha

:[5]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[6]
pushi.e 0
pop.v.b self.visible

:[end]