.localvar 2 arguments
.localvar 23598 swatch_bc 10648
.localvar 23599 _platecarry 10649
.localvar 21783 _bounce 10650
.localvar 23600 _shockwave 10651
.localvar 21786 _combo 10652

:[0]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [3]

:[1]
push.v self.sameattacker
pushi.e 2
cmp.i.v LT
bf [3]

:[2]
push.v 443.red_count
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [61]

:[5]
pushi.e 443
pop.v.i local.swatch_bc
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [26]

:[6]
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.sameattack
call.i gml_Script_scr_monsterpop(argc=0)
cmp.v.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e -20
pop.v.i self.btimer

:[11]
pushi.e 2
pop.v.i self.init
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v NEQ
bf [13]

:[12]
push.v self.sameattack
call.i gml_Script_scr_monsterpop(argc=0)
cmp.v.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pop.v.v self.side

:[16]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.d 1.5
conv.d.v
b [19]

:[18]
pushi.e 1
conv.i.v

:[19]
pop.v.v self.difficulty
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.yellow_count
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
cmp.v.v GT
pop.v.b local._platecarry
pushloc.v local._platecarry
conv.v.b
bf [24]

:[20]
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.d 0.35
conv.d.v
b [23]

:[22]
push.d 0.75
conv.d.v

:[23]
pop.v.v self.difficulty

:[24]
pushloc.v local._platecarry
conv.v.b
bf [26]

:[25]
push.v self.maxx
pushi.e 140
add.i.v
push.v self.side
sub.v.v
pushi.e 98
add.i.v
pushloc.v local.swatch_bc
pushi.e -9
pop.v.v [stacktop]self.shockwave_x_1

:[26]
push.v self.made
pushi.e 10
cmp.i.v GTE
bf [34]

:[27]
pushi.e 0
pop.v.i self.made
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.yellow_count
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
cmp.v.v GT
bf [32]

:[28]
push.v self.init
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.maxx
pushi.e 140
add.i.v
push.v self.side
sub.v.v
pushi.e 98
add.i.v
pushi.e 40
add.i.v
pushloc.v local.swatch_bc
pushi.e -9
pop.v.v [stacktop]self.shockwave_x_2
b [31]

:[30]
push.v self.maxx
pushi.e 140
add.i.v
push.v self.side
sub.v.v
pushi.e 98
add.i.v
pushi.e 40
add.i.v
pushloc.v local.swatch_bc
pushi.e -9
pop.v.v [stacktop]self.shockwave_x_1

:[31]
b [33]

:[32]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pop.v.v self.side

:[33]
push.v self.init
push.e 1
add.i.v
pop.v.v self.init

:[34]
push.v self.btimer
call.i gml_Script_scr_monsterpop(argc=0)
push.v self.sameattack
cmp.v.v EQ
bf [36]

:[35]
pushi.e 4
conv.i.v
b [37]

:[36]
pushi.e 6
conv.i.v

:[37]
cmp.v.v GT
bf [60]

:[38]
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bt [43]

:[39]
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.yellow_count
cmp.v.v EQ
bf [41]

:[40]
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
pushi.e 0
cmp.i.v GT
b [42]

:[41]
push.e 0

:[42]
b [44]

:[43]
push.e 1

:[44]
pop.v.b self.flip
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.yellow_count
cmp.v.v EQ
bf [46]

:[45]
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
pushi.e 0
cmp.i.v GT
b [47]

:[46]
push.e 0

:[47]
pop.v.b self.reverse
pushi.e 0
pop.v.i self.btimer
push.v self.maxx
pushi.e 140
add.i.v
push.v self.made
pushi.e 40
mul.i.v
sub.v.v
push.v self.side
sub.v.v
pop.v.v self.xx
push.v self.maxy
pushi.e 3
sub.i.v
pop.v.v self.yy
push.v self.flip
conv.v.b
bf [49]

:[48]
push.v self.miny
pushi.e 3
add.i.v
pop.v.v self.yy

:[49]
push.v self.reverse
conv.v.b
bf [51]

:[50]
push.v self.minx
pushi.e 140
sub.i.v
push.v self.made
pushi.e 40
mul.i.v
add.v.v
push.v self.side
add.v.v
pop.v.v self.xx

:[51]
pushi.e 437
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.blue_count
pushloc.v local.swatch_bc
pushi.e -9
push.v [stacktop]self.yellow_count
cmp.v.v GT
bf [53]

:[52]
push.d 0.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.sizemultiplier
b [54]

:[53]
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sizemultiplier

:[54]
push.v self.special
conv.v.b
bf [56]

:[55]
push.i 4235519
conv.i.v
b [57]

:[56]
pushi.e 255
conv.i.v

:[57]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.startColor
push.v self.flip
conv.v.b
bf [59]

:[58]
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_angle

:[59]
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[60]
b [end]

:[61]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [64]

:[62]
push.v self.sameattacker
pushi.e 2
cmp.i.v LT
bf [64]

:[63]
push.v 443.yellow_count
pushi.e 0
cmp.i.v GT
b [65]

:[64]
push.e 0

:[65]
bf [116]

:[66]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [72]

:[67]
push.d 1.6
conv.d.v
push.v self.ratio
call.i min(argc=2)
pop.v.v self.ratio
pushi.e 2
pop.v.i self.init
pushi.e 6
call.i gml_Script_scr_monsterpop(argc=0)
push.v self.sameattack
add.v.v
sub.v.i
call.i irandom(argc=1)
pop.v.v self.side
push.v 443.red_count
push.v 443.blue_count
cmp.v.v GT
bf [72]

:[68]
push.v self.sameattack
pushi.e 2
cmp.i.v GTE
bf [70]

:[69]
push.d 2.4
pop.v.d self.ratio

:[70]
push.v self.sameattacker
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 36
pop.v.i self.btimer

:[72]
push.v self.btimer
pushi.e 30
push.v self.ratio
mul.v.i
cmp.v.v GT
bf [115]

:[73]
pushi.e 0
pop.v.i self.btimer
push.v 443.blue_count
pushi.e 0
cmp.i.v GT
pop.v.b local._bounce
pushloc.v local._bounce
conv.v.b
not.b
bf [75]

:[74]
push.v 443.red_count
pushi.e 0
cmp.i.v GT
b [76]

:[75]
push.e 0

:[76]
pop.v.b local._shockwave
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [78]

:[77]
pushi.e 0
pop.v.b local._bounce

:[78]
pushloc.v local._shockwave
conv.v.b
bt [80]

:[79]
pushloc.v local._bounce
conv.v.b
b [81]

:[80]
push.e 1

:[81]
pop.v.b local._combo
push.v self.sameattacker
conv.v.b
bt [83]

:[82]
pushloc.v local._shockwave
conv.v.b
b [84]

:[83]
push.e 1

:[84]
bf [86]

:[85]
push.v self.minx
pushi.e 120
sub.i.v
b [87]

:[86]
push.v self.maxx
pushi.e 120
add.i.v

:[87]
pop.v.v self.xx
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [89]

:[88]
push.v self.sameattacker
b [90]

:[89]
push.v self.made
pushi.e 2
mod.i.v

:[90]
pop.v.v self.flip
pushloc.v local._combo
conv.v.b
bf [92]

:[91]
pushi.e 0
pop.v.i self.flip

:[92]
push.v 872.y
pushi.e 50
add.i.v
push.v self.flip
pushi.e 60
mul.i.v
sub.v.v
pop.v.v self.yy
pushi.e 439
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.sameattack
conv.v.b
bt [94]

:[93]
pushloc.v local._combo
pushi.e 3
cmp.i.v EQ
b [95]

:[94]
push.e 1

:[95]
bf [97]

:[96]
pushi.e 3
conv.i.v
b [98]

:[97]
pushi.e 4
conv.i.v

:[98]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.sameattacker
pushi.e 0
cmp.i.v EQ
bt [100]

:[99]
pushloc.v local._bounce
conv.v.b
b [101]

:[100]
push.e 1

:[101]
bf [103]

:[102]
pushloc.v local._shockwave
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 180
conv.i.v
b [107]

:[106]
pushi.e 0
conv.i.v

:[107]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.special
conv.v.b
bf [109]

:[108]
pushi.e 6
conv.i.v
call.i irandom(argc=1)
pushi.e 6
cmp.i.v EQ
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.hasCandy
b [111]

:[109]
push.v self.made
push.v self.side
cmp.v.v EQ
bf [111]

:[110]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.hasCandy

:[111]
pushi.e -1
pushi.e 19
conv.i.v
call.i irandom(argc=1)
sub.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.timer
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.special
conv.v.b
bf [113]

:[112]
push.i 32768
conv.i.v
b [114]

:[113]
push.i 65535
conv.i.v

:[114]
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.startColor
push.v self.image_blend
push.v self.d
pushi.e -9
push.v [stacktop]self.startColor
cmp.v.v EQ
push.v self.d
pushi.e -9
push.v [stacktop]self.platterPlate
pushi.e -9
pop.v.b [stacktop]self.image_blend
push.v self.image_blend
push.v self.d
pushi.e -9
push.v [stacktop]self.startColor
cmp.v.v EQ
push.v self.d
pushi.e -9
push.v [stacktop]self.platterLid
pushi.e -9
pop.v.b [stacktop]self.image_blend
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[115]
b [end]

:[116]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [118]

:[117]
push.v 443.blue_count
pushi.e 0
cmp.i.v GT
b [119]

:[118]
push.e 0

:[119]
bf [end]

:[120]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [end]

:[121]
pushi.e 1
pop.v.i self.special
pushi.e 438
conv.i.v
push.v self.y
pushi.e 68
add.i.v
push.v self.x
pushi.e 82
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.childgraze
push.i 133635
setowner.e
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [123]

:[122]
pushi.e -1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.trackplayer

:[123]
push.v self.sameattack
pushi.e 2
cmp.i.v GT
bf [end]

:[124]
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.spawnbullets

:[end]