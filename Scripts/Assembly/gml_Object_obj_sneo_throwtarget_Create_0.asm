.localvar 2 arguments

:[0]
push.d 0.2
pop.v.d self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.d 0.5
pop.v.d self.image_speed
pushi.e 15
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
push.i 65535
pop.v.i self.image_blend
pushi.e 2013
pop.v.i self.sprite_index
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

:[end]