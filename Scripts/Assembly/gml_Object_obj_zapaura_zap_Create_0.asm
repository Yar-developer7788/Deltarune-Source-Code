.localvar 2 arguments

:[0]
push.i 68097
setowner.e
pushi.e 6
pushi.e 12
conv.i.v
call.i irandom(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.dir
pushi.e 240
pop.v.i self.len
pushi.e 4
pop.v.i self.frag
pushi.e 774
pop.v.i self.actor
pushi.e 500
pop.v.i self.dis
pushi.e -1
pop.v.i self.actor
push.v 631.depth
pushi.e 99
sub.i.v
pop.v.v self.depth
push.d 0.5
push.d 0.75
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_yscale
pushi.e 11
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_index
push.i 16776960
pop.v.i self.image_blend
push.i 8388736
pop.v.i self.tint

:[end]