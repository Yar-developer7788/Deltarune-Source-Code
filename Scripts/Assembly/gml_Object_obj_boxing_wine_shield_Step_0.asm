.localvar 2 arguments

:[0]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 789.x
pushi.e 18
sub.i.v
pop.v.v self.x
b [end]

:[4]
push.v 789.x
pushi.e 18
add.i.v
pop.v.v self.x

:[end]