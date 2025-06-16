.localvar 2 arguments

:[0]
pushi.e 5000
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
push.i 65535
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.boss
pushi.e 0
pop.v.i self.bosscheck
push.i 900000
pop.v.i self.depth

:[end]