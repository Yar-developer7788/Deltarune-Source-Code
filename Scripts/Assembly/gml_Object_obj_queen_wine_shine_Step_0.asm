.localvar 2 arguments

:[0]
push.v 581.x
pushi.e 8
sub.i.v
pop.v.v self.x
push.v 581.y
pushi.e 15
sub.i.v
pop.v.v self.y
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.07
add.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 1.1
cmp.d.v GT
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
push.d 0.07
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.05
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
sub.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]