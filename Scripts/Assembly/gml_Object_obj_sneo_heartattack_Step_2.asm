.localvar 2 arguments

:[0]
push.v self.difficulty
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.bustertimer
push.e 1
add.i.v
pop.v.v self.bustertimer
push.v self.flyingheadtimer
push.e 1
add.i.v
pop.v.v self.flyingheadtimer

:[2]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [25]

:[3]
push.v self.bustertimer
pushi.e 40
cmp.i.v EQ
bf [7]

:[4]
pushi.e 697
pushenv [6]

:[5]
pushi.e 3
pop.v.i self.partmode
push.v 631.y
push.v 631.x
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
call.i point_direction(argc=4)
pop.v.v self.armangle
pushi.e 2
pop.v.i self.aimmode
push.v self.armangle
pop.v.v self.armaim
pushi.e 632
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.i.v [stacktop]self.depth
push.v self.damage
pushi.e 2
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage

:[6]
popenv [5]

:[7]
push.v self.bustertimer
pushi.e 40
cmp.i.v GTE
bf [9]

:[8]
push.v self.bustertimer
pushi.e 90
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.aim
b [13]

:[12]
pushi.e 0
pop.v.i self.aim

:[13]
push.v self.bustertimer
pushi.e 90
cmp.i.v EQ
bf [19]

:[14]
pushi.e 632
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 0
pop.v.i self.aimmode
pushi.e 4
pop.v.i 697.partmode
pushi.e 697
pushenv [18]

:[17]
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.armendx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.armendy
pushi.e 594
conv.i.v
push.v self.armendy
push.v self.armendx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot

:[18]
popenv [17]

:[19]
push.v self.bustertimer
pushi.e 90
cmp.i.v GT
bf [22]

:[20]
pushi.e 28
pop.v.i self.bustertimer
pushglb.v global.turntimer
pushi.e 100
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
pop.v.i 697.partmode
pushi.e 999
pop.v.i self.bustertimer

:[22]
pushi.e 594
pushenv [24]

:[23]
pushi.e 1
pop.v.i self.dontexplode

:[24]
popenv [23]

:[25]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [53]

:[26]
push.v self.bustertimer
pushi.e 21
cmp.i.v EQ
bf [30]

:[27]
pushi.e 697
pushenv [29]

:[28]
pushi.e 3
pop.v.i self.partmode
push.v 631.y
push.v 631.x
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
call.i point_direction(argc=4)
pop.v.v self.armangle
pushi.e 2
pop.v.i self.aimmode
push.v self.armangle
pop.v.v self.armaim
pushi.e 632
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.i.v [stacktop]self.depth
push.v self.damage
pushi.e 2
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage

:[29]
popenv [28]

:[30]
push.v self.bustertimer
pushi.e 21
cmp.i.v GTE
bf [32]

:[31]
push.v self.bustertimer
pushi.e 71
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i self.aim
b [36]

:[35]
pushi.e 0
pop.v.i self.aim

:[36]
push.v self.bustertimer
pushi.e 71
cmp.i.v EQ
bf [42]

:[37]
pushi.e 632
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
pushi.e 0
pop.v.i self.aimmode
pushi.e 4
pop.v.i 697.partmode
pushi.e 697
pushenv [41]

:[40]
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.partx
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.armendx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.party
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.partrot
pushi.e 93
sub.i.v
push.v self.armlength
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.armendy
pushi.e 594
conv.i.v
push.v self.armendy
push.v self.armendx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot

:[41]
popenv [40]

:[42]
push.v self.bustertimer
pushi.e 71
cmp.i.v GT
bf [45]

:[43]
pushi.e -70
pop.v.i self.bustertimer
pushglb.v global.turntimer
pushi.e 100
cmp.i.v LT
bf [45]

:[44]
pushi.e 1
pop.v.i 697.partmode
pushi.e 999
pop.v.i self.bustertimer

:[45]
pushi.e 594
pushenv [47]

:[46]
pushi.e 1
pop.v.i self.dontexplode

:[47]
popenv [46]
push.v self.flyingheadtimer
pushi.e 60
cmp.i.v EQ
bf [49]

:[48]
pushi.e 599
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[49]
push.v self.flyingheadtimer
pushi.e 90
cmp.i.v EQ
bf [53]

:[50]
pushi.e 599
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e -90
pop.v.i self.flyingheadtimer

:[53]
push.v self.aim
pushi.e 1
cmp.i.v EQ
bf [end]

:[54]
pushi.e 697
pushenv [57]

:[55]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [57]

:[56]
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

:[57]
popenv [55]
pushi.e 632
pushenv [59]

:[58]
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

:[59]
popenv [58]

:[end]