.localvar 2 arguments

:[0]
push.v self.y
push.v 373.y
pushi.e 14
sub.i.v
push.v self.speed
sub.v.v
cmp.v.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
push.v 373.y
pushi.e 14
sub.i.v
pop.v.v self.y

:[end]