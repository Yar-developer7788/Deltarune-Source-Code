.localvar 2 arguments
.localvar 9750 _c 8208
.localvar 11665 _s 8209

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.test_release_bullet
pushi.e 0
pop.v.i self.test_release_bullet_timer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.state
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.walk_index
pushi.e 0
pop.v.i self.alertcon
pushi.e 0
pop.v.i self.alerttimer
pushi.e 0
pop.v.i self.facetimer
pushi.e 0
pop.v.i self.pacecon
pushi.e 0
pop.v.i self.pacecon2
pushi.e 0
pop.v.i self.pacetimer
pushi.e 0
pop.v.i self.targetx
pushi.e 0
pop.v.i self.targety
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.frozen
pushi.e 0
pop.v.i self.hadfrozen
pushi.e 0
pop.v.i self.remspeed
pushi.e 0
pop.v.i self.drawsiner
pushi.e 0
pop.v.i self.ignorefreeze
pushi.e 0
pop.v.i self.viewblocked
pushi.e 1
pop.v.i self.canAlertThroughWalls
pushi.e 0
pop.v.i self.extflag
push.v self.path_index
pop.v.v self.startPath
push.v self.path_position
pop.v.v self.pathProgress
pushi.e 0
pop.v.i self.pathSpeed
pushi.e 0
pop.v.i self.stopPath
pushi.e 0
pop.v.i self.noAlertSound
pushi.e 0
pop.v.i self.chasecon
pushi.e 0
pop.v.i self.excl
pushi.e 4
pop.v.i self.pacespeed
pushi.e 0
pop.v.i self.pacesinspeed
pushi.e 0
pop.v.i self.paceinit
pushi.e 0
pop.v.i self.drawoffscreen
pushi.e 1
pop.v.i self.dodraw
pushi.e 0
pop.v.i self.float
pushi.e 0
pop.v.i self.detectpointxoffset
pushi.e 0
pop.v.i self.detectpointyoffset
pushi.e 0
pop.v.i self.viewpointx
pushi.e 0
pop.v.i self.viewpointy
push.v self.y
pop.v.v self.yy
push.v self.x
pop.v.v self.xx
pushi.e 0
pop.v.i self.increment
pushi.e 0
pop.v.i self.amplitude
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.rotation
pushi.e 14
pop.v.i self.distance
pushi.e 4
pop.v.i self.spd
pushi.e 0
pop.v.i self.customhitbox
pushi.e 0
pop.v.i self.hitx1
pushi.e 0
pop.v.i self.hitx2
pushi.e 0
pop.v.i self.hity1
pushi.e 0
pop.v.i self.hity2
pushi.e 0
pop.v.i self.hitvar
push.v self.x
pop.v.v self.mymidx
push.v self.y
pop.v.v self.mymidy
pushi.e 4
pop.v.i self.minspeed
pushi.e 7
pop.v.i self.maxspeed
pushi.e 0
pop.v.i self.specialspritecase
pushi.e 160
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.pacespeed
pushi.e 1
pop.v.i self.offscreen_frozen
pushi.e 0
pop.v.i self.cancelwalk
pushi.e 0
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.alerttype
pushi.e 0
pop.v.i self.alerted
pushi.e 1
pop.v.i self.slide
pushi.e 0
pop.v.i self.whichmonster
pushi.e 0
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.pacetype
pushi.e 200
pop.v.i self.radius
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.touchflag
pushi.e 0
pop.v.i self.eraser
pushi.e 0
pop.v.i self.blind
pushi.e 0
pop.v.i self.encounterflag
pushi.e 4
pop.v.i self.startchasespeed
pushi.e 8
pop.v.i self.topchasespeed
push.d 0.1
pop.v.d self.chaseaccel
pushi.e 4
pop.v.i self.myencounter
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 0
pop.v.i self.frozensprite
pushbltn.v builtin.room
pushi.e 22
cmp.i.v EQ
bf [2]

:[1]
pushi.e 60
pop.v.i self.radius
pushi.e 50
pop.v.i self.myencounter

:[2]
pushbltn.v builtin.room
pushi.e 13
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.encounterno
pop.v.v self.myencounter

:[4]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [6]

:[5]
pushi.e 52
pop.v.i self.myencounter
pushi.e 1669
pop.v.i self.sprite_index
pushi.e 1675
pop.v.i self.touchsprite
pushi.e 160
pop.v.i self.radius
pushi.e 9
pop.v.i self.pacetype
push.d 0.8
pop.v.d self.pacespeed
pushi.e 3
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
push.s "tasque"@18104
pop.v.s self.specialspritecase

:[6]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [8]

:[7]
pushi.e 52
pop.v.i self.myencounter
pushi.e 1669
pop.v.i self.sprite_index
pushi.e 1675
pop.v.i self.touchsprite
pushi.e 160
pop.v.i self.radius
pushi.e 21
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
push.s "tasque"@18104
pop.v.s self.specialspritecase

:[8]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
bf [12]

:[9]
pushi.e -5
pushi.e 391
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 55
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 120
pop.v.i self.radius
pushi.e 17
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertskip
b [12]

:[11]
pushi.e 1500
pop.v.i self.x
pushi.e 280
pop.v.i self.y
pushi.e 55
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 0
pop.v.i self.radius
pushi.e 14
pop.v.i self.pacetype
pushi.e 4
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.rotation
pushi.e 120
pop.v.i self.distance
pushi.e 2
pop.v.i self.spd
pushi.e 180
pop.v.i self.rotation
push.v self.rotation
call.i dcos(argc=1)
pop.v.v local._c
push.v self.rotation
call.i dsin(argc=1)
pop.v.v local._s
push.v self.xx
pushloc.v local._c
push.v self.distance
mul.v.v
add.v.v
pushloc.v local._s
push.v self.distance
mul.v.v
add.v.v
pop.v.v self.x
push.v self.yy
pushloc.v local._s
neg.v
push.v self.distance
mul.v.v
add.v.v
pushloc.v local._c
push.v self.distance
mul.v.v
add.v.v
pop.v.v self.y

:[12]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [14]

:[13]
pushi.e 56
pop.v.i self.myencounter
pushi.e 1225
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 150
pop.v.i self.radius
pushi.e 1
pop.v.i self.pacetype
pushi.e 5
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 10
pop.v.i self.moveradius

:[14]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [16]

:[15]
pushi.e 51
pop.v.i self.myencounter
pushi.e 1644
pop.v.i self.sprite_index
pushi.e 1648
pop.v.i self.touchsprite
pushi.e 150
pop.v.i self.radius
pushi.e 1
pop.v.i self.pacetype
pushi.e 3
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 10
pop.v.i self.moveradius

:[16]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [23]

:[17]
push.v self.y
pushi.e 320
cmp.i.v GT
bf [22]

:[18]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i path_start(argc=4)
popz.v
push.d 0.25
pop.v.d self.path_position
pushi.e 50
pop.v.i self.myencounter
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 1641
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 0
pop.v.i self.alertskip
pushi.e 11
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 10
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.alerttype
pushi.e 0
pop.v.i self.canAlertThroughWalls
push.s "rightOma"@20083
pop.v.s self.extflag
b [21]

:[20]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i path_start(argc=4)
popz.v
push.d 0.75
pop.v.d self.path_position
pushi.e 50
pop.v.i self.myencounter
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 1641
pop.v.i self.touchsprite
pushi.e 150
pop.v.i self.radius
pushi.e 11
pop.v.i self.pacetype
pushi.e 5
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 10
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.alerttype
pushi.e 0
pop.v.i self.canAlertThroughWalls
push.s "leftOma"@20084
pop.v.s self.extflag

:[21]
b [23]

:[22]
push.s "tutViro"@20085
pop.v.s self.extflag

:[23]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [30]

:[24]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [29]

:[25]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [27]

:[26]
push.s "oma"@20086
pop.v.s self.extflag
pushi.e 69
pop.v.i self.myencounter
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 1631
pop.v.i self.touchsprite
pushi.e 80
pop.v.i self.radius
pushi.e 11
pop.v.i self.pacetype
pushi.e 5
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 10
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.eraser
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i path_start(argc=4)
popz.v
push.v self.path_speed
pop.v.v self.remPath
b [28]

:[27]
push.s "viro"@15788
pop.v.s self.extflag
pushi.e 68
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 80
pop.v.i self.radius
pushi.e 11
pop.v.i self.pacetype
pushi.e 5
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 10
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.eraser
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i path_start(argc=4)
popz.v
push.d 0.1
pop.v.d self.path_position

:[28]
b [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [40]

:[31]
push.v self.x
pushi.e 620
cmp.i.v LT
bf [33]

:[32]
push.s "viro"@15788
pop.v.s self.extflag
pushi.e 55
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 180
pop.v.i self.radius
pushi.e 17
pop.v.i self.pacetype
pushi.e 3
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 5
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.canAlertThroughWalls
pushi.e 0
pop.v.i self.eraser

:[33]
push.v self.x
pushi.e 620
cmp.i.v GT
bf [35]

:[34]
push.v self.y
pushi.e 600
cmp.i.v GT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 53
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 0
pop.v.i self.alertskip
pushi.e 24
pop.v.i self.pacetype
pushi.e 240
pop.v.i self.moveradius
pushi.e 50
pop.v.i self.pacespeed
pushi.e -1
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 2
pop.v.i self.eraser
pushi.e 0
pop.v.i self.offscreen_frozen

:[38]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [40]

:[39]
pushi.e 53
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 0
pop.v.i self.alertskip
pushi.e 24
pop.v.i self.pacetype
pushi.e 240
pop.v.i self.moveradius
pushi.e 4
pop.v.i self.pacespeed
pushi.e -1
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 2
pop.v.i self.eraser
pushi.e 0
pop.v.i self.offscreen_frozen

:[40]
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [43]

:[41]
pushi.e 53
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
pushi.e 1716
pop.v.i self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 14
pop.v.i self.pacetype
pushi.e 4
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.rotation
pushi.e 50
pop.v.i self.distance
pushi.e 4
pop.v.i self.spd
pushi.e -5
pushi.e 389
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
pushbltn.v builtin.room
pushi.e 204
cmp.i.v EQ
bf [45]

:[44]
pushi.e 81
pop.v.i self.myencounter
pushi.e 2082
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 50
pop.v.i self.radius
pushi.e 16
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 160
pop.v.i self.moveradius

:[45]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [49]

:[46]
push.v self.x
pushi.e 800
cmp.i.v LT
bf [48]

:[47]
pushi.e 85
pop.v.i self.myencounter
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 1631
pop.v.i self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 20
pop.v.i self.pacetype
pushi.e 4
pop.v.i self.pacespeed
pushi.e 100
pop.v.i self.moveradius
pushi.e 8
pop.v.i self.chasetype
push.s "oma"@20086
pop.v.s self.extflag
b [49]

:[48]
pushi.e 86
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 17
pop.v.i self.pacetype
pushi.e 8
pop.v.i self.chasetype
pushi.e 10
pop.v.i self.moveradius
push.s "viro"@15788
pop.v.s self.extflag

:[49]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [51]

:[50]
pushi.e 87
pop.v.i self.myencounter
pushi.e 1669
pop.v.i self.sprite_index
pushi.e 1675
pop.v.i self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 19
pop.v.i self.pacetype
pushi.e 8
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
push.s "tasque"@18104
pop.v.s self.specialspritecase

:[51]
pushbltn.v builtin.room
pushi.e 135
cmp.i.v EQ
bf [53]

:[52]
pushi.e 79
pop.v.i self.myencounter
pushi.e 1746
pop.v.i self.sprite_index
pushi.e 1747
pop.v.i self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 19
pop.v.i self.pacetype
pushi.e 8
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid

:[53]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 10
conv.i.v
call.i path_start(argc=4)
popz.v
push.d 0.75
pop.v.d self.path_position
pushi.e 83
pop.v.i self.myencounter
pushi.e 2087
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 11
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.chasetype

:[55]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bt [57]

:[56]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [62]

:[59]
pushi.e 56
pop.v.i self.myencounter
pushi.e 1225
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 180
pop.v.i self.radius
pushi.e 20
pop.v.i self.pacetype
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=4)
pop.v.v self.pacespeed
pushi.e 4
pop.v.i self.minspeed
pushi.e 9
pop.v.i self.maxspeed
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.moveradius
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [61]

:[60]
pushi.e 100
pop.v.i self.moveradius

:[61]
push.d 5.5
pop.v.d self.chasetype
pushi.e 1
pop.v.i self.eraser

:[62]
pushbltn.v builtin.room
pushi.e 196
cmp.i.v EQ
bf [65]

:[63]
pushi.e 57
pop.v.i self.myencounter
pushi.e 542
pop.v.i self.encounterflag
pushi.e 0
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.radius
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.whichmonster
pushi.e 1271
pop.v.i self.sprite_index
pushi.e 1273
pop.v.i self.touchsprite
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
pushbltn.v builtin.room
pushi.e 198
cmp.i.v EQ
bf [67]

:[66]
pushi.e 569
pop.v.i self.encounterflag
push.d 0.25
pop.v.d self.image_speed
pushi.e 81
pop.v.i self.myencounter
pushi.e 2082
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 1
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 160
pop.v.i self.moveradius

:[67]
pushbltn.v builtin.room
pushi.e 119
cmp.i.v EQ
bf [71]

:[68]
push.v self.x
pushi.e 720
cmp.i.v LT
bf [70]

:[69]
pushi.e 95
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 0
pop.v.i self.alertskip
pushi.e 23
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 140
pop.v.i self.moveradius
pushi.e 2
pop.v.i self.eraser
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 561
pop.v.i self.encounterflag
pushi.e 80
pop.v.i self.moveradius
b [71]

:[70]
pushi.e 96
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 120
pop.v.i self.radius
pushi.e 17
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertskip
pushi.e 560
pop.v.i self.encounterflag

:[71]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [75]

:[72]
push.v self.x
pushi.e 1300
cmp.i.v LT
bf [74]

:[73]
pushi.e 97
pop.v.i self.myencounter
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 1631
pop.v.i self.touchsprite
pushi.e 200
pop.v.i self.radius
pushi.e 20
pop.v.i self.pacetype
pushi.e 4
pop.v.i self.pacespeed
pushi.e 100
pop.v.i self.moveradius
pushi.e 3
pop.v.i self.chasetype
push.s "oma"@20086
pop.v.s self.extflag
pushi.e 562
pop.v.i self.encounterflag
b [75]

:[74]
pushi.e 98
pop.v.i self.myencounter
pushi.e 1669
pop.v.i self.sprite_index
pushi.e 1675
pop.v.i self.touchsprite
pushi.e 160
pop.v.i self.radius
pushi.e 21
pop.v.i self.pacetype
pushi.e 80
pop.v.i self.moveradius
pushi.e 3
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
push.s "tasque"@18104
pop.v.s self.extflag
pushi.e 563
pop.v.i self.encounterflag
push.s "tasque"@18104
pop.v.s self.specialspritecase

:[75]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [79]

:[76]
push.v self.x
pushi.e 1300
cmp.i.v GT
bf [78]

:[77]
pushi.e 95
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 0
pop.v.i self.alertskip
pushi.e 23
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 140
pop.v.i self.moveradius
pushi.e 2
pop.v.i self.eraser
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 565
pop.v.i self.encounterflag
pushi.e 80
pop.v.i self.moveradius
b [79]

:[78]
pushi.e 96
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 120
pop.v.i self.radius
pushi.e 17
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.chasetype
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertskip
pushi.e 564
pop.v.i self.encounterflag

:[79]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [86]

:[80]
push.v self.extflag
push.s "tutViro"@20085
cmp.s.v EQ
bf [82]

:[81]
pushi.e 531
pop.v.i self.encounterflag

:[82]
push.v self.extflag
push.s "rightOma"@20083
cmp.s.v EQ
bf [84]

:[83]
pushi.e 532
pop.v.i self.encounterflag

:[84]
push.v self.extflag
push.s "leftOma"@20084
cmp.s.v EQ
bf [86]

:[85]
pushi.e 532
pop.v.i self.encounterflag

:[86]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [88]

:[87]
pushi.e 533
pop.v.i self.encounterflag

:[88]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [92]

:[89]
push.v self.extflag
push.s "viro"@15788
cmp.s.v EQ
bf [91]

:[90]
pushi.e 535
pop.v.i self.encounterflag
b [92]

:[91]
pushi.e 534
pop.v.i self.encounterflag

:[92]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [94]

:[93]
pushi.e 528
pop.v.i self.encounterflag

:[94]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
bf [96]

:[95]
pushi.e 527
pop.v.i self.encounterflag

:[96]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [98]

:[97]
pushi.e 525
pop.v.i self.encounterflag

:[98]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [100]

:[99]
pushi.e 526
pop.v.i self.encounterflag

:[100]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [102]

:[101]
pushi.e 539
pop.v.i self.encounterflag

:[102]
pushbltn.v builtin.room
pushi.e 169
cmp.i.v EQ
bf [104]

:[103]
pushi.e 540
pop.v.i self.encounterflag

:[104]
pushbltn.v builtin.room
pushi.e 170
cmp.i.v EQ
bf [106]

:[105]
pushi.e 541
pop.v.i self.encounterflag

:[106]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [108]

:[107]
pushi.e 544
pop.v.i self.encounterflag

:[108]
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [110]

:[109]
pushi.e 545
pop.v.i self.encounterflag

:[110]
pushbltn.v builtin.room
pushi.e 204
cmp.i.v EQ
bf [112]

:[111]
pushi.e 547
pop.v.i self.encounterflag

:[112]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [117]

:[113]
push.v self.extflag
push.s "oma"@20086
cmp.s.v EQ
bf [115]

:[114]
pushi.e 553
pop.v.i self.encounterflag

:[115]
push.v self.extflag
push.s "viro"@15788
cmp.s.v EQ
bf [117]

:[116]
pushi.e 554
pop.v.i self.encounterflag

:[117]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [119]

:[118]
pushi.e 556
pop.v.i self.encounterflag

:[119]
pushbltn.v builtin.room
pushi.e 135
cmp.i.v EQ
bf [123]

:[120]
push.v self.x
pushi.e 1260
cmp.i.v GT
bf [122]

:[121]
pushi.e 555
pop.v.i self.encounterflag
b [123]

:[122]
pushi.e 566
pop.v.i self.encounterflag

:[123]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [126]

:[124]
pushi.e 543
pop.v.i self.encounterflag
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [126]

:[125]
call.i instance_destroy(argc=0)
popz.v

:[126]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [128]

:[127]
pushi.e 557
pop.v.i self.encounterflag

:[128]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [130]

:[129]
pushi.e 558
pop.v.i self.encounterflag

:[130]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [132]

:[131]
pushi.e 50
pop.v.i self.myencounter
pushi.e 570
pop.v.i self.encounterflag
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 1641
pop.v.i self.touchsprite

:[132]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bf [end]

:[133]
pushi.e 79
pop.v.i self.myencounter
pushi.e 1746
pop.v.i self.sprite_index
pushi.e 1747
pop.v.i self.touchsprite

:[end]