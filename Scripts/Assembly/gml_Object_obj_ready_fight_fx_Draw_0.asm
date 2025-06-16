.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 1.3
cmp.d.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.con

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
call.i draw_self(argc=0)
popz.v

:[end]