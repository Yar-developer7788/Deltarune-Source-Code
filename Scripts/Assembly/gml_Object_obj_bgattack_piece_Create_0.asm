.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.xrange
push.d 0.1
pop.v.d self.vspeed
push.d 0.02
pop.v.d self.gravity
pushi.e 0
pop.v.i self.init
push.v 777.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.animtimer
pushi.e 1
pop.v.i self.flip
pushi.e 0
pop.v.i self.create_hitbox
pushi.e 2
pop.v.i self.rep
pushi.e 0
pop.v.i self.variant
pushi.e 0
pop.v.i self.playsounds

:[end]