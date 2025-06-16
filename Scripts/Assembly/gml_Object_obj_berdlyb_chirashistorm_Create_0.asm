.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 7
pop.v.i self.damage
push.v 872.x
pushi.e 80
add.i.v
pop.v.v self.originx
push.v 872.y
pushi.e 140
sub.i.v
pop.v.v self.originy
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.init
pushi.e -1
pop.v.i self.target
pushi.e 1
pop.v.b self.first_set

:[end]