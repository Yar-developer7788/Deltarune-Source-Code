.localvar 2 arguments
.localvar 7017 a 13222

:[0]
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.variant
push.v 697.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.i 166973
setowner.e
push.v 697.x
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
push.v self.i
pushi.e 5
mul.i.v
add.v.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x1
push.i 166975
setowner.e
push.v 697.x
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partxoff
push.d 1.5
div.d.v
add.v.v
push.v self.i
pushi.e 8
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2
push.i 166974
setowner.e
push.v 697.y
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y1
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y2
push.i 171512
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2_target
push.i 171513
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2_origin
push.i 170989
setowner.e
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partvisible
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.visiblevine
push.i 171514
setowner.e
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partweakened
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weakened
push.i 237044
setowner.e
pushi.e 0
conv.i.v
pushi.e 697
push.v self.i
conv.v.i
pop.v.v [array]self.partvisible
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.variant
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [7]

:[6]
push.i 171512
setowner.e
push.v 697.x
pushi.e 300
sub.i.v
push.v self.i
pushi.e 130
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2_target
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e -1
pushi.e 3
push.v [array]self.x2_target
pop.v.v local.a
push.i 171512
setowner.e
pushi.e -1
pushi.e 4
push.v [array]self.x2_target
pushi.e -1
pushi.e 3
pop.v.v [array]self.x2_target
pushloc.v local.a
pushi.e -1
pushi.e 4
pop.v.v [array]self.x2_target

:[end]