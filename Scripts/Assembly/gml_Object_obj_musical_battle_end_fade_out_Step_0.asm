.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 2
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.con

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]