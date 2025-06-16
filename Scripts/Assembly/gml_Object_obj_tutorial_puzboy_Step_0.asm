.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.fade
pushi.e 1
cmp.b.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.8
mul.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.8
mul.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
push.v self.x
pushi.e 380
cmp.i.v LT
bf [9]

:[8]
push.v self.x
push.e 1
add.i.v
pop.v.v self.x
b [10]

:[9]
pushi.e 2
pop.v.i self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.x
pushi.e 261
cmp.i.v GT
bf [13]

:[12]
push.v self.x
push.e 1
sub.i.v
pop.v.v self.x
b [end]

:[13]
pushi.e 1
pop.v.i self.con

:[end]