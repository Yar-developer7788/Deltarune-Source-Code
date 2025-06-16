.localvar 2 arguments

:[0]
push.v self.image_xscale
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
push.d 0.5
add.d.v
pop.v.v self.image_xscale

:[2]
push.v self.image_xscale
pushi.e 6
cmp.i.v GTE
bf [end]

:[3]
push.v self.speed
pushi.e 4
add.i.v
pop.v.v self.speed
push.v self.speed
pushi.e 20
cmp.i.v GTE
bf [end]

:[4]
pushi.e 0
pop.v.i self.active
push.v self.image_yscale
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale

:[6]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]