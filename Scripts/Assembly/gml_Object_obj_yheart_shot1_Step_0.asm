.localvar 2 arguments

:[0]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.image_alpha
push.d 0.1
push.v self.f
mul.v.d
add.v.v
pop.v.v self.image_alpha
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_xscale
push.d 0.1
push.v self.f
mul.v.d
add.v.v
pop.v.v self.image_xscale

:[3]
push.v self.image_yscale
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
push.v self.image_yscale
push.d 0.1
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.image_yscale

:[5]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 80
add.i.v
cmp.v.v GTE
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]