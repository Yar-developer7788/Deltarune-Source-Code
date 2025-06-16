.localvar 2 arguments
.localvar 26837 laserdistance 13861

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.init
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.v 872.x
pushi.e 70
conv.i.v
pushi.e -70
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targetx
push.v self.targetx
push.v self.x
cmp.v.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.finalpoint

:[4]
pushi.e 90
pop.v.i self.direction
b [9]

:[5]
push.v 872.x
pushi.e 100
push.v self.attackdirection
pushi.e 1
sub.i.v
mul.v.i
add.v.v
pop.v.v self.targetx
push.v self.attackdirection
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 180
conv.i.v
b [8]

:[7]
pushi.e 0
conv.i.v

:[8]
pop.v.v self.direction

:[9]
push.v self.direction
pop.v.v self.image_angle

:[10]
push.v self.taily
push.v self.tailx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v local.laserdistance
push.v self.lasertimer
pushi.e 0
cmp.i.v GT
bt [12]

:[11]
pushloc.v local.laserdistance
pushi.e 100
cmp.i.v GTE
b [13]

:[12]
push.e 1

:[13]
bf [25]

:[14]
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
bf [16]

:[15]
pushloc.v local.laserdistance
push.v self.laserspeed
cmp.v.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [25]

:[18]
push.v self.finalpoint
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_cameray(argc=0)
pushi.e 560
add.i.v
pop.v.v self.targety

:[20]
push.v self.nextpoint
push.e 1
add.i.v
pop.v.v self.nextpoint
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [25]

:[21]
push.v self.nextpoint
push.v self.finalpoint
cmp.v.v EQ
bf [23]

:[22]
call.i gml_Script_cameray(argc=0)
pushi.e 560
add.i.v
pop.v.v self.targety
b [25]

:[23]
push.v self.nextpoint
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v 872.y
pushi.e 100
sub.i.v
pop.v.v self.targety

:[25]
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bf [43]

:[26]
push.v self.nextpoint
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.v self.attackdirection
pushi.e 1
cmp.i.v NEQ
b [29]

:[28]
push.e 0

:[29]
bf [37]

:[30]
push.v self.y
push.v self.laserspeed
add.v.v
push.v 631.y
pushi.e 8
add.i.v
cmp.v.v GTE
bf [35]

:[31]
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.y
push.v self.y
pop.v.v self.targety
push.v self.attackdirection
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
pop.v.v self.targetx
b [34]

:[33]
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
pop.v.v self.targetx

:[34]
pushi.e 15
pop.v.i self.lasertimer
b [36]

:[35]
push.v self.y
push.v self.laserspeed
add.v.v
pop.v.v self.y

:[36]
b [43]

:[37]
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bf [43]

:[38]
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
bf [43]

:[39]
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 15
conv.i.v
b [42]

:[41]
pushi.e 5
conv.i.v

:[42]
pop.v.v self.lasertimer

:[43]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[44]
push.v self.grazetimer
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushi.e 5
pop.v.i self.grazetimer
b [end]

:[46]
push.v self.grazetimer
push.e 1
sub.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 0
cmp.i.v EQ
bf [end]

:[47]
pushi.e 0
pop.v.i self.grazed

:[end]