.localvar 2 arguments

:[0]
push.v 646.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.v self.x
pop.v.v self.left
push.v self.x
pop.v.v self.right
push.v self.y
pop.v.v self.top
push.v self.y
pop.v.v self.bottom
pushi.e 0
pop.v.i self.glerp
pushi.e 1
pop.v.i self.size

:[end]