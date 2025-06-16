.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
push.i 65280
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.type
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.siner

:[end]