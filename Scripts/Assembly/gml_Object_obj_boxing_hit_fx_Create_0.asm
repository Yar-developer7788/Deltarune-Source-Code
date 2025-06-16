.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.spin
pushi.e 8
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
push.v 777.depth
pushi.e 3
sub.i.v
pop.v.v self.depth
pushi.e 12
pop.v.i self.speed
pushi.e 1
pop.v.i self.gravity

:[end]