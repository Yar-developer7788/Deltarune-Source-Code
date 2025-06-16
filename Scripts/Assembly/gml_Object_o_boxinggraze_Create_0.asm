.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.confirm
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.arcade
b [3]

:[2]
pushi.e 0
pop.v.i self.arcade

:[3]
pushi.e 0
pop.v.i self.tpgain

:[end]