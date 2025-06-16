.localvar 2 arguments
.localvar 26837 laserdistance 13847

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [7]

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
pushi.e 2
pop.v.i self.finalpoint
push.v 872.x
pushi.e 100
add.i.v
pop.v.v self.targetx
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
push.v self.taily
push.v self.tailx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v local.laserdistance
push.v self.lasertimer
pushi.e 0
cmp.i.v GT
bt [9]

:[8]
pushloc.v local.laserdistance
pushi.e 100
cmp.i.v GTE
b [10]

:[9]
push.e 1

:[10]
bf [18]

:[11]
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
bf [13]

:[12]
pushloc.v local.laserdistance
push.v self.laserspeed
cmp.v.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pop.v.v self.targetx

:[17]
push.v self.nextpoint
push.e 1
add.i.v
pop.v.v self.nextpoint

:[18]
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bf [36]

:[19]
push.v self.nextpoint
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.attackdirection
pushi.e 1
cmp.i.v NEQ
b [22]

:[21]
push.e 0

:[22]
bf [30]

:[23]
push.v self.x
push.v self.laserspeed
sub.v.v
push.v 631.x
pushi.e 10
add.i.v
cmp.v.v LTE
bf [28]

:[24]
push.v 631.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.x
pop.v.v self.targetx
push.v self.attackdirection
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pop.v.v self.targety
b [27]

:[26]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 500
add.i.v
pop.v.v self.targety

:[27]
pushi.e 15
pop.v.i self.lasertimer
b [29]

:[28]
push.v self.x
push.v self.laserspeed
sub.v.v
pop.v.v self.x

:[29]
b [36]

:[30]
push.v self.lasertimer
pushi.e 0
cmp.i.v LTE
bf [36]

:[31]
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
bf [36]

:[32]
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 15
conv.i.v
b [35]

:[34]
pushi.e 5
conv.i.v

:[35]
pop.v.v self.lasertimer

:[36]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[37]
push.v self.grazetimer
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e 5
pop.v.i self.grazetimer
b [end]

:[39]
push.v self.grazetimer
push.e 1
sub.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 0
cmp.i.v EQ
bf [end]

:[40]
pushi.e 0
pop.v.i self.grazed

:[end]