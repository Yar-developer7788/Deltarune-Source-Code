.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [3]

:[1]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1422
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.forceact
pushi.e 0
pop.v.i self.introanim

:[6]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [9]

:[7]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1438
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.forceact
pushi.e 0
pop.v.i self.introanim

:[12]
push.v self.sprite_index
pushi.e 1506
cmp.i.v EQ
bf [15]

:[13]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 1512
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 9
pop.v.i self.image_index
pushi.e 0
pop.v.i self.forceact
pushi.e 0
pop.v.i self.introanim

:[end]