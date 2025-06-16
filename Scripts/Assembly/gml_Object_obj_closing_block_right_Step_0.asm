.localvar 2 arguments

:[0]
push.v self.x
push.v self.grav
add.v.v
pop.v.v self.x
push.v self.grav
push.d 0.6
sub.d.v
pop.v.v self.grav
push.v self.x
pushi.e 320
cmp.i.v LTE
bf [end]

:[1]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 320
pop.v.i self.x
pushi.e 0
pop.v.i self.grav
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 1
pop.v.i self.state

:[end]