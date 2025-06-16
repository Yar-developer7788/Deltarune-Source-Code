.localvar 2 arguments
.localvar 23244 loopdir 10397
.localvar 23246 force_shot 10399
.localvar 23247 force_target 10400
.localvar 23248 temp_move 10401
.localvar 23250 shootingboy 10403

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [27]

:[1]
push.v self.caralert
conv.v.b
bf [3]

:[2]
pushi.e 20
pop.v.i self.shottimer

:[3]
push.v self.lborder
push.v self.fleetsize
pushi.e 1
sub.i.v
pushi.e 20
mul.i.v
add.v.v
pop.v.v self.lborder
push.v self.rborder
push.v self.fleetsize
pushi.e 1
sub.i.v
pushi.e 20
mul.i.v
sub.v.v
pop.v.v self.rborder
push.v self.fleetspeed
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.moveinterval
pushi.e 1
pop.v.i self.timer
push.v self.movedirection
call.i sign(argc=1)
pushi.e 6
mul.i.v
pop.v.v self.movedirection

:[5]
push.v self.shottimer
pushi.e 10
sub.i.v
pop.v.v self.shottimer
push.v self.caralert
conv.v.b
not.b
bf [7]

:[6]
push.v self.fleetspeed
call.i sqr(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.moveinterval
b [8]

:[7]
pushi.e 4
pop.v.i self.moveinterval

:[8]
pushi.e 1
pop.v.i self.init
push.i 133653
setowner.e
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 231467
setowner.e
push.v self.damage
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 231464
setowner.e
push.v self.target
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.target
push.i 231509
setowner.e
push.v self.grazepoints
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.fleetsize
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.i 133617
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 16
add.i.v
pop.i.v [stacktop]self.x
push.i 170217
setowner.e
pushi.e 422
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
sub.i.v
call.i gml_Script_scr_childbullet(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.boys
push.i 231464
setowner.e
push.v self.targetB
pushi.e -1
pushi.e 1
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.target
push.i 231509
setowner.e
push.v self.grazepoints
pushi.e -1
pushi.e 1
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.grazepoints
b [12]

:[10]
push.v self.fleetsize
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.i 133617
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 32
add.i.v
pop.i.v [stacktop]self.x
push.i 170217
setowner.e
pushi.e 422
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.boys
pushi.e 422
conv.i.v
push.v self.y
push.v self.x
pushi.e 32
sub.i.v
call.i gml_Script_scr_childbullet(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.boys
push.i 231464
setowner.e
push.v self.targetB
pushi.e -1
pushi.e 1
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.target
push.i 231509
setowner.e
push.v self.grazepoints
pushi.e -1
pushi.e 1
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.grazepoints
pushi.e -1
pushi.e 2
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.grazepoints

:[12]
pushi.e 1
pop.v.i self.firingspeed
push.v self.fleetsize
pushi.e 1
cmp.i.v GT
bf [17]

:[13]
push.v self.fleetsize
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.d 2.3
conv.d.v
b [16]

:[15]
push.d 1.6
conv.d.v

:[16]
pop.v.v self.firingspeed

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
push.v self.fleetsize
cmp.v.v LT
bf [20]

:[19]
push.i 235463
setowner.e
push.v self.caralert
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.caralert
push.i 235485
setowner.e
push.v self.firingspeed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.firingspeed
push.i 235465
setowner.e
push.v self.bigshot
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.bigshot
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v local.loopdir
push.i 170218
setowner.e
push.v self.fleetsize
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.shotqueue
pushi.e 1
pop.v.i self.i

:[21]
push.v self.i
push.v self.fleetsize
cmp.v.v LT
bf [27]

:[22]
pushi.e -1
push.v self.i
pushloc.v local.loopdir
add.v.v
conv.v.i
push.v [array]self.shotqueue
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shotqueue
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
pushi.e 0
cmp.i.v LT
bf [24]

:[23]
push.v self.fleetsize
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shotqueue
b [26]

:[24]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
push.v self.fleetsize
cmp.v.v GTE
bf [26]

:[25]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shotqueue
push.v self.fleetsize
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shotqueue

:[26]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [21]

:[27]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.moveinterval
cmp.v.v GTE
bf [47]

:[28]
push.v self.x
push.v self.movedirection
add.v.v
pop.v.v self.nextx
push.v self.nextx
push.v self.rborder
cmp.v.v GT
bf [30]

:[29]
push.v self.movedirection
pushi.e 0
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bt [36]

:[32]
push.v self.nextx
push.v self.lborder
cmp.v.v LT
bf [34]

:[33]
push.v self.movedirection
pushi.e 0
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
b [37]

:[36]
push.e 1

:[37]
bf [44]

:[38]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y
push.v self.movedirection
pushi.e -1
mul.i.v
pop.v.v self.movedirection
push.v self.shottimer
pushi.e 10
cmp.i.v LT
bf [40]

:[39]
push.v self.caralert
conv.v.b
not.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 10
pop.v.i self.shottimer

:[43]
b [45]

:[44]
push.v self.nextx
pop.v.v self.x

:[45]
push.v self.fleetspeed
pushi.e 1
cmp.i.v GT
bf [47]

:[46]
pushi.e 0
pop.v.i self.timer

:[47]
pushi.e 0
pop.v.b local.force_shot
pushi.e 0
pop.v.i local.force_target
push.v self.movedirection
pop.v.v local.temp_move
push.v self.shottimer
push.v self.fleetsize
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 12
conv.i.v
b [50]

:[49]
pushi.e 16
conv.i.v

:[50]
cmp.v.v LT
bf [52]

:[51]
push.v self.bigshot
conv.v.b
b [53]

:[52]
push.e 0

:[53]
bf [60]

:[54]
pushi.e 0
pop.v.i self.mv

:[55]
push.v self.mv
push.v self.fleetsize
cmp.v.v LT
bf [60]

:[56]
pushi.e -1
push.v self.mv
conv.v.i
push.v [array]self.boys
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [59]

:[57]
pushi.e -1
push.v self.mv
conv.v.i
push.v [array]self.boys
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.temp_move
push.v self.moveinterval
div.v.v
pushi.e 16
mul.i.v
add.v.v
push.v 631.x
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v LT
bf [59]

:[58]
pushi.e 1
pop.v.b local.force_shot
push.v self.mv
pop.v.v local.force_target
b [60]

:[59]
push.v local.temp_move
pushi.e -1
mul.i.v
pop.v.v local.temp_move
push.v self.mv
push.e 1
add.i.v
pop.v.v self.mv
b [55]

:[60]
push.v self.shottimer
pushi.e 0
cmp.i.v LTE
bf [62]

:[61]
push.v self.y
push.v 872.y
pushi.e 50
add.i.v
cmp.v.v LT
b [63]

:[62]
push.e 0

:[63]
bt [65]

:[64]
pushloc.v local.force_shot
conv.v.b
b [66]

:[65]
push.e 1

:[66]
bf [82]

:[67]
push.v self.fleetsize
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pop.v.v local.shootingboy
pushloc.v local.force_shot
conv.v.b
bf [69]

:[68]
pushloc.v local.force_target
pop.v.v local.shootingboy

:[69]
pushi.e -1
pushloc.v local.shootingboy
conv.v.i
push.v [array]self.boys
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [81]

:[70]
push.i 235749
setowner.e
pushi.e 1
pushi.e -1
pushloc.v local.shootingboy
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.i [stacktop]self.shotready
push.i 231464
setowner.e
push.v self.targetB
push.v self.target
call.i choose(argc=2)
pushi.e -1
pushloc.v local.shootingboy
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.ratio
push.v self.fleetsize
pushi.e 1
cmp.i.v GT
bf [75]

:[71]
push.v self.fleetsize
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
push.d 1.6
conv.d.v
b [74]

:[73]
push.d 2.3
conv.d.v

:[74]
pop.v.v self.ratio

:[75]
push.v self.fleetsize
pushi.e 1
cmp.i.v EQ
bt [77]

:[76]
push.v self.caralert
conv.v.b
b [78]

:[77]
push.e 1

:[78]
bf [80]

:[79]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pushi.e 20
add.i.v
pop.v.v self.shottimer
b [81]

:[80]
pushi.e 30
conv.i.v
call.i irandom(argc=1)
pushi.e 40
add.i.v
pop.v.v self.shottimer

:[81]
b [83]

:[82]
push.v self.shottimer
push.v self.fleetsize
sub.v.v
pop.v.v self.shottimer

:[83]
push.v self.fleetsize
pushi.e 1
cmp.i.v GT
bf [85]

:[84]
push.v self.movedirection
pushi.e 0
cmp.i.v LT
b [86]

:[85]
push.e 0

:[86]
pop.v.b self.reverse
pushi.e 0
pop.v.i self.i

:[87]
push.v self.i
push.v self.fleetsize
cmp.v.v LT
bf [end]

:[88]
push.v self.fleetsize
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.v self.timer
push.v self.moveinterval
cmp.v.v GTE
b [91]

:[90]
push.e 0

:[91]
bf [95]

:[92]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [94]

:[93]
b [105]

:[94]
push.i 133617
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133643
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
push.v [stacktop]self.image_index
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.image_index
b [102]

:[95]
push.v self.timer
push.v self.i
pushi.e 1
add.i.v
pushi.e 2
mul.i.v
add.v.v
push.v self.moveinterval
cmp.v.v EQ
bf [102]

:[96]
push.v self.reverse
conv.v.b
bf [98]

:[97]
push.v self.fleetsize
push.v self.i
sub.v.v
pushi.e 1
sub.i.v
b [99]

:[98]
push.v self.i

:[99]
pop.v.v self.target
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.boys
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [101]

:[100]
b [105]

:[101]
push.i 133617
setowner.e
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.boys
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.movedirection
add.v.v
pop.i.v [stacktop]self.x
push.i 133643
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
push.v [stacktop]self.image_index
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.image_index

:[102]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [104]

:[103]
b [105]

:[104]
push.i 133618
setowner.e
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boys
pushi.e -9
pop.v.v [stacktop]self.y

:[105]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [87]

:[end]