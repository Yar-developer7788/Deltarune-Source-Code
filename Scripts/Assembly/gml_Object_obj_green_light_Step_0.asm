.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.faster
pushi.e 0
cmp.i.v EQ
bf [8]

:[3]
push.v self.timer
pushi.e 3
cmp.i.v LT
bf [5]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[5]
push.v self.timer
pushi.e 3
cmp.i.v GTE
bf [7]

:[6]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[7]
b [end]

:[8]
push.v self.timer
pushi.e 2
cmp.i.v LT
bf [10]

:[9]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[10]
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [end]

:[11]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[end]