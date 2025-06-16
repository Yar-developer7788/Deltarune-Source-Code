.localvar 2 arguments

:[0]
push.v 631.x
push.v self.left
pushi.e 1
sub.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.left
pushi.e 1
sub.i.v
pop.v.v 631.x

:[2]
push.v 631.x
push.v self.right
pushi.e 16
sub.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.right
pushi.e 16
sub.i.v
pop.v.v 631.x

:[4]
push.v 631.y
push.v self.top
pushi.e 1
sub.i.v
cmp.v.v LT
bf [6]

:[5]
push.v self.top
pushi.e 1
sub.i.v
pop.v.v 631.y

:[6]
push.v 631.y
push.v self.bottom
pushi.e 16
sub.i.v
cmp.v.v GT
bf [end]

:[7]
push.v self.bottom
pushi.e 16
sub.i.v
pop.v.v 631.y

:[end]