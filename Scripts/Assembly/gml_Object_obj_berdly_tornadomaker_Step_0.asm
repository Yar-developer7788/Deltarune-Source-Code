.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.difficulty
pushi.e 3
cmp.i.v NEQ
bf [4]

:[3]
push.v self.lerpintimer
pushi.e 16
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.lerpintimer
pushi.e 15
conv.i.d
div.d.v
push.v self.ystart
pushi.e 20
add.i.v
push.v self.ystart
pushi.e 200
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.lerpintimer
push.e 1
add.i.v
pop.v.v self.lerpintimer

:[7]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.lerpintimer
pushi.e 11
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.lerpintimer
pushi.e 10
conv.i.d
div.d.v
push.v self.ystart
pushi.e 20
add.i.v
push.v self.ystart
pushi.e 200
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.lerpintimer
push.e 1
add.i.v
pop.v.v self.lerpintimer

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [17]

:[13]
pushi.e 0
pop.v.i self.image_index
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 15
pop.v.i self.timerthreshold
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 10
pop.v.i self.timerthreshold

:[15]
push.v self.timer
push.v self.timerthreshold
cmp.v.v GTE
bf [17]

:[16]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[18]
push.v self.remx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.remy
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.image_index
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [20]

:[19]
pushi.e 0
pop.v.i self.timer
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y
pushi.e 2
pop.v.i self.con
pushi.e 2
pop.v.i self.image_index

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [46]

:[21]
pushi.e 3
pop.v.i self.con
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [25]

:[22]
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [25]

:[24]
pushi.e 524
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornadol
pushi.e 6
push.v self.tornadol
pushi.e -9
pop.v.i [stacktop]self.maxhspeed
pushi.e -12
push.v self.tornadol
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 32
push.v self.i
pushi.e 8
mul.i.v
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.howlong
pushi.e -1
push.v self.i
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.howfar
pushi.e 524
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornador
pushi.e -6
push.v self.tornador
pushi.e -9
pop.v.i [stacktop]self.maxhspeed
pushi.e 12
push.v self.tornador
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 32
push.v self.i
pushi.e 8
mul.i.v
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.howlong
pushi.e -1
push.v self.i
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.howfar
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [23]

:[25]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bt [27]

:[26]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [37]

:[29]
push.i 170821
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.yorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.yorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.yorder
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
conv.v.i
pop.v.v [array]self.yorder
pushi.e 0
pop.v.i self.chosen

:[30]
push.v self.chosen
pushi.e 0
cmp.i.v EQ
bf [34]

:[31]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.nextyorder
pushi.e -1
push.v self.nextyorder
conv.v.i
push.v [array]self.yorder
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 2
conv.i.v
pushi.e -1
push.v self.nextyorder
conv.v.i
pop.v.v [array]self.yorder
pushi.e 1
pop.v.i self.chosen

:[33]
b [30]

:[34]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hvariance
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [37]

:[36]
pushi.e 524
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornadol
pushi.e 6
push.v self.tornadol
pushi.e -9
pop.v.i [stacktop]self.maxhspeed
pushi.e -12
push.v self.hvariance
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 32
push.v self.i
pushi.e 8
mul.i.v
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.howlong
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yorder
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.howfar
pushi.e 524
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornador
pushi.e -6
push.v self.tornador
pushi.e -9
pop.v.i [stacktop]self.maxhspeed
pushi.e 12
push.v self.hvariance
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 32
push.v self.i
pushi.e 8
mul.i.v
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.howlong
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yorder
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.howfar
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [46]

:[38]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.yorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.yorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.yorder
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
conv.v.i
pop.v.v [array]self.yorder
pushi.e 0
pop.v.i self.chosen

:[39]
push.v self.chosen
pushi.e 0
cmp.i.v EQ
bf [43]

:[40]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.nextyorder
pushi.e -1
push.v self.nextyorder
conv.v.i
push.v [array]self.yorder
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2
conv.i.v
pushi.e -1
push.v self.nextyorder
conv.v.i
pop.v.v [array]self.yorder
pushi.e 1
pop.v.i self.chosen

:[42]
b [39]

:[43]
pushi.e 0
pop.v.i self.i

:[44]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [46]

:[45]
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hvariance
pushi.e 4
conv.i.v
call.i random(argc=1)
pop.v.v self.timevariance
pushi.e 524
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornadol
pushi.e 6
push.v self.tornadol
pushi.e -9
pop.v.i [stacktop]self.maxhspeed
pushi.e -12
push.v self.hvariance
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 32
push.v self.i
pushi.e 8
mul.i.v
add.v.i
push.v self.timevariance
add.v.v
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.howlong
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yorder
add.v.i
push.v self.tornadol
pushi.e -9
pop.v.v [stacktop]self.howfar
pushi.e 524
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornador
pushi.e -6
push.v self.tornador
pushi.e -9
pop.v.i [stacktop]self.maxhspeed
pushi.e 12
push.v self.hvariance
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 32
push.v self.i
pushi.e 8
mul.i.v
add.v.i
push.v self.timevariance
add.v.v
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.howlong
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yorder
add.v.i
push.v self.tornador
pushi.e -9
pop.v.v [stacktop]self.howfar
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [44]

:[46]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[47]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 33
pop.v.i self.timerthreshold
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
pushi.e 24
pop.v.i self.timerthreshold

:[49]
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [51]

:[50]
pushi.e 3
pop.v.i self.image_index

:[51]
push.v self.timer
pushi.e 4
cmp.i.v GTE
bf [53]

:[52]
pushi.e 4
pop.v.i self.image_index

:[53]
push.v self.timer
push.v self.timerthreshold
cmp.v.v GTE
bf [end]

:[54]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con

:[end]