.localvar 2 arguments
.localvar 26837 laserdistance 13854

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.init
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 872.y
pushi.e 70
conv.i.v
pushi.e -70
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targety
b [7]

:[3]
push.v 872.y
pushi.e 100
push.v self.attackdirection
pushi.e 1
sub.i.v
mul.v.i
add.v.v
pop.v.v self.targety
push.v self.attackdirection
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 90
conv.i.v
b [6]

:[5]
pushi.e 270
conv.i.v

:[6]
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle

:[7]
push.v self.targety
push.v self.y
cmp.v.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i self.finalpoint

:[9]
push.v self.taily
push.v self.tailx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v local.laserdistance
push.v self.lasertimer
pushi.e 0
cmp.i.v GT
bt [11]

:[10]
pushloc.v local.laserdistance
pushi.e 100
cmp.i.v GTE
b [12]

:[11]
push.e 1

:[12]
bf [22]

:[13]
push.v self.laserspeed
push.v self.x
push.v self.tailx
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.tailx
push.v self.laserspeed
push.v self.y
push.v self.taily
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.taily
push.v self.lasertimer
push.e 1
sub.i.v
pop.v.v self.lasertimer
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
pushloc.v local.laserdistance
push.v self.laserspeed
cmp.v.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
push.v self.nextpoint
push.e 1
add.i.v
pop.v.v self.nextpoint
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [22]

:[18]
push.v self.finalpoint
push.v self.nextpoint
cmp.v.v EQ
bf [20]

:[19]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pop.v.v self.targetx
b [22]

:[20]
push.v self.nextpoint
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.v 872.x
pushi.e 100
add.i.v
pop.v.v self.targetx

:[22]
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bf [46]

:[23]
push.v self.nextpoint
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v self.attackdirection
pushi.e 1
cmp.i.v NEQ
b [26]

:[25]
push.e 0

:[26]
bf [34]

:[27]
push.v self.x
push.v self.laserspeed
sub.v.v
push.v 631.x
pushi.e 8
add.i.v
cmp.v.v LTE
bf [32]

:[28]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.x
push.v self.x
pop.v.v self.targetx
push.v self.attackdirection
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pop.v.v self.targety
b [31]

:[30]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 500
add.i.v
pop.v.v self.targety

:[31]
pushi.e 15
pop.v.i self.lasertimer
b [33]

:[32]
push.v self.x
push.v self.laserspeed
sub.v.v
pop.v.v self.x

:[33]
b [46]

:[34]
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bt [39]

:[35]
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.finalpoint
push.v self.nextpoint
cmp.v.v NEQ
b [38]

:[37]
push.e 0

:[38]
b [40]

:[39]
push.e 1

:[40]
bf [46]

:[41]
push.v self.laserspeed
push.v self.targetx
push.v self.x
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.x
push.v self.laserspeed
push.v self.targety
push.v self.y
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.y
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 0
cmp.i.v LTE
bf [46]

:[42]
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 15
conv.i.v
b [45]

:[44]
pushi.e 5
conv.i.v

:[45]
pop.v.v self.lasertimer

:[46]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[47]
push.v self.grazetimer
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 5
pop.v.i self.grazetimer
b [end]

:[49]
push.v self.grazetimer
push.e 1
sub.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 0
cmp.i.v EQ
bf [end]

:[50]
pushi.e 0
pop.v.i self.grazed

:[end]