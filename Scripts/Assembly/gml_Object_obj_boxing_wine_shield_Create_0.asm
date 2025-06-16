.localvar 2 arguments

:[0]
push.d 1.2
pop.v.d self.image_alpha
push.d 1.8
pop.v.d self.image_xscale
push.d 1.8
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.state
push.v 789.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 789.x
pushi.e 18
sub.i.v
pop.v.v self.x
b [3]

:[2]
push.v 789.x
pushi.e 18
add.i.v
pop.v.v self.x

:[3]
push.v 789.y
pushi.e 128
sub.i.v
pop.v.v self.y

:[end]