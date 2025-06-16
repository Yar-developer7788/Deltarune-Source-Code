.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e 371
pushenv [3]

:[2]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[3]
popenv [2]
pushi.e 574
pushenv [5]

:[4]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[5]
popenv [4]
push.v 371.image_alpha
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 1
pop.v.i self.con

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pop.v.i self.con

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
pushi.e 371
pushenv [15]

:[14]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[15]
popenv [14]
pushi.e 574
pushenv [17]

:[16]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[17]
popenv [16]
push.v 371.image_alpha
pushi.e 1
cmp.i.v GT
bf [end]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]