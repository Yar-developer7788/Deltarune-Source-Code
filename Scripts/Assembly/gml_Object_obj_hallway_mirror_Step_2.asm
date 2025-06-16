.localvar 2 arguments

:[0]
push.v self.shadow
pushi.e -9
pushenv [9]

:[1]
push.v 82.x
pop.v.v self.x
push.v 82.sprite_index
pop.v.v self.sprite_index
push.v 82.image_index
pop.v.v self.image_index
pushi.e 192
push.v 82.y
sub.v.i
pop.v.v self.y
push.v 82.sprite_index
pushi.e 661
cmp.i.v EQ
bf [3]

:[2]
pushi.e 663
pop.v.i self.sprite_index

:[3]
push.v 82.sprite_index
pushi.e 663
cmp.i.v EQ
bf [5]

:[4]
pushi.e 661
pop.v.i self.sprite_index

:[5]
push.v 82.sprite_index
pushi.e 660
cmp.i.v EQ
bf [7]

:[6]
pushi.e 660
pop.v.i self.sprite_index

:[7]
push.v 82.sprite_index
pushi.e 658
cmp.i.v EQ
bf [9]

:[8]
pushi.e 658
pop.v.i self.sprite_index

:[9]
popenv [1]

:[end]