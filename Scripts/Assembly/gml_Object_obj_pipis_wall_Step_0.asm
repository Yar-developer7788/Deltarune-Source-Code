.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
b [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 48
mul.i.v
add.v.v
pop.v.v self.x

:[9]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]