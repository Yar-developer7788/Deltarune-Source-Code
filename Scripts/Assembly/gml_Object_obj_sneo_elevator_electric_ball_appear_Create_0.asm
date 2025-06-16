.localvar 2 arguments

:[0]
pushi.e 2047
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
push.d 0.01
pop.v.d self.image_xscale
push.d 0.01
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.type
pushi.e 40
conv.i.v
call.i random(argc=1)
pop.v.v self.siner

:[end]