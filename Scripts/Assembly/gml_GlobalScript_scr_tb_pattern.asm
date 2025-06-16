.localvar 2 arguments
.localvar 11592 _pattern 3193
.localvar 11593 _spacing 3194
.localvar 11594 _distance 3195
.localvar 11595 _bullets 3196
.localvar 107 i 3197
.localvar 11596 _h 3198
.localvar 11609 _angle 3211
.localvar 11610 aa 3213
.localvar 11611 ii 3214
.localvar 1494 nn 3215
.localvar 11613 mm 3216

:[0]
b [136]

> gml_Script_scr_tb_pattern (locals=11, argc=0)
:[1]
pushbltn.v builtin.room
pop.v.v local._pattern
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v GT
bf [92]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local._pattern
pushloc.v local._pattern
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [16]

:[3]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [22]

:[4]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [28]

:[5]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [35]

:[6]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [42]

:[7]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [49]

:[8]
dup.v 0
pushi.e 52
cmp.i.v EQ
bt [53]

:[9]
dup.v 0
pushi.e 53
cmp.i.v EQ
bt [57]

:[10]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [61]

:[11]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [71]

:[12]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [81]

:[13]
b [15]

:[14]
b [91]

:[15]
b [91]

:[16]
pushi.e 84
pop.v.i local._spacing
pushi.e 720
pop.v.i local._distance
pushloc.v local._distance
pushloc.v local._spacing
rem.v.v
pop.v.v local._bullets
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
pushloc.v local._bullets
pushi.e 1
sub.i.v
cmp.v.v LT
bf [21]

:[18]
pushi.e 100
pushloc.v local.i
pushloc.v local._spacing
mul.v.v
add.v.i
pop.v.v local._h
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
pushloc.v local._h
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushloc.v local.i
pushloc.v local._bullets
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [20]

:[19]
pushi.e 16
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount

:[20]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[21]
b [91]

:[22]
pushi.e 84
pop.v.i local._spacing
pushi.e 1040
pop.v.i local._distance
pushloc.v local._distance
pushloc.v local._spacing
rem.v.v
pop.v.v local._bullets
pushi.e 0
pop.v.i local.i

:[23]
pushloc.v local.i
pushloc.v local._bullets
pushi.e 1
sub.i.v
cmp.v.v LT
bf [27]

:[24]
pushi.e 100
pushloc.v local.i
pushloc.v local._spacing
mul.v.v
add.v.i
pop.v.v local._h
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
pushloc.v local.i
pushi.e 40
mul.i.v
sub.v.i
pushloc.v local._h
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushloc.v local.i
pushloc.v local._bullets
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [26]

:[25]
pushi.e 16
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount

:[26]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [23]

:[27]
b [91]

:[28]
pushi.e 6
pop.v.i self.lasti
push.i 38309233
setowner.e
pushi.e 270
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bangle
pushi.e 230
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.bangle
pushi.e 190
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.bangle
pushi.e 230
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.bangle
pushi.e 270
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.bangle
pushi.e 310
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.bangle
pushi.e 350
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.bangle
pushi.e 0
pop.v.i local.i

:[29]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [34]

:[30]
pushi.e 0
pop.v.i self.j

:[31]
push.v self.j
pushi.e 4
cmp.i.v LT
bf [33]

:[32]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bangle
pushi.e 240
pushloc.v local.i
pushi.e 360
mul.i.v
add.v.i
push.v self.j
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [31]

:[33]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[34]
b [91]

:[35]
pushi.e 5
pop.v.i self.lasti
push.i 38309233
setowner.e
pushi.e 270
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bangle
pushi.e 230
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.bangle
pushi.e 190
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.bangle
pushi.e 230
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.bangle
pushi.e 270
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.bangle
pushi.e 310
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.bangle
pushi.e 0
pop.v.i local.i

:[36]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [41]

:[37]
pushi.e 0
pop.v.i self.j

:[38]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [40]

:[39]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bangle
pushi.e 140
pushloc.v local.i
pushi.e 320
mul.i.v
add.v.i
push.v self.j
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [38]

:[40]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [36]

:[41]
b [91]

:[42]
pushi.e 2
pop.v.i self.lasti
push.i 38309233
setowner.e
pushi.e 270
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bangle
pushi.e 310
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.bangle
pushi.e 270
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.bangle
pushi.e 0
pop.v.i local.i

:[43]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [48]

:[44]
pushi.e 0
pop.v.i self.j

:[45]
push.v self.j
pushi.e 4
cmp.i.v LT
bf [47]

:[46]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bangle
pushi.e 140
pushloc.v local.i
pushi.e 360
mul.i.v
add.v.i
push.v self.j
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [45]

:[47]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [43]

:[48]
b [91]

:[49]
pushi.e 0
pop.v.i local.i

:[50]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [52]

:[51]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 140
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [50]

:[52]
b [91]

:[53]
pushi.e 0
pop.v.i local.i

:[54]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [56]

:[55]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 120
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [54]

:[56]
b [91]

:[57]
pushi.e 0
pop.v.i local.i

:[58]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [60]

:[59]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 100
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 12
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [58]

:[60]
b [91]

:[61]
pushi.e 3
pop.v.i self.riseSpeed
pushi.e 8
pop.v.i self.riseSpeedBoostInitial
push.v self.riseSpeedBoostInitial
pop.v.v self.riseSpeedBoost
pushi.e 10
pop.v.i self.riseSpeedBoostMax
push.d 0.15
pop.v.d self.riseSpeedBoostFriction
pushi.e 9
pop.v.i self.lasti
pushi.e 270
pop.v.i self.nowdir
pushi.e 0
pop.v.i local.i

:[62]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [70]

:[63]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.nowdir
pushi.e 400
pushloc.v local.i
pushi.e 140
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 6
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
pushloc.v local.i
push.v self.lasti
cmp.v.v EQ
bf [65]

:[64]
pushi.e 10
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount

:[65]
push.v self.nowdir
pushi.e -30
conv.i.v
pushi.e -30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=5)
add.v.v
pop.v.v self.nowdir
push.v self.nowdir
pushi.e 180
cmp.i.v LTE
bf [67]

:[66]
pushi.e 210
conv.i.v
pushi.e 210
conv.i.v
pushi.e 180
conv.i.v
call.i choose(argc=3)
pop.v.v self.nowdir

:[67]
push.v self.nowdir
pushi.e 360
cmp.i.v GTE
bf [69]

:[68]
pushi.e 330
conv.i.v
pushi.e 330
conv.i.v
pushi.e 360
conv.i.v
call.i choose(argc=3)
pop.v.v self.nowdir

:[69]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [62]

:[70]
b [91]

:[71]
pushi.e 3
pop.v.i self.riseSpeed
pushi.e 6
pop.v.i self.riseSpeedBoostInitial
push.v self.riseSpeedBoostInitial
pop.v.v self.riseSpeedBoost
pushi.e 9
pop.v.i self.riseSpeedBoostMax
push.d 0.25
pop.v.d self.riseSpeedBoostFriction
pushi.e 15
pop.v.i self.lasti
pushi.e 270
pop.v.i self.nowdir
pushi.e 0
pop.v.i local.i

:[72]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [80]

:[73]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.nowdir
pushi.e 200
pushloc.v local.i
pushi.e 120
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 6
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
pushloc.v local.i
push.v self.lasti
cmp.v.v EQ
bf [75]

:[74]
pushi.e 10
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount

:[75]
push.v self.nowdir
pushi.e -30
conv.i.v
pushi.e -30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=5)
add.v.v
pop.v.v self.nowdir
push.v self.nowdir
pushi.e 180
cmp.i.v LTE
bf [77]

:[76]
pushi.e 210
conv.i.v
pushi.e 210
conv.i.v
pushi.e 180
conv.i.v
call.i choose(argc=3)
pop.v.v self.nowdir

:[77]
push.v self.nowdir
pushi.e 360
cmp.i.v GTE
bf [79]

:[78]
pushi.e 330
conv.i.v
pushi.e 330
conv.i.v
pushi.e 360
conv.i.v
call.i choose(argc=3)
pop.v.v self.nowdir

:[79]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [72]

:[80]
b [91]

:[81]
pushi.e 3
pop.v.i self.riseSpeed
pushi.e 8
pop.v.i self.riseSpeedBoostInitial
push.v self.riseSpeedBoostInitial
pop.v.v self.riseSpeedBoost
pushi.e 10
pop.v.i self.riseSpeedBoostMax
push.d 0.15
pop.v.d self.riseSpeedBoostFriction
pushi.e 5
pop.v.i self.lasti
pushi.e 270
pop.v.i self.nowdir
pushi.e 0
pop.v.i local.i

:[82]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [90]

:[83]
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.nowdir
pushi.e 400
pushloc.v local.i
pushi.e 180
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 6
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
pushloc.v local.i
push.v self.lasti
cmp.v.v EQ
bf [85]

:[84]
pushi.e 10
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount

:[85]
push.v self.nowdir
pushi.e -30
conv.i.v
pushi.e -30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=5)
add.v.v
pop.v.v self.nowdir
push.v self.nowdir
pushi.e 240
cmp.i.v LTE
bf [87]

:[86]
pushi.e 270
conv.i.v
pushi.e 240
conv.i.v
call.i choose(argc=2)
pop.v.v self.nowdir

:[87]
push.v self.nowdir
pushi.e 300
cmp.i.v GTE
bf [89]

:[88]
pushi.e 270
conv.i.v
pushi.e 300
conv.i.v
call.i choose(argc=2)
pop.v.v self.nowdir

:[89]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [82]

:[90]
pushi.e 6
pop.v.i self.scoreboardGoal
b [91]

:[91]
popz.v
b [135]

:[92]
pushloc.v local._pattern
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [102]

:[93]
dup.v 0
pushi.e 89
cmp.i.v EQ
bt [109]

:[94]
dup.v 0
pushi.e 175
cmp.i.v EQ
bt [115]

:[95]
dup.v 0
pushi.e 178
cmp.i.v EQ
bt [122]

:[96]
dup.v 0
pushi.e 177
cmp.i.v EQ
bt [123]

:[97]
dup.v 0
pushi.e 176
cmp.i.v EQ
bt [124]

:[98]
dup.v 0
pushi.e 185
cmp.i.v EQ
bt [125]

:[99]
b [101]

:[100]
b [134]

:[101]
b [134]

:[102]
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 120
conv.i.v
pushi.e 600
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 150
conv.i.v
pushi.e 700
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 180
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.spinSpeed
pushi.e 0
conv.i.v
pushi.e 1400
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.spinSpeed
pushi.e 30
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.spinSpeed
pushi.e 60
conv.i.v
pushi.e 1600
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.spinSpeed
pushi.e 0
conv.i.v
pushi.e 1800
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v self.spinSpeed
pushi.e 10
conv.i.v
pushi.e 2000
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.spinSpeed
pushi.e 20
conv.i.v
pushi.e 2200
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
pop.v.i local.i

:[103]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [105]

:[104]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 230
conv.i.v
pushi.e 2300
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
pushi.e 2300
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 310
conv.i.v
pushi.e 2300
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [103]

:[105]
pushi.e 0
pop.v.i local.i

:[106]
pushloc.v local.i
pushi.e 64
cmp.i.v LT
bf [108]

:[107]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.i
pushi.e 10
mul.i.v
pushi.e 2700
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 180
pushloc.v local.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 2700
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.i
call.i gml_Script_scr_tb_make(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [106]

:[108]
b [134]

:[109]
pushi.e 74
pop.v.i local._spacing
pushi.e 440
pop.v.i local._distance
pushloc.v local._distance
pushloc.v local._spacing
rem.v.v
pop.v.v local._bullets
pushi.e 0
pop.v.i local.i

:[110]
pushloc.v local.i
pushloc.v local._bullets
cmp.v.v LT
bf [114]

:[111]
pushi.e 60
pushloc.v local.i
pushloc.v local._spacing
mul.v.v
add.v.i
pop.v.v local._h
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 350
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
pushloc.v local._h
pushi.e 5
sub.i.v
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
pushi.e 6
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount
pushloc.v local.i
pushloc.v local._bullets
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [113]

:[112]
pushi.e 8
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.boostAmount

:[113]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [110]

:[114]
b [134]

:[115]
push.i 38309242
setowner.e
pushi.e 270
conv.i.v
pushi.e 150
conv.i.v
pushi.e 30
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v local._angle
pushi.e 2
pop.v.i self.lasti
pushi.e 0
pop.v.i local.i

:[116]
pushloc.v local.i
push.v self.lasti
cmp.v.v LTE
bf [121]

:[117]
pushi.e 0
pop.v.i self.j

:[118]
push.v self.j
pushi.e 5
cmp.i.v LT
bf [120]

:[119]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._angle
pushi.e 500
pushloc.v local.i
pushi.e 280
mul.i.v
add.v.i
push.v self.j
pushi.e 30
mul.i.v
add.v.v
call.i gml_Script_scr_tb_make(argc=5)
pop.v.v self.bullet
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [118]

:[120]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [116]

:[121]
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1800
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2100
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
pushi.e 2400
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
b [134]

:[122]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 650
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
pushi.e 60
conv.i.v
pushi.e 1030
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1220
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -5
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1410
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1600
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1790
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1980
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 2170
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
b [134]

:[123]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 650
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 700
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 750
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1000
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1050
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1100
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1350
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1400
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1450
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
b [134]

:[124]
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e -3
conv.i.v
pushi.e 70
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 180
conv.i.v
pushi.e 900
conv.i.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1100
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e -4
conv.i.v
pushi.e 180
conv.i.v
pushi.e 1100
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1960
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 120
conv.i.v
pushi.e 1960
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1960
conv.i.v
call.i gml_Script_scr_tb_make(argc=5)
popz.v
b [134]

:[125]
pushi.e 300
pop.v.i local.aa
pushi.e 0
pop.v.i local.ii

:[126]
pushloc.v local.ii
pushi.e 10
cmp.i.v LT
bf [128]

:[127]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
pushi.e 90
conv.i.v
pushloc.v local.aa
pushi.e 950
add.i.v
pushloc.v local.ii
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [126]

:[128]
pushi.e 0
pop.v.i local.ii

:[129]
pushloc.v local.ii
pushi.e 10
cmp.i.v LT
bf [131]

:[130]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e -10
conv.i.v
pushi.e 90
conv.i.v
pushloc.v local.aa
pushi.e 1600
add.i.v
pushloc.v local.ii
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [129]

:[131]
pushi.e 1500
pushloc.v local.aa
add.v.i
pop.v.v local.nn
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 270
conv.i.v
pushi.e 750
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1000
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1250
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 180
conv.i.v
pushi.e 1500
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1750
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2000
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 90
conv.i.v
pushi.e 2200
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 180
conv.i.v
pushi.e 2400
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 270
conv.i.v
pushi.e 2600
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2800
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 90
conv.i.v
pushi.e 3000
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 180
conv.i.v
pushi.e 3200
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 270
conv.i.v
pushi.e 3400
pushloc.v local.nn
add.v.i
call.i gml_Script_scr_tb_make_crescent(argc=6)
popz.v
pushi.e 5100
pushloc.v local.aa
add.v.i
pop.v.v local.mm
pushi.e 0
pop.v.i local.ii

:[132]
pushloc.v local.ii
pushi.e 40
cmp.i.v LT
bf [134]

:[133]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.d 6.25
conv.d.v
pushi.e 90
pushi.e 10
pushloc.v local.ii
mul.v.i
add.v.i
pushloc.v local.ii
pushi.e 32
mul.i.v
pushloc.v local.mm
add.v.v
call.i gml_Script_scr_tb_make_split(argc=5)
popz.v
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [132]

:[134]
popz.v

:[135]
exit.i

:[136]
push.i [function]gml_Script_scr_tb_pattern
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tb_pattern
popz.v

:[end]