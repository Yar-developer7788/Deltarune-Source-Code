.localvar 2 arguments

:[0]
push.v self.speed
pushi.e -6
cmp.i.v GT
bf [end]

:[1]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed

:[end]