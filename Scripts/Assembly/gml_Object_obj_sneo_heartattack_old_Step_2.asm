.localvar 2 arguments

:[0]
push.v self.bustertimer
pushi.e 100
cmp.i.v GTE
bf [2]

:[1]
push.v self.bustertimer
pushi.e 159
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 697
pushenv [7]

:[5]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.armangle
pushi.e 1
pop.v.i self.aimmode
push.v self.armangle
pop.v.v self.armaim

:[7]
popenv [5]
pushi.e 632
pushenv [9]

:[8]
push.v 697.x
pushi.e 697
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e 697
pushi.e 1
push.v [array]self.partxoff
add.v.v
pushi.e 697
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v 697.armlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v 697.y
pushi.e 697
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e 697
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e 697
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v 697.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[9]
popenv [8]

:[end]