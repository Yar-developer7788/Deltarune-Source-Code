.localvar 2 arguments

:[0]
pushi.e -3
pushenv [8]

:[1]
push.v self.visible
pushi.e 1
cmp.b.v EQ
bf [8]

:[2]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.b self.visible

:[4]
push.v self.sprite_index
pushi.e 824
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.b self.visible

:[6]
push.v self.sprite_index
pushi.e 653
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.b self.visible

:[8]
popenv [1]

:[end]