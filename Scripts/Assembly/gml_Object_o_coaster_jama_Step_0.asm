.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [19]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[2]
push.v self.chancer
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1875
pop.v.i self.sprite_index

:[4]
push.v self.contimer
push.e 1
add.i.v
pop.v.v self.contimer
push.v self.flashtimer
push.e 1
add.i.v
pop.v.v self.flashtimer
push.v self.flashtimer
pushi.e 2
cmp.i.v EQ
bf [9]

:[5]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.image_alpha
b [8]

:[7]
pushi.e 0
pop.v.i self.image_alpha

:[8]
pushi.e 0
pop.v.i self.flashtimer

:[9]
push.v self.contimer
push.v self.waitamount
cmp.v.v GTE
bf [11]

:[10]
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.con

:[14]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e -2
pop.v.i self.hspeed
pushi.e 180
pop.v.i self.gravity_direction
push.d 0.5
pop.v.d self.gravity
pushi.e 2
pop.v.i self.con

:[16]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[17]
push.v self.x
pushi.e -20
cmp.i.v LTE
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[20]
push.v self.contimer
push.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
push.v self.waitamount
cmp.v.v GTE
bf [end]

:[21]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]