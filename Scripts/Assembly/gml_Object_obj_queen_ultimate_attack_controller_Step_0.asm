.localvar 2 arguments
.localvar 6482 xx 11868
.localvar 6483 yy 11869
.localvar 24826 _error 11870

:[0]
pushi.e 873
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [32]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v LT
bf [11]

:[4]
pushi.e 371
pushenv [7]

:[5]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[7]
popenv [5]
pushi.e 574
pushenv [10]

:[8]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[10]
popenv [8]

:[11]
push.v self.timer
pushi.e 45
cmp.i.v LT
bf [13]

:[12]
push.v self.variant
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.barprogress
pushi.e 2
add.i.v
pop.v.v self.barprogress

:[16]
push.v self.timer
pushi.e 15
cmp.i.v LT
bf [18]

:[17]
push.v self.variant
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.barprogress
pushi.e 6
add.i.v
pop.v.v self.barprogress

:[21]
push.v self.timer
pushi.e 90
cmp.i.v GT
bf [23]

:[22]
push.v self.variant
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bt [29]

:[25]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [27]

:[26]
push.v self.variant
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[32]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [83]

:[33]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v 872.x
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
push.v self.poppuptimer
push.e 1
add.i.v
pop.v.v self.poppuptimer
push.v self.poppuptimer
pushi.e 2
cmp.i.v EQ
bf [65]

:[34]
push.v self.poppupcount
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 75
sub.i.v
pushloc.v local.xx
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[36]
push.v self.poppupcount
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 40
sub.i.v
pushloc.v local.xx
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[38]
push.v self.poppupcount
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 75
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[40]
push.v self.poppupcount
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 15
sub.i.v
pushloc.v local.xx
pushi.e 90
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[42]
push.v self.poppupcount
pushi.e 4
cmp.i.v EQ
bf [44]

:[43]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 5
sub.i.v
pushloc.v local.xx
pushi.e 45
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[44]
push.v self.poppupcount
pushi.e 5
cmp.i.v EQ
bf [46]

:[45]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 13
add.i.v
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[46]
push.v self.poppupcount
pushi.e 6
cmp.i.v EQ
bf [48]

:[47]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 75
add.i.v
pushloc.v local.xx
pushi.e 57
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[48]
push.v self.poppupcount
pushi.e 7
cmp.i.v EQ
bf [50]

:[49]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 99
add.i.v
pushloc.v local.xx
pushi.e 15
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[50]
push.v self.poppupcount
pushi.e 8
cmp.i.v EQ
bf [52]

:[51]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 65
add.i.v
pushloc.v local.xx
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[52]
push.v self.poppupcount
pushi.e 9
cmp.i.v EQ
bf [54]

:[53]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 85
add.i.v
pushloc.v local.xx
pushi.e 50
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[54]
push.v self.poppupcount
pushi.e 10
cmp.i.v EQ
bf [56]

:[55]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 50
add.i.v
pushloc.v local.xx
pushi.e 83
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[56]
push.v self.poppupcount
pushi.e 11
cmp.i.v EQ
bf [58]

:[57]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 85
sub.i.v
pushloc.v local.xx
pushi.e 25
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[58]
push.v self.poppupcount
pushi.e 12
cmp.i.v EQ
bf [60]

:[59]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 40
sub.i.v
pushloc.v local.xx
pushi.e 70
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[60]
push.v self.poppupcount
pushi.e 13
cmp.i.v EQ
bf [62]

:[61]
pushi.e 556
conv.i.v
pushloc.v local.yy
pushi.e 30
add.i.v
pushloc.v local.xx
pushi.e 90
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._error

:[62]
push.v self.poppupcount
pushi.e 13
cmp.i.v LTE
bf [64]

:[63]
pushloc.v local._error
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
push.v self.poppupcount
sub.v.v
pop.i.v [stacktop]self.depth

:[64]
pushi.e 0
pop.v.i self.poppuptimer
push.v self.poppupcount
push.e 1
add.i.v
pop.v.v self.poppupcount

:[65]
push.v self.timer
pushi.e 24
cmp.i.v EQ
bf [67]

:[66]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushi.e 100
sub.i.v
pushloc.v local.xx
pushi.e 200
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[67]
push.v self.timer
pushi.e 40
cmp.i.v EQ
bf [69]

:[68]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 200
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[69]
push.v self.timer
pushi.e 56
cmp.i.v EQ
bf [71]

:[70]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushi.e 100
add.i.v
pushloc.v local.xx
pushi.e 190
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[71]
push.v self.timer
pushi.e 72
cmp.i.v EQ
bf [73]

:[72]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushi.e 100
sub.i.v
pushloc.v local.xx
pushi.e 200
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[73]
push.v self.timer
pushi.e 88
cmp.i.v EQ
bf [75]

:[74]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 200
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[75]
push.v self.timer
pushi.e 104
cmp.i.v EQ
bf [77]

:[76]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushi.e 100
add.i.v
pushloc.v local.xx
pushi.e 190
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[77]
push.v self.timer
pushi.e 120
cmp.i.v EQ
bf [79]

:[78]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushi.e 100
sub.i.v
pushloc.v local.xx
pushi.e 200
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[79]
push.v self.timer
pushi.e 136
cmp.i.v EQ
bf [81]

:[80]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 200
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[81]
push.v self.timer
pushi.e 152
cmp.i.v EQ
bf [83]

:[82]
pushi.e 527
conv.i.v
pushloc.v local.yy
pushi.e 100
add.i.v
pushloc.v local.xx
pushi.e 190
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first

:[83]
pushglb.v global.turntimer
pushi.e 14
cmp.i.v LT
bf [87]

:[84]
pushi.e 556
pushenv [86]

:[85]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[86]
popenv [85]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[87]
pushglb.v global.turntimer
pushi.e 11
cmp.i.v LT
bf [end]

:[88]
pushi.e 556
pushenv [90]

:[89]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[90]
popenv [89]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
pushi.e 371
pushenv [92]

:[91]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[92]
popenv [91]
pushi.e 574
pushenv [94]

:[93]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[94]
popenv [93]

:[end]