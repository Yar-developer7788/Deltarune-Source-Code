.localvar 2 arguments

:[0]
push.d 0.25
pop.v.d self.gravity
push.i 68097
setowner.e
pushi.e 20
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_xscale
push.v 631.depth
pushi.e 99
sub.i.v
pop.v.v self.depth

:[end]