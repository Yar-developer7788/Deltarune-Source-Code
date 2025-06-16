.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.image_xscale
pushi.e 26
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
pushi.e 2
add.i.v
pop.v.v self.image_xscale

:[2]
push.v self.image_yscale
pushi.e 12
cmp.i.v LT
bf [end]

:[3]
push.v self.image_yscale
pushi.e 1
add.i.v
pop.v.v self.image_yscale

:[end]