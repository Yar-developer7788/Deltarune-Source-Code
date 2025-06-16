.localvar 2 arguments

:[0]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [2]

:[1]
pushi.e 2689
pop.v.i self.sprite_index
b [3]

:[2]
pushi.e 2690
pop.v.i self.sprite_index

:[3]
pushi.e 2
pop.v.i self.image_xscale
pushi.e -2
pop.v.i self.image_yscale
pushi.e 16
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.hastarget

:[end]