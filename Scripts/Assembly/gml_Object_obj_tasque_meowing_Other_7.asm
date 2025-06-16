.localvar 2 arguments

:[0]
push.v self.loop
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.image_speed
push.v self.image_number
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[end]