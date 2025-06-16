.localvar 2 arguments

:[0]
push.v self.image_xscale
push.d 0.4
cmp.d.v EQ
bf [end]

:[1]
push.v 574.sprite_index
pushi.e 1890
cmp.i.v EQ
bf [3]

:[2]
push.v 574.x
pushi.e 35
add.i.v
pop.v.v self.x
push.v 574.y
pushi.e 10
add.i.v
pop.v.v self.y

:[3]
push.v 574.sprite_index
pushi.e 1884
cmp.i.v EQ
bf [end]

:[4]
push.v 574.x
pushi.e 28
add.i.v
pop.v.v self.x
push.v 574.y
pushi.e 28
add.i.v
pop.v.v self.y

:[end]