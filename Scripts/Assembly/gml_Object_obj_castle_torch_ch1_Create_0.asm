.localvar 2 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v builtin.room
pushi.e 395
cmp.i.v GTE
bf [end]

:[1]
pushi.e 4066
pop.v.i self.sprite_index

:[end]