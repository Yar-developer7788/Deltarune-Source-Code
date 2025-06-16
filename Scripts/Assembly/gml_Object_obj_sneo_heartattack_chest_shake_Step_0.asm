.localvar 2 arguments

:[0]
push.i 236805
setowner.e
pushi.e 1991
conv.i.v
pushi.e 697
pushi.e 5
pop.v.v [array]self.partsprite
push.i 233521
setowner.e
push.v self.chestoriginx
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 697
pushi.e 4
pop.v.v [array]self.partx
push.i 231357
setowner.e
push.v self.chestoriginy
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 697
pushi.e 4
pop.v.v [array]self.party

:[end]