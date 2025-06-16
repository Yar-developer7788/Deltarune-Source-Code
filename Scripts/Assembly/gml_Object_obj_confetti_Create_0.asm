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
pushi.e 0
pop.v.i self.fallspeed
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

:[end]