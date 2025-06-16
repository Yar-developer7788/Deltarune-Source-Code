.localvar 2 arguments
.localvar 11610 aa 12370
.localvar 7017 a 12379

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.type
pushi.e 1
cmp.i.v EQ
bt [7]

:[1]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [7]

:[2]
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [7]

:[3]
push.v self.type
pushi.e 4
cmp.i.v EQ
bt [7]

:[4]
push.v self.type
pushi.e 5
cmp.i.v EQ
bt [7]

:[5]
push.v self.type
pushi.e 6
cmp.i.v EQ
bt [7]

:[6]
push.v self.type
pushi.e 7
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [end]

:[9]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [44]

:[10]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.row
push.v self.prevrow
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.row

:[13]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [21]

:[14]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.aa
push.v self.prevrowy
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v local.aa

:[16]
push.v self.prevrowy
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.aa

:[18]
push.v self.prevrowy
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.aa

:[20]
push.v self.yy
pushi.e 210
add.i.v
pushi.e 46
pushloc.v local.aa
mul.v.i
sub.v.v
pop.v.v self.rowy
pushloc.v local.aa
pop.v.v self.prevrowy
pushi.e 2
pop.v.i self.row

:[21]
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [23]

:[22]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [35]

:[25]
push.v self.yy
pushi.e 210
add.i.v
pushi.e 40
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
mul.v.i
sub.v.v
pop.v.v self.rowy
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.row
push.v self.prevrow
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.row

:[27]
push.v self.prevrow
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.row

:[29]
push.v self.row
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
push.v self.firstspawn
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.row

:[34]
pushi.e 1
pop.v.i self.firstspawn

:[35]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [40]

:[36]
push.v self.yy
pushi.e 210
add.i.v
pushi.e 40
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
mul.v.i
sub.v.v
pop.v.v self.rowy
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=6)
pop.v.v self.row
push.v self.prevrow
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.row

:[38]
push.v self.prevrow
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.row

:[40]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [42]

:[41]
pushi.e 6
pop.v.i self.row

:[42]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [44]

:[43]
pushi.e 7
pop.v.i self.row

:[44]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bt [48]

:[45]
push.v self.timer
pushi.e 10
cmp.i.v EQ
bt [48]

:[46]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bt [48]

:[47]
push.v self.timer
pushi.e 20
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [97]

:[50]
push.v self.row
pushi.e 0
cmp.i.v EQ
bt [53]

:[51]
push.v self.row
pushi.e 1
cmp.i.v EQ
bt [53]

:[52]
push.v self.row
pushi.e 2
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [76]

:[55]
pushi.e 603
conv.i.v
push.v self.yy
pushi.e 280
add.i.v
push.v self.xx
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.guy
pushi.e -18
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d -0.1
push.v self.guy
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -2
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133633
setowner.e
pushi.e 44
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 40
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 32
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 2
pop.v.v [array]self.alarm
push.d 0.5
push.v self.guy
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 0
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
pushi.e 1
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.i 15245824
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.changedirection
pushi.e 0
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.altdirection
pushi.e 4
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.altspeed
push.d -0.2
push.v self.guy
pushi.e -9
pop.v.d [stacktop]self.altfriction
pushi.e 0
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.altgravity
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 44
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm

:[57]
push.v self.row
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.v self.guy
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 240
sub.i.v
pop.i.v [stacktop]self.y
push.v self.guy
pushi.e -9
push.v [stacktop]self.vspeed
neg.v
push.v self.guy
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[59]
push.v self.row
pushi.e 2
cmp.i.v EQ
bf [61]

:[60]
push.v self.guy
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pop.i.v [stacktop]self.y
pushi.e 0
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e -21
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.hspeed

:[61]
push.v self.row
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e -21
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.gravity
push.d 0.5
push.v self.guy
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 36
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.changedirection
push.v self.guy
pushi.e -9
push.v [stacktop]self.direction
push.v self.guy
pushi.e -9
pop.v.v [stacktop]self.altdirection

:[66]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [70]

:[67]
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [70]

:[68]
push.v self.type
pushi.e 4
cmp.i.v EQ
bt [70]

:[69]
push.v self.type
pushi.e 5
cmp.i.v EQ
b [71]

:[70]
push.e 1

:[71]
bf [73]

:[72]
push.v self.row
pushi.e 2
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.rowy
push.v self.guy
pushi.e -9
pop.v.v [stacktop]self.y

:[76]
push.v self.row
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
push.v self.timer
pushi.e 20
cmp.i.v NEQ
b [79]

:[78]
push.e 0

:[79]
bf [83]

:[80]
pushi.e 0
pop.v.i self.guyi

:[81]
push.v self.guyi
pushi.e 2
cmp.i.v LT
bf [83]

:[82]
push.i 171208
setowner.e
pushi.e 603
conv.i.v
push.v self.yy
pushi.e 40
sub.i.v
pushi.e 400
push.v self.guyi
mul.v.i
add.v.v
push.v self.xx
pushi.e 300
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.guyi
conv.v.i
pop.v.v [array]self.guy
push.i 133624
setowner.e
pushi.e 18
pushi.e 36
push.v self.guyi
mul.v.i
sub.v.i
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 133633
setowner.e
pushi.e 44
conv.i.v
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 40
conv.i.v
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 32
conv.i.v
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pushi.e 2
pop.v.v [array]self.alarm
push.i 133628
setowner.e
push.d 0.8
push.d 1.6
push.v self.guyi
mul.v.d
sub.v.d
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pop.v.v [stacktop]self.gravity
push.i 133629
setowner.e
pushi.e 90
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.i 233343
setowner.e
pushi.e 1
pushi.e -1
push.v self.guyi
conv.v.i
push.v [array]self.guy
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.guyi
push.e 1
add.i.v
pop.v.v self.guyi
b [81]

:[83]
push.v self.row
pushi.e 6
cmp.i.v EQ
bf [85]

:[84]
push.v self.timer
pushi.e 5
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [90]

:[87]
pushi.e 2
pop.v.i self.spawncount
pushi.e 0
pop.v.i local.a
push.v self.spawncount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [89]

:[88]
pushi.e 603
conv.i.v
push.v self.yy
pushi.e 20
sub.i.v
pushi.e 0
add.i.v
push.v self.xx
pushi.e 410
add.i.v
pushloc.v local.a
pushi.e 70
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.guy
pushi.e 15
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133633
setowner.e
pushi.e 44
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 30
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 32
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 2
pop.v.v [array]self.alarm
push.d 0.53
push.v self.guy
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 90
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
pushi.e 1
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.destroyable
pushi.e 603
conv.i.v
push.v self.yy
pushi.e 20
sub.i.v
pushi.e 400
add.i.v
push.v self.xx
pushi.e 445
add.i.v
pushloc.v local.a
pushi.e 70
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.guy
pushi.e -15
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 44
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 40
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 32
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 2
pop.v.v [array]self.alarm
push.d -0.53
push.v self.guy
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 90
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
pushi.e 1
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [88]

:[89]
popz.i

:[90]
push.v self.row
pushi.e 7
cmp.i.v EQ
bf [92]

:[91]
push.v self.timer
pushi.e 20
cmp.i.v NEQ
b [93]

:[92]
push.e 0

:[93]
bf [97]

:[94]
pushi.e 603
conv.i.v
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 630
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.guy
push.i 133633
setowner.e
pushi.e 44
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 40
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 32
conv.i.v
push.v self.guy
pushi.e -9
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 1
push.v self.guy
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.guy
pushi.e -9
pushenv [96]

:[95]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 11
conv.i.v
call.i path_start(argc=4)
popz.v

:[96]
popenv [95]

:[97]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [99]

:[98]
push.v self.timer
pushi.e 41
cmp.i.v GTE
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 0
pop.v.i self.timer

:[102]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [104]

:[103]
push.v self.timer
pushi.e 69
cmp.i.v GTE
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
pushi.e 0
pop.v.i self.timer

:[107]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [109]

:[108]
push.v self.timer
pushi.e 69
cmp.i.v GTE
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 0
pop.v.i self.timer

:[112]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [114]

:[113]
push.v self.timer
pushi.e 50
cmp.i.v GTE
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 0
pop.v.i self.timer

:[117]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [119]

:[118]
push.v self.timer
pushi.e 69
cmp.i.v GTE
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 0
pop.v.i self.timer

:[122]
push.v self.timer
pushi.e 50
cmp.i.v GTE
bf [124]

:[123]
pushi.e 0
pop.v.i self.timer

:[124]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[125]
push.v self.row
pop.v.v self.prevrow

:[end]