.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.pressed
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.image_speed
push.i 900000
push.v self.y
sub.v.i
pop.v.v self.depth
pushi.e 0
pop.v.i self.drawY

:[end]