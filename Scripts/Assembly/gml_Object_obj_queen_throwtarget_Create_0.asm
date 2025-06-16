.localvar 2 arguments

:[0]
push.d 0.2
pop.v.d self.image_xscale
push.d 0.2
pop.v.d self.image_yscale
push.d 0.5
pop.v.d self.image_speed
pushi.e 15
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
pushi.e 1
pop.v.i self.good
pushi.e 0
pop.v.i self.offing
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.collided
pushi.e 500
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 15
conv.i.v
call.i random(argc=1)
pushi.e 200
conv.i.d
div.d.v
pop.v.v self.n
pushi.e -1
pop.v.i self.vineid
pushi.e 0
pop.v.i self.stopmoving
pushi.e 0
pop.v.i self.growstate
pushi.e 0
pop.v.i self.x_offset

:[end]