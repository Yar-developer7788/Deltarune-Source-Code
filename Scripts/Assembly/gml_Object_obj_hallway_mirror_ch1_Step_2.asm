.localvar 2 arguments

:[0]
push.v self.shadow
pushi.e -9
pushenv [9]

:[1]
push.v 1351.x
pop.v.v self.x
push.v 1351.sprite_index
pop.v.v self.sprite_index
push.v 1351.image_index
pop.v.v self.image_index
pushi.e 192
push.v 1351.y
sub.v.i
pop.v.v self.y
push.v 1351.sprite_index
pushi.e 4210
cmp.i.v EQ
bf [3]

:[2]
pushi.e 4212
pop.v.i self.sprite_index

:[3]
push.v 1351.sprite_index
pushi.e 4212
cmp.i.v EQ
bf [5]

:[4]
pushi.e 4210
pop.v.i self.sprite_index

:[5]
push.v 1351.sprite_index
pushi.e 4209
cmp.i.v EQ
bf [7]

:[6]
pushi.e 4209
pop.v.i self.sprite_index

:[7]
push.v 1351.sprite_index
pushi.e 4207
cmp.i.v EQ
bf [9]

:[8]
pushi.e 4207
pop.v.i self.sprite_index

:[9]
popenv [1]

:[end]