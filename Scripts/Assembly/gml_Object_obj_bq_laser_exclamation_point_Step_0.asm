.localvar 2 arguments

:[0]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_index
pushi.e 3
sub.i.v
pop.v.v self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v self.image_index
pushi.e 0
cmp.i.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]