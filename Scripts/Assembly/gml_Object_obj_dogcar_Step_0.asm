.localvar 2 arguments

:[0]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v 82.y
pushi.e 10
sub.i.v
pop.v.v self.y
push.v self.x
push.v 82.x
cmp.v.v LTE
bf [end]

:[2]
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.x

:[end]