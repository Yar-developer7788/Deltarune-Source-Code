.localvar 2 arguments

:[0]
push.v self.image_xscale
push.v self.growamt
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.growamt
add.v.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.v self.fadespeed
sub.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.6
cmp.d.v LT
bf [2]

:[1]
push.v self.fadespeed
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.active

:[5]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [7]

:[6]
push.v self.fadespeed
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.8
mul.d.v
pop.v.v self.image_alpha

:[12]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.image_angle

:[end]