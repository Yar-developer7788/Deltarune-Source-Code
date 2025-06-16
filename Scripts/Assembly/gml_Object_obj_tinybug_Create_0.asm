.localvar 2 arguments

:[0]
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_xscale
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_yscale
push.i 100001
pop.v.i self.depth
pushi.e 0
pop.v.i self.timer
pushi.e 210
pushi.e 180
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.lifecycle
pushi.e 0
pop.v.i self.getdepth
push.v self.y
pop.v.v self.starty

:[end]