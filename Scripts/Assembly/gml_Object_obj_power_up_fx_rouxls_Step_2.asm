.localvar 2 arguments

:[0]
push.v self.parent
pushi.e -4
cmp.i.v NEQ
bf [end]

:[1]
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.v self.parent
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index

:[end]