.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
push.d 0.75
pop.v.d self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.yscale
push.d 0.75
pop.v.d self.xscale

:[end]