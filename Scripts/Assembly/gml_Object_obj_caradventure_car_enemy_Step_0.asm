.localvar 2 arguments

:[0]
push.v self.hitted
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.rottimer
push.e 1
sub.i.v
pop.v.v self.rottimer
push.v self.rottimer
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.image_angle
pushi.e 4
pop.v.i self.rottimer

:[3]
push.v self.y
pushi.e -100
cmp.i.v LTE
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]