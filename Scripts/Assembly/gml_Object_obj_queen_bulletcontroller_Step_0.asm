.localvar 2 arguments
.localvar 25184 _side 12092
.localvar 7017 a 12098
.localvar 25190 spawnheight 12099
.localvar 25191 everyman 12100

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterattackname
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pop.v.v self.sameattack
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [9]

:[2]
push.v self.creator
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.sameattack
pushi.e 1
sub.i.v
pop.v.v self.sameattacker
b [9]

:[4]
push.v self.creator
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
push.v self.sameattack
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v self.creator
b [8]

:[7]
pushi.e -5
pushi.e 0
push.v [array]self.monsterattackname
pushi.e -5
pushi.e 1
push.v [array]self.monsterattackname
cmp.v.v EQ
conv.b.v

:[8]
pop.v.v self.sameattacker

:[9]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.miny
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.minx
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxx

:[11]
pushi.e 1
pop.v.i self.init

:[12]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
bf [14]

:[13]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer

:[14]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [17]

:[15]
push.v self.type
pushi.e 9
cmp.i.v EQ
bt [17]

:[16]
push.v self.type
pushi.e 8
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [194]

:[19]
push.v self.bufferattack
conv.v.b
bf [21]

:[20]
pushi.e 562
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [27]

:[23]
pushi.e 562
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 60
add.i.v
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bc
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v global.turntimer
pushi.e 40
add.i.v
pop.v.v global.turntimer
pushi.e 4
pop.v.i self.special
pushi.e -4
pop.v.i self.made
pushi.e 161
push.v self.bc
pushi.e -9
pop.v.i [stacktop]self.bufferdelay
pushi.e 45
push.v self.bc
pushi.e -9
pop.v.i [stacktop]self.bufferduration
b [27]

:[25]
push.v self.special
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 150
push.v self.bc
pushi.e -9
pop.v.i [stacktop]self.bufferdelay
pushi.e 45
push.v self.bc
pushi.e -9
pop.v.i [stacktop]self.bufferduration

:[27]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [45]

:[28]
push.v self.special
pushi.e 4
cmp.i.v EQ
bf [35]

:[29]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 1
add.i.v
pop.v.v self.side
push.v self.bufferattack
conv.v.b
bf [31]

:[30]
push.v self.side
pushi.e 2
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
push.v self.bc
pushi.e -9
dup.i 4
push.v [stacktop]self.bufferdelay
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.bufferdelay

:[34]
b [43]

:[35]
push.v self.special
pushi.e 5
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.side
b [43]

:[37]
push.v self.special
pushi.e 2
cmp.i.v GTE
bf [39]

:[38]
push.v self.special
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
pop.v.v self.side
b [43]

:[42]
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=2)
pop.v.v self.side

:[43]
push.v self.side
pop.v.v self.lastside
pushi.e 2
pop.v.i self.init
push.v self.special
pushi.e 2
cmp.i.v GTE
bf [45]

:[44]
pushi.e -2
pop.v.i self.made

:[45]
push.v self.special
pushi.e 1
cmp.i.v GT
bf [54]

:[46]
push.v self.made
pushi.e 0
cmp.i.v LTE
bf [54]

:[47]
push.v self.btimer
pushi.e 7
cmp.i.v GTE
bt [52]

:[48]
push.v self.special
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
push.v self.btimer
pushi.e 3
cmp.i.v GTE
b [51]

:[50]
push.e 0

:[51]
b [53]

:[52]
push.e 1

:[53]
b [55]

:[54]
push.e 0

:[55]
bf [112]

:[56]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
push.v self.bufferattack
conv.v.b
b [59]

:[58]
push.e 0

:[59]
bf [67]

:[60]
push.v self.made
pushi.e -2
cmp.i.v EQ
bf [62]

:[61]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy

:[62]
push.v self.made
pushi.e -1
cmp.i.v EQ
bf [64]

:[63]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy

:[64]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.v 872.x
pop.v.v self.xx
push.v 872.y
pushi.e 150
sub.i.v
pop.v.v self.yy

:[66]
b [111]

:[67]
push.v self.special
pushi.e 4
cmp.i.v EQ
bf [82]

:[68]
push.v self.made
pushi.e -1
cmp.i.v EQ
bf [73]

:[69]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
push.v self.made
push.v self.side
cmp.v.v EQ
bf [71]

:[70]
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
b [72]

:[71]
pushi.e 0
conv.i.v

:[72]
add.v.v
pop.v.v self.yy
b [81]

:[73]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [78]

:[74]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
push.v self.made
push.v self.side
cmp.v.v EQ
bf [76]

:[75]
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
b [77]

:[76]
pushi.e 0
conv.i.v

:[77]
add.v.v
pop.v.v self.yy
b [81]

:[78]
push.v 872.y
pushi.e 70
conv.i.v
pushi.e -180
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy
push.v self.yy
push.v 872.y
pushi.e 130
sub.i.v
cmp.v.v GT
bf [80]

:[79]
push.v 872.x
pushi.e 250
conv.i.v
pushi.e 200
conv.i.v
call.i random_range(argc=2)
call.i gml_Script_randomsign(argc=0)
mul.v.v
add.v.v
pop.v.v self.xx
b [81]

:[80]
push.v 872.x
pushi.e 250
conv.i.v
call.i irandom(argc=1)
call.i gml_Script_randomsign(argc=0)
mul.v.v
add.v.v
pop.v.v self.xx

:[81]
b [111]

:[82]
push.v self.special
pushi.e 5
cmp.i.v EQ
bf [88]

:[83]
push.v self.made
pushi.e -2
cmp.i.v EQ
bf [85]

:[84]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy

:[85]
push.v self.made
pushi.e -1
cmp.i.v EQ
bf [87]

:[86]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy

:[87]
b [111]

:[88]
push.v self.special
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [99]

:[89]
push.v self.made
pushi.e -2
cmp.i.v EQ
bf [91]

:[90]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy

:[91]
push.v self.made
pushi.e -1
cmp.i.v EQ
bf [93]

:[92]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy

:[93]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [98]

:[94]
push.v 872.x
pushi.e 60
conv.i.v
pushi.e -60
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.xx
push.v 872.y
push.v self.side
push.v self.made
cmp.v.v EQ
bf [96]

:[95]
pushi.e 140
conv.i.v
b [97]

:[96]
pushi.e 100
conv.i.v

:[97]
sub.v.v
pop.v.v self.yy

:[98]
b [111]

:[99]
push.v self.made
pushi.e -2
cmp.i.v EQ
bf [104]

:[100]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
push.v self.made
push.v self.side
cmp.v.v EQ
bf [102]

:[101]
pushi.e 0
conv.i.v
b [103]

:[102]
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)

:[103]
add.v.v
pop.v.v self.yy

:[104]
push.v self.made
pushi.e -1
cmp.i.v EQ
bf [109]

:[105]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
push.v self.made
push.v self.side
cmp.v.v EQ
bf [107]

:[106]
pushi.e 0
conv.i.v
b [108]

:[107]
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)

:[108]
add.v.v
pop.v.v self.yy

:[109]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
push.v 872.x
call.i gml_Script_randomsign(argc=0)
pushi.e 60
mul.i.v
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 100
sub.i.v
pop.v.v self.yy

:[111]
b [139]

:[112]
push.v self.btimer
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
pushi.e 40
conv.i.v
b [115]

:[114]
pushi.e 60
conv.i.v

:[115]
cmp.v.v GTE
bf [138]

:[116]
pushi.e 0
pop.v.i self.btimer
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushi.e 0
pop.v.i local._side
b [123]

:[118]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
pushi.e 2
conv.i.v
b [121]

:[120]
pushi.e 1
conv.i.v

:[121]
call.i irandom(argc=1)
pop.v.v local._side
pushloc.v local._side
push.v self.lastside
cmp.v.v EQ
bf [123]

:[122]
pushi.e 2
pop.v.i local._side

:[123]
push.v self.special
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [131]

:[124]
pushloc.v local._side
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy

:[126]
pushloc.v local._side
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e -40
conv.i.v
pushi.e 20
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy

:[128]
pushloc.v local._side
pushi.e 2
cmp.i.v EQ
bf [130]

:[129]
push.v 872.x
pushi.e 100
conv.i.v
pushi.e -100
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 140
sub.i.v
pop.v.v self.yy

:[130]
b [137]

:[131]
pushloc.v local._side
pushi.e 0
cmp.i.v EQ
bf [133]

:[132]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy

:[133]
pushloc.v local._side
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy

:[135]
pushloc.v local._side
pushi.e 2
cmp.i.v EQ
bf [137]

:[136]
push.v 872.x
pop.v.v self.xx
push.v 872.y
pushi.e 100
sub.i.v
pop.v.v self.yy

:[137]
pushloc.v local._side
pop.v.v self.lastside
pushi.e 0
pop.v.i self.side
b [139]

:[138]
exit.i

:[139]
push.v self.special
pushi.e 4
cmp.i.v EQ
bf [146]

:[140]
pushi.e 539
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.made
push.v self.side
cmp.v.v EQ
bf [142]

:[141]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
b [145]

:[142]
push.v self.made
pushi.e 0
cmp.i.v GT
bf [144]

:[143]
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
b [145]

:[144]
pushi.e -1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search

:[145]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
b [182]

:[146]
push.v self.special
pushi.e 5
cmp.i.v EQ
bf [153]

:[147]
pushi.e 539
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.made
push.v self.side
cmp.v.v EQ
bf [149]

:[148]
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
b [150]

:[149]
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search

:[150]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [152]

:[151]
pushi.e 3
pop.v.i self.made

:[152]
b [182]

:[153]
push.v self.special
pushi.e 99
cmp.i.v EQ
bf [160]

:[154]
pushi.e 541
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.made
pushi.e -2
cmp.i.v EQ
bf [156]

:[155]
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
b [157]

:[156]
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search

:[157]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
pushi.e 3
pop.v.i self.made

:[159]
b [182]

:[160]
push.v self.special
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [170]

:[161]
pushi.e 539
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.made
pushi.e 0
cmp.i.v GT
bf [163]

:[162]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.quick

:[163]
push.v self.made
push.v self.side
cmp.v.v EQ
bt [165]

:[164]
push.v self.made
pushi.e 0
cmp.i.v GT
b [166]

:[165]
push.e 1

:[166]
bf [168]

:[167]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
b [169]

:[168]
pushi.e -1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search

:[169]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
b [182]

:[170]
push.v self.special
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [182]

:[171]
pushi.e 539
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.made
pushi.e 0
cmp.i.v GT
bf [173]

:[172]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.quick

:[173]
push.v self.made
push.v self.side
cmp.v.v EQ
bt [176]

:[174]
push.v self.made
pushi.e 0
cmp.i.v GT
bt [176]

:[175]
push.v self.bufferattack
conv.v.b
b [177]

:[176]
push.e 1

:[177]
bf [179]

:[178]
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
b [180]

:[179]
pushi.e -1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search

:[180]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.bufferattack
conv.v.b
bf [182]

:[181]
pushi.e 14
push.v self.made
pushi.e 7
mul.i.v
sub.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.spawndelay

:[182]
push.v self.special
pushi.e 2
cmp.i.v LT
bf [184]

:[183]
push.v self.made
pushi.e 3
cmp.i.v LT
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
pushi.e 3
pop.v.i self.made
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.firsttime
pushi.e -30
pop.v.i self.btimer
b [188]

:[187]
push.v self.made
push.e 1
add.i.v
pop.v.v self.made
pushi.e 0
pop.v.i self.btimer

:[188]
push.v self.made
pushi.e 3
cmp.i.v LT
bf [190]

:[189]
push.v self.special
pushi.e 5
cmp.i.v EQ
b [191]

:[190]
push.e 0

:[191]
bf [193]

:[192]
pushi.e -120
pop.v.i self.btimer

:[193]
b [end]

:[194]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [198]

:[195]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushi.e 555
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 429
conv.i.v
push.v 631.y
push.v 631.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 2
pop.v.i self.init

:[197]
b [end]

:[198]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [201]

:[199]
push.v self.type
push.d 2.1
cmp.d.v EQ
bt [201]

:[200]
push.v self.type
push.d 2.2
cmp.d.v EQ
b [202]

:[201]
push.e 1

:[202]
bf [258]

:[203]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [208]

:[204]
pushi.e 2
pop.v.i self.init
pushi.e 30
pop.v.i self.btimer
pushi.e 514
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.x
pushi.e 20
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.xx
push.v self.y
pushi.e 37
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.yy
push.v self.type
push.d 2.1
cmp.d.v EQ
bf [206]

:[205]
pushi.e 8
pop.v.i self.threshold
pushi.e 4
pop.v.i self.wineadd
push.v self.turnamount
push.d 1.2
mul.d.v
pop.v.v self.turnamount
pushi.e 1
pop.v.i 574.beatwine2nodamage

:[206]
push.v self.type
push.d 2.2
cmp.d.v EQ
bf [208]

:[207]
pushi.e 6
pop.v.i self.threshold
pushi.e 3
pop.v.i self.wineadd
push.v self.turnamount
pushi.e 2
mul.i.v
pop.v.v self.turnamount

:[208]
push.v self.init
pushi.e 3
cmp.i.v EQ
bt [210]

:[209]
push.v self.init
pushi.e 4
cmp.i.v EQ
b [211]

:[210]
push.e 1

:[211]
bf [257]

:[212]
push.v self.init
pushi.e 3
cmp.i.v EQ
bf [216]

:[213]
pushi.e 4
pop.v.i self.init
pushi.e 368
pushenv [215]

:[214]
call.i instance_destroy(argc=0)
popz.v

:[215]
popenv [214]
pushi.e 368
conv.i.v
push.v 872.y
pushi.e 30
add.i.v
push.v 872.x
pushi.e 8
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[216]
push.v self.btimer
push.v self.threshold
push.v self.wineadded
pushi.e 12
conv.i.d
div.d.v
add.v.v
cmp.v.v GTE
bf [218]

:[217]
push.v self.winedebug
pushi.e 0
cmp.i.v EQ
b [219]

:[218]
push.e 0

:[219]
bt [224]

:[220]
push.v self.winedebug
pushi.e 1
cmp.i.v EQ
bf [222]

:[221]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [223]

:[222]
push.e 0

:[223]
b [225]

:[224]
push.e 1

:[225]
bf [237]

:[226]
push.i 171038
setowner.e
pushi.e 516
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.dropletcount
conv.v.i
pop.v.v [array]self.droplet
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pushenv [228]

:[227]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit

:[228]
popenv [227]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [230]

:[229]
push.i 133637
setowner.e
push.v 631.depth
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.v [stacktop]self.depth

:[230]
push.i 133642
setowner.e
pushi.e 1962
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 236602
setowner.e
pushi.e 280
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.i [stacktop]self.ydist
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.i [stacktop]self.active
push.i 236603
setowner.e
pushi.e -65
pushi.e 130
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.v [stacktop]self.xdist
push.i 236604
setowner.e
pushi.e 0
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.i [stacktop]self.timefrommade
push.i 234400
setowner.e
pushi.e 2
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.i [stacktop]self.fakespeed
push.i 233283
setowner.e
push.v 514.id
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e -1
push.v self.dropletcount
conv.v.i
push.v [array]self.droplet
pushi.e -9
pushenv [236]

:[231]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [233]

:[232]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[233]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [235]

:[234]
push.v 575.target
pop.v.v self.target

:[235]
pushi.e 4
pop.v.i self.grazepoints

:[236]
popenv [231]
push.v self.dropletcount
push.e 1
add.i.v
pop.v.v self.dropletcount
pushi.e 0
pop.v.i self.btimer

:[237]
pushi.e 0
pop.v.i self.i

:[238]
push.v self.i
push.v self.dropletcount
cmp.v.v LT
bf [243]

:[239]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.droplet
pushi.e -9
pushenv [242]

:[240]
push.v self.fakespeed
push.d 0.2
add.d.v
pop.v.v self.fakespeed
push.v self.timefrommade
push.v self.fakespeed
add.v.v
pop.v.v self.timefrommade
push.v 514.image_angle
pop.v.v self.image_angle
push.v 514.x
push.v self.image_angle
pushi.e 90
add.i.v
push.v self.ydist
push.v self.timefrommade
sub.v.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x2
push.v 514.y
push.v self.image_angle
pushi.e 90
add.i.v
push.v self.ydist
push.v self.timefrommade
sub.v.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y2
push.v self.x2
push.v self.image_angle
push.v self.xdist
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x3
push.v self.y2
push.v self.image_angle
push.v self.xdist
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y3
push.v self.y3
pop.v.v self.y
push.v self.x3
pop.v.v self.x
push.v self.y3
push.v 514.y
pushi.e 70
add.i.v
pushi.e 75
push.v self.xdist
call.i abs(argc=1)
sub.v.i
push.d 1.7
div.d.v
add.v.v
cmp.v.v GTE
bf [242]

:[241]
push.v 514.prefill
push.v 575.wineadd
add.v.v
pop.v.v 514.prefill
push.v 575.wineadded
pushi.e 1
add.i.v
pop.v.v 575.wineadded
call.i instance_destroy(argc=0)
popz.v

:[242]
popenv [240]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [238]

:[243]
push.v self.ctimer
push.e 1
add.i.v
pop.v.v self.ctimer
push.v self.type
push.d 2.1
cmp.d.v EQ
bt [246]

:[244]
push.v self.type
push.d 2.2
cmp.d.v EQ
bt [246]

:[245]
push.v self.type
push.d 2.3
cmp.d.v EQ
b [247]

:[246]
push.e 1

:[247]
bf [255]

:[248]
push.v self.winedebug
pushi.e 0
cmp.i.v EQ
bf [250]

:[249]
push.v self.ctimer
push.v self.turnperiod
div.v.v
call.i sin(argc=1)
push.v self.turnamount
mul.v.v
pop.v.v 514.image_angle
b [254]

:[250]
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [252]

:[251]
push.v 514.image_angle
push.d 0.5
add.d.v
pop.v.v 514.image_angle

:[252]
call.i gml_Script_button3_h(argc=0)
conv.v.b
bf [254]

:[253]
push.v 514.image_angle
push.d 0.5
sub.d.v
pop.v.v 514.image_angle

:[254]
push.v 514.image_angle
pop.v.v self.image_angle

:[255]
push.v self.winedebug
pushi.e 1
cmp.i.v EQ
bf [257]

:[256]
pushi.e 100
pop.v.i global.turntimer

:[257]
b [end]

:[258]
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [263]

:[259]
push.v self.type
push.d 3.1
cmp.d.v EQ
bt [263]

:[260]
push.v self.type
push.d 3.2
cmp.d.v EQ
bt [263]

:[261]
push.v self.type
push.d 3.3
cmp.d.v EQ
bt [263]

:[262]
push.v self.type
push.d 3.4
cmp.d.v EQ
b [264]

:[263]
push.e 1

:[264]
bf [363]

:[265]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [318]

:[266]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [318]

:[267]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.chooselocation
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
bf [270]

:[268]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [270]

:[269]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
b [271]

:[270]
push.e 0

:[271]
bf [273]

:[272]
pushi.e 0
pop.v.i self.chooselocation

:[273]
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [276]

:[274]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
bf [276]

:[275]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
b [277]

:[276]
push.e 0

:[277]
bf [279]

:[278]
pushi.e 1
pop.v.i self.chooselocation

:[279]
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [282]

:[280]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [282]

:[281]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
b [283]

:[282]
push.e 0

:[283]
bf [285]

:[284]
pushi.e 2
pop.v.i self.chooselocation

:[285]
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
bf [288]

:[286]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
bf [288]

:[287]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
b [289]

:[288]
push.e 0

:[289]
bf [291]

:[290]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.chooselocation

:[291]
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
bf [294]

:[292]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [294]

:[293]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
b [295]

:[294]
push.e 0

:[295]
bf [297]

:[296]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.chooselocation

:[297]
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [300]

:[298]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
bf [300]

:[299]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 0
cmp.i.v EQ
b [301]

:[300]
push.e 0

:[301]
bf [303]

:[302]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.chooselocation

:[303]
pushi.e -1
pushi.e 0
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [306]

:[304]
pushi.e -1
pushi.e 1
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
bf [306]

:[305]
pushi.e -1
pushi.e 2
push.v [array]self.stomplocation
pushi.e 1
cmp.i.v EQ
b [307]

:[306]
push.e 0

:[307]
bf [309]

:[308]
push.i 171058
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.stomplocation
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.stomplocation
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.stomplocation

:[309]
pushi.e 1
dup.i 0
push.i 0
cmp.i.i LTE
bt [317]

:[310]
push.v self.chooselocation
pushi.e 0
cmp.i.v EQ
bf [312]

:[311]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e -47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.stomplocation

:[312]
push.v self.chooselocation
pushi.e 1
cmp.i.v EQ
bf [314]

:[313]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.stomplocation

:[314]
push.v self.chooselocation
pushi.e 2
cmp.i.v EQ
bf [316]

:[315]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.stomplocation

:[316]
push.v self.chooselocation
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pos
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.shootbullets
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [310]

:[317]
popz.i
pushi.e 9
pop.v.i self.btimer

:[318]
push.v self.type
push.d 3.1
cmp.d.v EQ
bf [321]

:[319]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [321]

:[320]
pushi.e 565
conv.i.v
push.v 872.y
pushi.e 47
conv.i.v
pushi.e 0
conv.i.v
pushi.e -47
conv.i.v
call.i choose(argc=3)
add.v.v
push.v self.maxx
pushi.e 4
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 1937
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.btimer

:[321]
push.v self.type
push.d 3.2
cmp.d.v EQ
bf [334]

:[322]
push.v self.btimer
pushi.e 110
cmp.i.v EQ
bf [324]

:[323]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
conv.i.v
pushi.e 0
conv.i.v
pushi.e -47
conv.i.v
call.i choose(argc=3)
add.v.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[324]
push.v self.btimer
pushi.e 130
cmp.i.v EQ
bf [326]

:[325]
pushi.e 565
conv.i.v
push.v 872.y
pushi.e 47
conv.i.v
pushi.e 0
conv.i.v
pushi.e -47
conv.i.v
call.i choose(argc=3)
add.v.v
push.v self.maxx
pushi.e 4
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 1937
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[326]
push.v self.btimer
pushi.e 150
cmp.i.v EQ
bf [328]

:[327]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
conv.i.v
pushi.e 0
conv.i.v
pushi.e -47
conv.i.v
call.i choose(argc=3)
add.v.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[328]
push.v self.btimer
pushi.e 170
cmp.i.v EQ
bf [330]

:[329]
pushi.e 565
conv.i.v
push.v 872.y
pushi.e 47
conv.i.v
pushi.e 0
conv.i.v
pushi.e -47
conv.i.v
call.i choose(argc=3)
add.v.v
push.v self.maxx
pushi.e 4
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 1937
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[330]
push.v self.btimer
pushi.e 190
cmp.i.v EQ
bf [332]

:[331]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e -47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[332]
push.v self.btimer
pushi.e 192
cmp.i.v EQ
bf [334]

:[333]
pushi.e 565
conv.i.v
push.v 872.y
pushi.e 0
add.i.v
push.v self.maxx
pushi.e 4
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 1937
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[334]
push.v self.type
push.d 3.3
cmp.d.v EQ
bf [349]

:[335]
push.v self.btimer
pushi.e 110
cmp.i.v EQ
bf [337]

:[336]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.special
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.special

:[337]
push.v self.btimer
pushi.e 140
cmp.i.v EQ
bf [339]

:[338]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
sub.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.special

:[339]
push.v self.btimer
pushi.e 140
cmp.i.v GT
bf [341]

:[340]
push.v self.btimer
pushi.e 154
cmp.i.v LT
b [342]

:[341]
push.e 0

:[342]
bf [347]

:[343]
pushi.e 565
pushenv [346]

:[344]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [346]

:[345]
push.v self.stomplerp
push.d 0.01
sub.d.v
pop.v.v self.stomplerp

:[346]
popenv [344]

:[347]
push.v self.btimer
pushi.e 170
cmp.i.v EQ
bf [349]

:[348]
pushi.e 565
conv.i.v
push.v 872.y
pushi.e 47
add.i.v
push.v self.maxx
pushi.e 4
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 1937
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.special

:[349]
push.v self.type
push.d 3.4
cmp.d.v EQ
bf [362]

:[350]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [362]

:[351]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [361]

:[352]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [354]

:[353]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e -47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[354]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [356]

:[355]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[356]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [358]

:[357]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[358]
push.v local.a
pushi.e 1
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.i
add.v.v
pop.v.v local.a
pushloc.v local.a
pushi.e 2
cmp.i.v GT
bf [360]

:[359]
push.v local.a
pushi.e 3
sub.i.v
pop.v.v local.a

:[360]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [352]

:[361]
popz.i
pushi.e 0
pop.v.i self.btimer

:[362]
b [end]

:[363]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [385]

:[364]
pushi.e 535
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [366]

:[365]
push.v self.btimer
push.v 535.scrollSpeed
pushi.e 4
conv.i.d
div.d.v
pushi.e 1
sub.i.v
add.v.v
pop.v.v self.btimer

:[366]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [370]

:[367]
pushi.e 10
pop.v.i self.btimer
pushi.e 564
conv.i.v
pushi.e -40
conv.i.v
push.v 872.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.d 2.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 3.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 2
pop.v.i self.init
pushi.e 1917
conv.i.v
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.extra
pushi.e 535
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 660
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [369]

:[368]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.bigscrollcount

:[369]
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.timer

:[370]
push.v self.btimer
pushi.e 10
cmp.i.v GTE
bf [384]

:[371]
call.i gml_Script_cameray(argc=0)
pushi.e 40
sub.i.v
pushi.e 4
push.v self.btimer
pushi.e 10
sub.i.v
mul.v.i
add.v.v
pop.v.v local.spawnheight
pushi.e 499
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
pop.v.b local.everyman
pushloc.v local.everyman
conv.v.b
not.b
bf [375]

:[372]
pushi.e 0
pop.v.i self.i

:[373]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [375]

:[374]
pushi.e 512
conv.i.v
pushloc.v local.spawnheight
push.v self.minx
push.v self.i
pushi.e 30
mul.i.v
add.v.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.d 1.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 0.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 270
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [373]

:[375]
push.v self.special
pushi.e 5
cmp.i.v NEQ
bf [383]

:[376]
pushi.e 511
conv.i.v
pushloc.v local.spawnheight
push.v self.minx
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 270
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushloc.v local.everyman
conv.v.b
bf [378]

:[377]
push.v self.extra
b [379]

:[378]
push.v self.extra
pushi.e 1
sub.i.v
call.i irandom(argc=1)

:[379]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_index
push.d 0.65
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.65
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushloc.v local.everyman
conv.v.b
bf [381]

:[380]
pushi.e 0
pop.v.i self.special
b [382]

:[381]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v self.special

:[382]
pushi.e 0
pop.v.i self.btimer
b [384]

:[383]
pushi.e 0
pop.v.i self.special
pushi.e 5
pop.v.i self.btimer

:[384]
b [end]

:[385]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [389]

:[386]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [388]

:[387]
pushi.e 553
conv.i.v
push.v self.miny
pushi.e 66
sub.i.v
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 872.depth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v 574.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
pushi.e 2
pop.v.i self.init

:[388]
b [end]

:[389]
push.v self.type
pushi.e 6
cmp.i.v EQ
bt [391]

:[390]
push.v self.type
push.d 6.1
cmp.d.v EQ
b [392]

:[391]
push.e 1

:[392]
bf [410]

:[393]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [395]

:[394]
pushi.e 2
pop.v.i self.init

:[395]
push.v self.btimer
pushi.e 30
cmp.i.v GT
bf [409]

:[396]
push.v self.bufferattack
conv.v.b
bf [398]

:[397]
pushi.e 528
conv.i.v
push.v 872.y
push.v 872.x
pushi.e 150
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.bufferattack
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.buffer
pushi.e 528
conv.i.v
push.v 872.y
push.v 872.x
pushi.e 150
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
b [402]

:[398]
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pushi.e 60
cmp.i.v LT
bf [400]

:[399]
pushi.e 527
conv.i.v
push.v 872.y
pushi.e 70
sub.i.v
pushi.e 140
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v 872.x
push.v self.lastside
pushi.e 150
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
b [401]

:[400]
pushi.e 527
conv.i.v
push.v 872.y
push.v self.lastside
pushi.e 150
mul.i.v
add.v.v
push.v 872.x
pushi.e 70
sub.i.v
pushi.e 140
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d

:[401]
push.v self.lastside
pushi.e -1
mul.i.v
pop.v.v self.lastside

:[402]
push.v self.bufferattack
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.buffer
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.laugh
pushi.e 0
pop.v.i self.btimer
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [404]

:[403]
pushi.e 2
pop.v.i self.btimer

:[404]
push.v self.type
push.d 6.1
cmp.d.v EQ
bf [406]

:[405]
pushi.e 15
pop.v.i self.btimer

:[406]
push.v self.init
pushi.e 2
cmp.i.v EQ
bf [409]

:[407]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.first
pushi.e 3
pop.v.i self.init
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [409]

:[408]
pushi.e 15
pop.v.i self.btimer

:[409]
b [end]

:[410]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [414]

:[411]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [413]

:[412]
pushi.e 533
conv.i.v
push.v 576.y
push.v 576.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.b 576.visible
pushi.e 2
pop.v.i self.init

:[413]
b [end]

:[414]
push.v self.type
pushi.e 100
cmp.i.v EQ
bf [424]

:[415]
push.v self.btimer
pushi.e 15
cmp.i.v GTE
bf [423]

:[416]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [418]

:[417]
pushi.e 0
pop.v.i self.dir
pushi.e 1
pop.v.i self.made

:[418]
push.v self.dir
pushi.e 30
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.dir
pushi.e 140
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.len
pushi.e 0
pop.v.i self.cenx
pushi.e 0
pop.v.i self.ceny
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [420]

:[419]
push.v 872.x
pop.v.v self.cenx

:[420]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [422]

:[421]
push.v 872.y
pop.v.v self.ceny

:[422]
pushi.e 558
conv.i.v
push.v self.ceny
push.v self.dir
push.v self.len
call.i lengthdir_y(argc=2)
add.v.v
push.v self.cenx
push.v self.dir
push.v self.len
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun
pushi.e 0
pop.v.i self.btimer

:[423]
b [end]

:[424]
push.v self.type
pushi.e 101
cmp.i.v EQ
bt [426]

:[425]
push.v self.type
pushi.e 102
cmp.i.v EQ
b [427]

:[426]
push.e 1

:[427]
bf [459]

:[428]
pushi.e 31
pop.v.i self.btimerthreshold
push.v self.type
pushi.e 102
cmp.i.v EQ
bf [430]

:[429]
pushi.e 22
pop.v.i self.btimerthreshold

:[430]
push.v self.btimer
push.v self.btimerthreshold
cmp.v.v GTE
bf [458]

:[431]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [433]

:[432]
pushi.e 1
pop.v.i self.yway
pushi.e 0
pop.v.i self.goway
pushi.e 1
pop.v.i self.remyway
pushi.e 1
pop.v.i self.xway
pushi.e 1
pop.v.i self.made
pushi.e 0
pop.v.i self.times

:[433]
push.v self.times
pushi.e 0
cmp.i.v EQ
bf [435]

:[434]
pushi.e 0
pop.v.i self.goway
pushi.e 1
pop.v.i self.yway
pushi.e 1
pop.v.i self.xway

:[435]
push.v self.times
pushi.e 1
cmp.i.v EQ
bf [437]

:[436]
pushi.e 1
pop.v.i self.goway
pushi.e 1
pop.v.i self.yway
pushi.e -1
pop.v.i self.xway

:[437]
push.v self.times
pushi.e 2
cmp.i.v EQ
bf [439]

:[438]
pushi.e 0
pop.v.i self.goway
pushi.e -1
pop.v.i self.yway
pushi.e -1
pop.v.i self.xway

:[439]
push.v self.times
pushi.e 3
cmp.i.v EQ
bf [441]

:[440]
pushi.e 1
pop.v.i self.goway
pushi.e -1
pop.v.i self.yway
pushi.e 1
pop.v.i self.xway

:[441]
push.v self.times
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
add.v.v
pop.v.v self.times
push.v self.times
pushi.e -1
cmp.i.v LTE
bf [443]

:[442]
pushi.e 3
pop.v.i self.times

:[443]
push.v self.times
pushi.e 4
cmp.i.v GTE
bf [445]

:[444]
pushi.e 0
pop.v.i self.times

:[445]
pushi.e 0
pop.v.i self.cenx
pushi.e 0
pop.v.i self.ceny
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [447]

:[446]
push.v 872.x
pop.v.v self.cenx

:[447]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [449]

:[448]
push.v 872.y
pop.v.v self.ceny

:[449]
push.v self.cenx
pushi.e 75
push.v self.xway
mul.v.i
add.v.v
pop.v.v self.fromx
push.v self.ceny
pushi.e 75
push.v self.yway
mul.v.i
add.v.v
pop.v.v self.fromy
push.v self.goway
pushi.e 0
cmp.i.v EQ
bf [453]

:[450]
pushi.e 0
pop.v.i self.i

:[451]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [453]

:[452]
pushi.e 558
conv.i.v
push.v self.ceny
pushi.e 125
push.v self.yway
mul.v.i
add.v.v
push.v self.fromx
push.v self.xway
pushi.e 50
mul.i.v
push.v self.i
mul.v.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun
push.v self.i
pushi.e 4
mul.i.v
push.v self.gun
pushi.e -9
pop.v.v [stacktop]self.inittime
pushi.e 0
push.v self.gun
pushi.e -9
pop.v.i [stacktop]self.randomshot
push.d 0.5
push.v self.gun
pushi.e -9
pop.v.d [stacktop]self.shotsize
pushi.e 1
push.v self.gun
pushi.e -9
pop.v.i [stacktop]self.maxsize
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [451]

:[453]
push.v self.goway
pushi.e 1
cmp.i.v EQ
bf [457]

:[454]
pushi.e 0
pop.v.i self.i

:[455]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [457]

:[456]
pushi.e 558
conv.i.v
push.v self.fromy
push.v self.yway
pushi.e 50
mul.i.v
push.v self.i
mul.v.v
sub.v.v
push.v self.cenx
pushi.e 125
push.v self.xway
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun
push.v self.i
pushi.e 4
mul.i.v
push.v self.gun
pushi.e -9
pop.v.v [stacktop]self.inittime
pushi.e 0
push.v self.gun
pushi.e -9
pop.v.i [stacktop]self.randomshot
push.d 0.5
push.v self.gun
pushi.e -9
pop.v.d [stacktop]self.shotsize
pushi.e 1
push.v self.gun
pushi.e -9
pop.v.i [stacktop]self.maxsize
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [455]

:[457]
pushi.e 0
pop.v.i self.btimer

:[458]
b [end]

:[459]
push.v self.type
pushi.e 105
cmp.i.v EQ
bt [462]

:[460]
push.v self.type
pushi.e 106
cmp.i.v EQ
bt [462]

:[461]
push.v self.type
pushi.e 107
cmp.i.v EQ
b [463]

:[462]
push.e 1

:[463]
bf [493]

:[464]
pushi.e 513
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [466]

:[465]
pushi.e 513
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[466]
pushi.e 15
pop.v.i self.timerthreshold
push.v self.type
pushi.e 106
cmp.i.v EQ
bf [468]

:[467]
pushi.e 20
pop.v.i self.timerthreshold

:[468]
push.v self.init
push.e 1
add.i.v
pop.v.v self.init
push.v self.init
pushi.e 12
cmp.i.v EQ
bf [470]

:[469]
pushi.e 332
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 332
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
push.d 0.85
conv.d.v
pushi.e 332
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[470]
push.v self.btimer
push.v self.timerthreshold
cmp.v.v GTE
bf [492]

:[471]
pushi.e 1
pop.v.i self.make
push.v self.type
pushi.e 107
cmp.i.v EQ
bf [473]

:[472]
push.v self.made
pushi.e 7
cmp.i.v GTE
b [474]

:[473]
push.e 0

:[474]
bf [476]

:[475]
pushi.e 0
pop.v.i self.make

:[476]
push.v self.type
pushi.e 107
cmp.i.v EQ
bf [478]

:[477]
push.v self.made
pushi.e 4
cmp.i.v EQ
b [479]

:[478]
push.e 0

:[479]
bf [481]

:[480]
pushi.e 0
pop.v.i self.make

:[481]
push.v self.make
conv.v.b
bf [486]

:[482]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
push.v self.type
pushi.e 107
cmp.i.v EQ
bf [484]

:[483]
pushi.e 509
conv.i.v
pushi.e -80
conv.i.v
push.v 872.x
pushi.e 160
push.v self.side
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.face
b [485]

:[484]
pushi.e 509
conv.i.v
pushi.e -80
conv.i.v
push.v 872.x
pushi.e 125
push.v self.side
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.face

:[485]
pushi.e 5
push.v self.face
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[486]
push.v self.made
pushi.e 4
cmp.i.v EQ
bf [488]

:[487]
push.v self.type
pushi.e 107
cmp.i.v EQ
b [489]

:[488]
push.e 0

:[489]
bf [491]

:[490]
pushi.e 509
conv.i.v
pushi.e -80
conv.i.v
push.v 872.x
pushi.e 125
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.face
pushi.e 5
push.v self.face
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.face
pushi.e -9
pop.v.i [stacktop]self.isqueen
pushi.e 1
push.v self.face
pushi.e -9
pop.v.i [stacktop]self.side
push.v 872.x
pushi.e 125
add.i.v
push.v self.face
pushi.e -9
pop.v.v [stacktop]self.x

:[491]
pushi.e 0
pop.v.i self.btimer
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[492]
b [end]

:[493]
push.v self.type
pushi.e 110
cmp.i.v EQ
bt [495]

:[494]
push.v self.type
pushi.e 111
cmp.i.v EQ
b [496]

:[495]
push.e 1

:[496]
bf [505]

:[497]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [499]

:[498]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [500]

:[499]
push.e 0

:[500]
bf [504]

:[501]
pushi.e 529
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.growtangle
push.v self.damage
push.v self.growtangle
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.growtangle
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.type
pushi.e 111
cmp.i.v EQ
bf [503]

:[502]
pushi.e 1
push.v self.growtangle
pushi.e -9
pop.v.i [stacktop]self.type

:[503]
pushi.e 1
pop.v.i self.made

:[504]
b [end]

:[505]
push.v self.type
pushi.e 112
cmp.i.v EQ
bt [507]

:[506]
push.v self.type
pushi.e 113
cmp.i.v EQ
b [508]

:[507]
push.e 1

:[508]
bf [517]

:[509]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [511]

:[510]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [512]

:[511]
push.e 0

:[512]
bf [516]

:[513]
pushi.e 1
pop.v.i 576.con
pushi.e 523
conv.i.v
push.v 872.y
push.v 872.sprite_height
sub.v.v
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bardly
push.v self.type
pushi.e 113
cmp.i.v EQ
bf [515]

:[514]
pushi.e 3
push.v self.bardly
pushi.e -9
pop.v.i [stacktop]self.difficulty

:[515]
pushi.e 1
pop.v.i self.made

:[516]
b [end]

:[517]
push.v self.type
pushi.e 114
cmp.i.v EQ
bf [538]

:[518]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [526]

:[519]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [521]

:[520]
pushi.e 0
pop.v.i self.dir
pushi.e 1
pop.v.i self.made

:[521]
push.v self.dir
pushi.e 30
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.dir
pushi.e 140
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.len
pushi.e 0
pop.v.i self.cenx
pushi.e 0
pop.v.i self.ceny
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [523]

:[522]
push.v 872.x
pop.v.v self.cenx

:[523]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [525]

:[524]
push.v 872.y
pop.v.v self.ceny

:[525]
pushi.e 558
conv.i.v
push.v self.ceny
push.v self.dir
push.v self.len
call.i lengthdir_y(argc=2)
add.v.v
push.v self.cenx
push.v self.dir
push.v self.len
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun
pushi.e 0
pop.v.i self.btimer

:[526]
push.v self.ctimer
push.e 1
add.i.v
pop.v.v self.ctimer
push.v self.ctimer
pushi.e 20
cmp.i.v EQ
bt [528]

:[527]
push.v self.ctimer
pushi.e 150
cmp.i.v EQ
b [529]

:[528]
push.e 1

:[529]
bf [537]

:[530]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v local.a
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [532]

:[531]
push.v 872.x
pushi.e 150
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.yy

:[532]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [534]

:[533]
push.v 872.x
pushi.e 150
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.yy

:[534]
pushloc.v local.a
pushi.e 3
cmp.i.v EQ
bf [536]

:[535]
push.v 872.x
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 100
sub.i.v
pop.v.v self.yy

:[536]
pushi.e 539
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.quick
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[537]
b [end]

:[538]
push.v self.type
pushi.e 115
cmp.i.v EQ
bf [560]

:[539]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [547]

:[540]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [542]

:[541]
pushi.e 0
pop.v.i self.dir
pushi.e 1
pop.v.i self.made

:[542]
push.v self.dir
pushi.e 30
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.dir
pushi.e 140
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.len
pushi.e 0
pop.v.i self.cenx
pushi.e 0
pop.v.i self.ceny
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [544]

:[543]
push.v 872.x
pop.v.v self.cenx

:[544]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [546]

:[545]
push.v 872.y
pop.v.v self.ceny

:[546]
pushi.e 558
conv.i.v
push.v self.ceny
push.v self.dir
push.v self.len
call.i lengthdir_y(argc=2)
add.v.v
push.v self.cenx
push.v self.dir
push.v self.len
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun
pushi.e 0
pop.v.i self.btimer

:[547]
push.v self.ctimer
push.e 1
add.i.v
pop.v.v self.ctimer
push.v self.ctimer
pushi.e 50
cmp.i.v EQ
bf [559]

:[548]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v local.a
pushi.e 1
dup.i 0
push.i 0
cmp.i.i LTE
bt [558]

:[549]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [551]

:[550]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e -47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[551]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [553]

:[552]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[553]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [555]

:[554]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[555]
pushloc.v local.a
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pos
push.v local.a
pushi.e 1
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.i
add.v.v
pop.v.v local.a
pushloc.v local.a
pushi.e 2
cmp.i.v GT
bf [557]

:[556]
push.v local.a
pushi.e 3
sub.i.v
pop.v.v local.a

:[557]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [549]

:[558]
popz.i
pushi.e 0
pop.v.i self.ctimer

:[559]
b [end]

:[560]
push.v self.type
pushi.e 116
cmp.i.v EQ
bf [587]

:[561]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [563]

:[562]
pushi.e 0
pop.v.i self.dir
pushi.e 1
pop.v.i self.made
pushi.e 89
pop.v.i self.ctimer
pushi.e 64
pop.v.i self.dtimer

:[563]
push.v self.btimer
pushi.e 105
cmp.i.v GTE
bf [569]

:[564]
push.v self.dir
pushi.e 30
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.dir
pushi.e 140
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.len
pushi.e 0
pop.v.i self.cenx
pushi.e 0
pop.v.i self.ceny
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [566]

:[565]
push.v 872.x
pop.v.v self.cenx

:[566]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [568]

:[567]
push.v 872.y
pop.v.v self.ceny

:[568]
pushi.e 558
conv.i.v
push.v self.ceny
push.v self.dir
push.v self.len
call.i lengthdir_y(argc=2)
add.v.v
push.v self.cenx
push.v self.dir
push.v self.len
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gun
pushi.e 55
pop.v.i self.btimer

:[569]
push.v self.ctimer
push.e 1
add.i.v
pop.v.v self.ctimer
push.v self.ctimer
pushi.e 94
cmp.i.v EQ
bf [581]

:[570]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v local.a
pushi.e 1
dup.i 0
push.i 0
cmp.i.i LTE
bt [580]

:[571]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [573]

:[572]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e -47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[573]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [575]

:[574]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[575]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [577]

:[576]
pushi.e 565
conv.i.v
push.v self.miny
pushi.e 4
sub.i.v
push.v 872.x
pushi.e 47
add.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d

:[577]
pushloc.v local.a
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pos
push.v local.a
pushi.e 1
pushi.e 1
conv.i.v
call.i irandom(argc=1)
add.v.i
add.v.v
pop.v.v local.a
pushloc.v local.a
pushi.e 2
cmp.i.v GT
bf [579]

:[578]
push.v local.a
pushi.e 3
sub.i.v
pop.v.v local.a

:[579]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [571]

:[580]
popz.i
pushi.e 0
pop.v.i self.ctimer

:[581]
push.v self.dtimer
push.e 1
add.i.v
pop.v.v self.dtimer
push.v self.dtimer
pushi.e 65
cmp.i.v EQ
bf [586]

:[582]
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pushi.e 60
cmp.i.v LT
bf [584]

:[583]
pushi.e 527
conv.i.v
push.v 872.y
pushi.e 70
sub.i.v
pushi.e 140
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v 872.x
push.v self.lastside
pushi.e 150
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
b [585]

:[584]
pushi.e 527
conv.i.v
push.v 872.y
push.v self.lastside
pushi.e 150
mul.i.v
add.v.v
push.v 872.x
pushi.e 70
sub.i.v
pushi.e 140
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d

:[585]
push.v self.lastside
pushi.e -1
mul.i.v
pop.v.v self.lastside
pushi.e 0
pop.v.i self.dtimer

:[586]
b [end]

:[587]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [end]

:[588]
pushi.e 2
pop.v.i self.init

:[end]