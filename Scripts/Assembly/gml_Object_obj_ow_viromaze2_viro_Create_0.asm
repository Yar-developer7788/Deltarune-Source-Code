.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 50
add.i.v
pop.v.v self.shotSpeed
pushi.e 0
pop.v.i self.spear
push.d 0.25
pop.v.d self.image_speed
push.i 100000
pop.v.i self.depth

:[end]