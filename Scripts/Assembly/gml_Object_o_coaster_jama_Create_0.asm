.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.flashtimer
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.bigcar
pushi.e 2
pop.v.i self.bigcarhp
pushi.e 20
pop.v.i self.waitamount
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.active
pushi.e 200
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.chancer
pushi.e 0
pop.v.i self.moveberd
pushi.e 0
pop.v.i self.image_speed

:[end]