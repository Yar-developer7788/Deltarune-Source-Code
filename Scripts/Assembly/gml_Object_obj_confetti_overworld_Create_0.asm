.localvar 2 arguments

:[0]
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
call.i random_range(argc=2)
pop.v.v self.speed
pushi.e 2
pop.v.i self.friction
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
neg.v
pop.v.v self.fallspeed
push.d 94.24777960769379
conv.d.v
call.i random(argc=1)
pop.v.v self.siner
push.i 4235519
conv.i.v
push.i 16776960
conv.i.v
push.i 5592575
conv.i.v
push.i 5635925
conv.i.v
push.i 16733525
conv.i.v
call.i choose(argc=5)
pop.v.v self.image_blend
pushi.e 1
pop.v.i self.height
pushi.e 1
pop.v.b self.airborne
pushi.e 0
pop.v.b self.destroyOnLand
pushi.e 0
pop.v.i self.falltime
pushi.e 0
pop.v.b self.init
push.i 800000
pop.v.i self.maxDepth
push.v self.friction
pop.v.v self.fallFriction
pushi.e 340
pop.v.i self.maxy
pushi.e -4
pop.v.i self.shadow
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]