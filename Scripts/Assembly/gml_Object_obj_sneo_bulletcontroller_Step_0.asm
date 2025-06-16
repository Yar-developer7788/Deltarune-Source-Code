.localvar 2 arguments
.localvar 26297 otherside 13426
.localvar 26298 _slidetimer 13427
.localvar 26299 nextobj 13428
.localvar 20327 threshold 13429
.localvar 7017 a 13434
.localvar 107 i 13436

:[0]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 99
cmp.i.v GT
bf [2]

:[1]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.turntimer

:[5]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [17]

:[6]
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterattackname
call.i gml_Script_scr_monsterattacknamecount(argc=1)
pop.v.v self.sameattack
push.v self.sameattack
pushi.e 1
cmp.i.v GT
bf [14]

:[7]
push.v self.creator
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.sameattack
pushi.e 1
sub.i.v
pop.v.v self.sameattacker
b [14]

:[9]
push.v self.creator
pushi.e 1
cmp.i.v EQ
bf [14]

:[10]
push.v self.sameattack
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.v self.creator
b [13]

:[12]
pushi.e -5
pushi.e 0
push.v [array]self.monsterattackname
pushi.e -5
pushi.e 1
push.v [array]self.monsterattackname
cmp.v.v EQ
conv.b.v

:[13]
pop.v.v self.sameattacker

:[14]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
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

:[16]
pushi.e 1
pop.v.i self.init

:[17]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [67]

:[18]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [24]

:[19]
pushi.e 0
pop.v.i self.btimer
pushi.e 599
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.init
pushi.e 240
pop.v.i global.turntimer
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 360
pop.v.i global.turntimer

:[21]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e 300
pop.v.i global.turntimer

:[23]
b [67]

:[24]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [64]

:[25]
push.v self.btimer
pushi.e 40
cmp.i.v EQ
bt [28]

:[26]
push.v self.btimer
pushi.e 150
cmp.i.v EQ
bt [28]

:[27]
push.v self.btimer
pushi.e 260
cmp.i.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partxoff
add.v.v
pop.v.v self.sneoarm_x
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partyoff
add.v.v
pop.v.v self.sneoarm_y
pushi.e -68
pushi.e 32
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.armangle
push.v self.armangle
pop.v.v self.side
pushi.e 632
conv.i.v
push.v self.sneoarm_y
push.v self.armangle
pushi.e 90
sub.i.v
pushi.e 60
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.sneoarm_x
push.v self.armangle
pushi.e 90
sub.i.v
pushi.e 60
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.armangle
pushi.e 90
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.i.v [stacktop]self.depth
push.v self.damage
pushi.e 2
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.aimmode
push.v self.armangle
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.armaim
pushi.e 3
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
b [63]

:[31]
push.v self.btimer
pushi.e 90
cmp.i.v EQ
bt [34]

:[32]
push.v self.btimer
pushi.e 200
cmp.i.v EQ
bt [34]

:[33]
push.v self.btimer
pushi.e 310
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [39]

:[36]
pushi.e 632
pushenv [38]

:[37]
pushi.e 1
pop.v.i self.firecon
pushi.e 1
pop.v.i self.active
push.i 16777215
pop.v.i self.image_blend

:[38]
popenv [37]
pushi.e 12
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
b [63]

:[39]
push.v self.btimer
pushi.e 90
cmp.i.v GTE
bf [41]

:[40]
push.v self.btimer
pushi.e 120
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bt [51]

:[43]
push.v self.btimer
pushi.e 200
cmp.i.v GTE
bf [45]

:[44]
push.v self.btimer
pushi.e 230
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bt [51]

:[47]
push.v self.btimer
pushi.e 310
cmp.i.v GTE
bf [49]

:[48]
push.v self.btimer
pushi.e 340
cmp.i.v LT
b [50]

:[49]
push.e 0

:[50]
b [52]

:[51]
push.e 1

:[52]
bf [57]

:[53]
push.v self.side
pushi.e -110
cmp.i.v EQ
bf [55]

:[54]
pushi.e -85
conv.i.v
b [56]

:[55]
pushi.e -90
conv.i.v

:[56]
pop.v.v local.otherside
push.v self.sneoarm_x
push.v self.armangle
pushi.e 90
sub.i.v
pushi.e 60
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v 632.x
push.v self.sneoarm_y
push.v self.armangle
pushi.e 90
sub.i.v
pushi.e 60
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v 632.y
push.v self.armangle
pushi.e 90
sub.i.v
pop.v.v 632.direction
push.v self.armangle
pushi.e 90
sub.i.v
pop.v.v 632.image_angle
push.v self.armangle
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.armaim
b [63]

:[57]
push.v self.btimer
pushi.e 130
cmp.i.v EQ
bt [60]

:[58]
push.v self.btimer
pushi.e 240
cmp.i.v EQ
bt [60]

:[59]
push.v self.btimer
pushi.e 350
cmp.i.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [63]

:[62]
pushi.e 2
pop.v.i 632.firecon
pushi.e 4
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[63]
b [67]

:[64]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [67]

:[65]
push.v self.btimer
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 36
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[67]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [88]

:[68]
push.v self.atimer
push.e 1
add.i.v
pop.v.v self.atimer
push.v self.atimer
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 0
pop.v.i self.btimer

:[70]
push.v self.atimer
pushi.e 6
cmp.i.v EQ
bf [72]

:[71]
pushi.e 626
conv.i.v
push.v 697.y
pushi.e 60
add.i.v
push.v 697.x
pushi.e 4
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.drawlabel
push.v 697.depth
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.2
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 0
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d -1.55
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage

:[72]
push.v self.atimer
pushi.e 20
cmp.i.v LT
bf [74]

:[73]
push.v 697.x
pushi.e 10
add.i.v
pop.v.v 697.x
pushi.e 5
conv.i.v
push.v self.atimer
pushi.e 10
conv.i.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pushi.e 300
mul.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.vinex
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 2
conv.i.v
push.v self.atimer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pushi.e 300
mul.i.v
add.v.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x

:[74]
push.v self.atimer
pushi.e 20
cmp.i.v EQ
bf [76]

:[75]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 300
add.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.sneo
pushi.e -9
dup.i 4
push.v [stacktop]self.vinex
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.vinex
pushi.e 655
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pipis
push.v self.damage
push.v self.pipis
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.pipis
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
pop.v.i self.init

:[79]
pushglb.v global.turntimer
pushi.e 21
cmp.i.v LT
bf [81]

:[80]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
b [82]

:[81]
push.e 0

:[82]
bf [86]

:[83]
pushi.e 1
pop.v.i 697.partmode
pushi.e 624
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.fadealpha

:[85]
popenv [84]
push.v 697.x
pushi.e 10
sub.i.v
pop.v.v 697.x
pushglb.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v local._slidetimer
pushi.e 5
conv.i.v
pushloc.v local._slidetimer
pushi.e 10
conv.i.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 50
mul.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.vinex
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 4
conv.i.v
pushloc.v local._slidetimer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 200
mul.i.v
add.v.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local._slidetimer
pushi.e 20
conv.i.d
div.d.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.___myremembery
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.y

:[86]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.v 697.xstart
pop.v.v 697.x

:[88]
push.v self.type
push.d 1.5
cmp.d.v EQ
bf [98]

:[89]
push.v self.hearttargettimer
push.e 1
sub.i.v
pop.v.v self.hearttargettimer
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [93]

:[90]
pushi.e 697
pushenv [92]

:[91]
pushi.e 34
pop.v.i self.partmode

:[92]
popenv [91]
pushi.e 2
pop.v.i self.init
pushi.e 100
pop.v.i self.btimer

:[93]
push.v self.btimer
pushi.e 110
cmp.i.v EQ
bf [98]

:[94]
pushi.e 697
pushenv [97]

:[95]
push.v self.heart_release_con
push.e 1
add.i.v
pop.v.v self.heart_release_con
push.v self.heart_release_con
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i self.makeheart

:[97]
popenv [95]

:[98]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [183]

:[99]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [115]

:[100]
pushi.e 0
pop.v.i 697.newcrushermovement
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [115]

:[101]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.side
pushi.e 2
pop.v.i self.init

:[103]
pushi.e 0
pop.v.i self.btimer
push.v 872.x
pushi.e 200
add.i.v
pop.v.v self.xx
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
b [106]

:[105]
push.v 872.y
pushi.e 15
sub.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e -1
mul.i.v
add.v.v
pop.v.v self.yy

:[106]
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
pop.v.i self.difficulty
push.v self.made
pushi.e 1
cmp.i.v GT
bf [114]

:[107]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 0
pop.v.i local.nextobj
b [112]

:[109]
push.v self.lastType
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.nextobj
b [112]

:[111]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v local.nextobj

:[112]
pushloc.v local.nextobj
pop.v.v self.lastType
pushloc.v local.nextobj
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.crushedObj
pushloc.v local.nextobj
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushi.e -35
pop.v.i self.btimer

:[114]
pushi.e 0
pop.v.i self.difficulty
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.side
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[115]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [134]

:[116]
pushi.e 0
pop.v.i 697.newcrushermovement
push.v self.btimer
pushi.e 100
cmp.i.v EQ
bf [118]

:[117]
push.v 872.x
pushi.e 190
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 0
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[118]
push.v self.btimer
pushi.e 110
cmp.i.v EQ
bf [120]

:[119]
push.v 872.x
pushi.e 205
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 20
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[120]
push.v self.btimer
pushi.e 120
cmp.i.v EQ
bf [122]

:[121]
push.v 872.x
pushi.e 220
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 10
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[122]
push.v self.btimer
pushi.e 170
cmp.i.v EQ
bf [124]

:[123]
push.v 872.x
pushi.e 140
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 0
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[124]
push.v self.btimer
pushi.e 180
cmp.i.v EQ
bf [126]

:[125]
push.v 872.x
pushi.e 155
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 20
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[126]
push.v self.btimer
pushi.e 190
cmp.i.v EQ
bf [128]

:[127]
push.v 872.x
pushi.e 170
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 10
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[128]
push.v self.btimer
pushi.e 190
cmp.i.v GT
bf [131]

:[129]
pushi.e 619
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [131]

:[130]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 2
pop.v.i global.turntimer

:[134]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [142]

:[135]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [142]

:[136]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.side
pushi.e 2
pop.v.i self.init

:[138]
pushi.e 0
pop.v.i self.btimer
push.v 872.x
pushi.e 200
add.i.v
pop.v.v self.xx
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
b [141]

:[140]
push.v 872.y
pushi.e 15
sub.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e -1
mul.i.v
add.v.v
pop.v.v self.yy

:[141]
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
pop.v.v self.side

:[142]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [145]

:[143]
pushi.e 1
pop.v.i 697.newcrushermovement
push.v self.atimer
push.e 1
add.i.v
pop.v.v self.atimer
pushi.e 10
pushi.e 619
conv.i.v
call.i instance_number(argc=1)
pushi.e 15
mul.i.v
add.v.i
pop.v.v local.threshold
push.v self.atimer
pushloc.v local.threshold
cmp.v.v GTE
bf [145]

:[144]
push.v 872.x
push.v 697.crusher_x_origin
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 3
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.hp
pushi.e 0
pop.v.i self.atimer

:[145]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [164]

:[146]
pushi.e 0
pop.v.i 697.newcrushermovement
push.v self.btimer
pushi.e 100
cmp.i.v EQ
bf [148]

:[147]
push.v 872.x
pushi.e 190
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 0
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[148]
push.v self.btimer
pushi.e 110
cmp.i.v EQ
bf [150]

:[149]
push.v 872.x
pushi.e 205
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 20
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 680
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leeway
push.v self.bm
push.v self.leeway
pushi.e -9
pop.v.v [stacktop]self.parent

:[150]
push.v self.btimer
pushi.e 120
cmp.i.v EQ
bf [152]

:[151]
push.v 872.x
pushi.e 220
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 10
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 680
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leeway
push.v self.bm
push.v self.leeway
pushi.e -9
pop.v.v [stacktop]self.parent

:[152]
push.v self.btimer
pushi.e 170
cmp.i.v EQ
bf [154]

:[153]
push.v 872.x
pushi.e 140
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 0
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y

:[154]
push.v self.btimer
pushi.e 180
cmp.i.v EQ
bf [156]

:[155]
push.v 872.x
pushi.e 155
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 20
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 680
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leeway
push.v self.bm
push.v self.leeway
pushi.e -9
pop.v.v [stacktop]self.parent

:[156]
push.v self.btimer
pushi.e 190
cmp.i.v EQ
bf [158]

:[157]
push.v 872.x
pushi.e 170
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 15
add.i.v
pushi.e 45
conv.i.v
call.i irandom(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 10
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.siner
push.v 872.y
push.v self.bm
pushi.e -9
push.v [stacktop]self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 680
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leeway
push.v self.bm
push.v self.leeway
pushi.e -9
pop.v.v [stacktop]self.parent

:[158]
push.v self.btimer
pushi.e 190
cmp.i.v GT
bf [161]

:[159]
pushi.e 619
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [161]

:[160]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
pushi.e 2
pop.v.i global.turntimer

:[164]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
bf [176]

:[165]
pushi.e 0
pop.v.i 697.newcrushermovement
push.v self.btimer
pushi.e 100
cmp.i.v EQ
bf [167]

:[166]
push.v 872.x
pushi.e 190
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
sub.i.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty

:[167]
push.v self.btimer
pushi.e 110
cmp.i.v EQ
bf [169]

:[168]
push.v 872.x
pushi.e 190
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
add.i.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty

:[169]
push.v self.btimer
pushi.e 120
cmp.i.v EQ
bf [171]

:[170]
push.v 872.x
pushi.e 190
add.i.v
pop.v.v self.xx
push.v 872.y
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty

:[171]
pushi.e 619
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [173]

:[172]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
b [174]

:[173]
push.e 0

:[174]
bf [176]

:[175]
pushi.e 2
pop.v.i global.turntimer

:[176]
push.v self.difficulty
pushi.e 6
cmp.i.v EQ
bf [183]

:[177]
pushi.e 1
pop.v.i 697.newcrushermovement
push.v self.atimer
push.e 1
add.i.v
pop.v.v self.atimer
push.v self.btimer
pushi.e 99
cmp.i.v EQ
bf [179]

:[178]
pushi.e 0
pop.v.i self.atimer

:[179]
push.v self.btimer
pushi.e 100
cmp.i.v GTE
bf [181]

:[180]
push.v 872.x
push.v 697.crusher_x_origin
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.yy
pushi.e 619
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e 1
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.destroyable
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 3
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.hp
pushi.e 70
pop.v.i self.btimer
push.v self.atimer
pushi.e 0
sub.i.v
pop.v.v self.atimer

:[181]
push.v self.atimer
pushi.e 20
cmp.i.v GTE
bf [183]

:[182]
push.v 872.x
push.v 697.crusher_x_origin
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 50
sub.i.v
pop.v.v self.yy
pushi.e -17
pushi.e 34
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.rand
pushi.e 673
conv.i.v
push.v self.yy
pushi.e 29
add.i.v
push.v self.rand
add.v.v
pushi.e 256
sub.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
push.v self.bm
pushi.e -9
push.v [stacktop]self.image_yscale
pushi.e -1
mul.i.v
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 673
conv.i.v
push.v self.yy
pushi.e 76
add.i.v
push.v self.rand
add.v.v
pushi.e 256
add.i.v
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
pushi.e -8
push.v self.bm
pushi.e -9
pop.v.i [stacktop]self.amplitude
push.v self.btimer
pushi.e 5
sub.i.v
pop.v.v self.btimer
pushi.e 0
pop.v.i self.atimer

:[183]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [186]

:[184]
pushi.e 653
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [186]

:[185]
pushi.e 653
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pendulum
pushi.e 1
pop.v.i self.init

:[186]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [194]

:[187]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [194]

:[188]
pushi.e 0
pop.v.i self.btimer
push.v self.maxx
pushi.e 180
add.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy
pushi.e 671
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bm
push.v self.made
pushi.e 2
cmp.i.v GTE
bf [193]

:[189]
push.v self.made
pushi.e 4
cmp.i.v GTE
bf [191]

:[190]
pushi.e 2
conv.i.v
b [192]

:[191]
pushi.e 1
conv.i.v

:[192]
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.difficulty

:[193]
push.v self.damage
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[194]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [202]

:[195]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushi.e 699
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.creator
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
push.v self.element
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.element
pushi.e 2
pop.v.i self.init
call.i instance_destroy(argc=0)
popz.v

:[197]
pushi.e 609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [199]

:[198]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
b [200]

:[199]
push.e 0

:[200]
bf [202]

:[201]
pushi.e 2
pop.v.i global.turntimer

:[202]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [215]

:[203]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [208]

:[204]
push.v self.difficulty
pushi.e 9
cmp.i.v EQ
bf [206]

:[205]
pushi.e 663
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [207]

:[206]
pushi.e 52
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[207]
pushi.e 2
pop.v.i self.init

:[208]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LTE
bf [210]

:[209]
pushglb.v global.turntimer
pushi.e 9
cmp.i.v GT
b [211]

:[210]
push.e 0

:[211]
bf [215]

:[212]
pushi.e 697
pushenv [214]

:[213]
pushi.e 8
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v

:[214]
popenv [213]
pushi.e 9
pop.v.i global.turntime

:[215]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [308]

:[216]
pushglb.v global.turntimer
pushi.e 60
cmp.i.v GTE
bf [293]

:[217]
push.v self.atimer
push.e 1
add.i.v
pop.v.v self.atimer
push.v self.atimer
pushi.e 1
cmp.i.v EQ
bf [219]

:[218]
pushi.e 0
pop.v.i self.btimer

:[219]
push.v self.atimer
pushi.e 20
cmp.i.v LT
bf [221]

:[220]
push.v 697.x
pushi.e 10
add.i.v
pop.v.v 697.x
pushi.e 5
conv.i.v
push.v self.atimer
pushi.e 10
conv.i.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pushi.e 200
mul.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.vinex
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 2
conv.i.v
push.v self.atimer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pushi.e 200
mul.i.v
add.v.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x

:[221]
push.v self.atimer
pushi.e 20
cmp.i.v EQ
bf [223]

:[222]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [226]

:[225]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 200
add.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.sneo
pushi.e -9
dup.i 4
push.v [stacktop]self.vinex
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.vinex
pushi.e 600
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.init
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.lastType

:[226]
push.v self.btimer
pushi.e 28
cmp.i.v EQ
bf [228]

:[227]
pushi.e 60
pop.v.i self.btimer

:[228]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [229]

:[229]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [234]

:[230]
push.v self.btimer
pushi.e 25
cmp.i.v EQ
bf [232]

:[231]
pushi.e 669
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.orb
pushi.e 1
push.v self.orb
pushi.e -9
pop.v.i [stacktop]self.type

:[232]
push.v self.btimer
pushi.e 30
cmp.i.v EQ
bf [234]

:[233]
pushi.e 669
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 235
add.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.orb
pushi.e 1
push.v self.orb
pushi.e -9
pop.v.i [stacktop]self.type

:[234]
push.v self.btimer
pushi.e 60
cmp.i.v GTE
bf [236]

:[235]
pushglb.v global.turntimer
pushi.e 54
cmp.i.v GT
b [237]

:[236]
push.e 0

:[237]
bf [293]

:[238]
pushi.e 40
pop.v.i self.btimer
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [240]

:[239]
pushi.e 44
pop.v.i self.btimer

:[240]
pushi.e 0
pop.v.i local.a
push.v self.lastType
pushi.e -1
cmp.i.v EQ
bf [242]

:[241]
push.v self.arm1
pushi.e -1
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [245]

:[244]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e -104
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
push.v self.lastType
push.v self.arm
pushi.e -9
pop.v.v [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm1
b [250]

:[245]
push.v self.lastType
pushi.e -1
cmp.i.v EQ
bf [247]

:[246]
push.v self.arm1
pushi.e 1
cmp.i.v EQ
b [248]

:[247]
push.e 0

:[248]
bf [250]

:[249]
pushi.e 1
pop.v.i local.a

:[250]
push.v self.lastType
pushi.e 0
cmp.i.v EQ
bf [252]

:[251]
push.v self.arm2
pushi.e -1
cmp.i.v EQ
b [253]

:[252]
push.e 0

:[253]
bf [255]

:[254]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e 0
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
push.v self.lastType
push.v self.arm
pushi.e -9
pop.v.v [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm2
b [260]

:[255]
push.v self.lastType
pushi.e 0
cmp.i.v EQ
bf [257]

:[256]
push.v self.arm2
pushi.e 1
cmp.i.v EQ
b [258]

:[257]
push.e 0

:[258]
bf [260]

:[259]
pushi.e 1
pop.v.i local.a

:[260]
push.v self.lastType
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
push.v self.arm3
pushi.e -1
cmp.i.v EQ
b [263]

:[262]
push.e 0

:[263]
bf [265]

:[264]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e 104
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
push.v self.lastType
push.v self.arm
pushi.e -9
pop.v.v [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm3
b [270]

:[265]
push.v self.lastType
pushi.e 1
cmp.i.v EQ
bf [267]

:[266]
push.v self.arm3
pushi.e 1
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [270]

:[269]
pushi.e 1
pop.v.i local.a

:[270]
push.v self.doubleelevatorattack
push.e 1
add.i.v
pop.v.v self.doubleelevatorattack
push.v self.doubleelevatorattack
pushi.e 4
cmp.i.v EQ
bf [272]

:[271]
push.v local.a
pushi.e 1
add.i.v
pop.v.v local.a

:[272]
pushloc.v local.a
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [288]

:[273]
pushi.e 0
pop.v.i self.doubleelevatorattack
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pushi.e 50
cmp.i.v LT
bf [281]

:[274]
push.v self.arm1
pushi.e -1
cmp.i.v EQ
bf [276]

:[275]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e -104
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
pushi.e -1
push.v self.arm
pushi.e -9
pop.v.i [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm1
b [280]

:[276]
push.v self.arm2
pushi.e -1
cmp.i.v EQ
bf [278]

:[277]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e 0
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
pushi.e 0
push.v self.arm
pushi.e -9
pop.v.i [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm2
b [280]

:[278]
push.v self.arm3
pushi.e -1
cmp.i.v EQ
bf [280]

:[279]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e 104
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
pushi.e 1
push.v self.arm
pushi.e -9
pop.v.i [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm3

:[280]
b [287]

:[281]
push.v self.arm3
pushi.e -1
cmp.i.v EQ
bf [283]

:[282]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e 104
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
pushi.e 1
push.v self.arm
pushi.e -9
pop.v.i [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm3
b [287]

:[283]
push.v self.arm2
pushi.e -1
cmp.i.v EQ
bf [285]

:[284]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e 0
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
pushi.e 0
push.v self.arm
pushi.e -9
pop.v.i [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm2
b [287]

:[285]
push.v self.arm1
pushi.e -1
cmp.i.v EQ
bf [287]

:[286]
pushi.e 668
conv.i.v
push.v 872.y
pushi.e -104
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm
pushi.e -1
push.v self.arm
pushi.e -9
pop.v.i [stacktop]self.lastType
pushi.e 1
pop.v.i self.arm1

:[287]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [273]

:[288]
popz.i
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.lastType
push.v self.elevatororb
push.e 1
add.i.v
pop.v.v self.elevatororb
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [290]

:[289]
push.v self.elevatororb
pushi.e 3
cmp.i.v EQ
b [291]

:[290]
push.e 0

:[291]
bf [293]

:[292]
pushi.e 0
pop.v.i self.elevatororb
pushi.e 669
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 205
add.i.v
pushi.e 70
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.orb
pushi.e 2
push.v self.orb
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 669
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 307
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 205
add.i.v
pushi.e 70
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.orb
pushi.e 2
push.v self.orb
pushi.e -9
pop.v.i [stacktop]self.type

:[293]
pushglb.v global.turntimer
pushi.e 21
cmp.i.v LT
bf [295]

:[294]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
b [296]

:[295]
push.e 0

:[296]
bf [306]

:[297]
pushi.e 668
pushenv [299]

:[298]
call.i instance_destroy(argc=0)
popz.v

:[299]
popenv [298]
push.v 697.x
pushi.e 10
sub.i.v
pop.v.v 697.x
pushglb.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v local._slidetimer
pushi.e 5
conv.i.v
pushloc.v local._slidetimer
pushi.e 10
conv.i.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 50
mul.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.vinex
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 4
conv.i.v
pushloc.v local._slidetimer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 200
mul.i.v
add.v.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 623
pushenv [305]

:[300]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [302]

:[301]
push.v self.sprite_index
pushi.e 2048
cmp.i.v NEQ
b [303]

:[302]
push.e 0

:[303]
bf [305]

:[304]
pushi.e 2048
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.i 68097
setowner.e
pushi.e 9999
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[305]
popenv [300]

:[306]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v EQ
bf [308]

:[307]
push.v 697.xstart
pop.v.v 697.x

:[308]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [314]

:[309]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [314]

:[310]
push.v self.special
conv.v.b
bf [312]

:[311]
pushi.e 11
conv.i.v
b [313]

:[312]
pushi.e 10
conv.i.v

:[313]
pop.v.v 697.partmode
pushi.e 2
pop.v.i self.init
pushi.e 60
pop.v.i self.made

:[314]
push.v self.type
push.d 8.5
cmp.d.v EQ
bf [325]

:[315]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [317]

:[316]
pushi.e 2
pop.v.i self.init
pushi.e 60
pop.v.i self.made

:[317]
push.v self.btimer
pushi.e 1
cmp.i.v GTE
bf [325]

:[318]
pushglb.v global.turntimer
pushi.e 11
cmp.i.v GT
bf [320]

:[319]
push.v 697.image_alpha
push.d -0.2
cmp.d.v GT
b [321]

:[320]
push.e 0

:[321]
bf [323]

:[322]
push.v 697.image_alpha
push.d 0.2
sub.d.v
pop.v.v 697.image_alpha

:[323]
push.v self.btimer
pushi.e 115
cmp.i.v EQ
bf [325]

:[324]
pushi.e 648
conv.i.v
push.v 872.y
push.v 872.x
pushi.e 40
add.i.v
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target

:[325]
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [357]

:[326]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [328]

:[327]
pushi.e 1200
pop.v.i global.turntimer
pushi.e 647
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.init
pushi.e 1
pop.v.i self.special
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.b 597.active

:[328]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [330]

:[329]
push.v self.btimer
pushi.e 45
cmp.i.v EQ
b [331]

:[330]
push.e 0

:[331]
bf [333]

:[332]
pushi.e 2
pop.v.i self.special
pushi.e 608
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 638
conv.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_camerax(argc=0)
pushi.e 680
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e -1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.intro
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.d 16.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.speed
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
push.d 0.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 0
pop.v.i self.btimer

:[333]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [335]

:[334]
push.v self.btimer
pushi.e 70
cmp.i.v EQ
b [336]

:[335]
push.e 0

:[336]
bf [338]

:[337]
pushi.e 1
pop.v.i 608.state
pushi.e 1
pop.v.i 639.destroyable
pushi.e 1
pop.v.i 638.destroyable
push.v 638.image_index
push.e 1
add.i.v
pop.v.v 638.image_index
pushi.e 3
pop.v.i self.special

:[338]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [340]

:[339]
push.v self.btimer
pushi.e 10
cmp.i.v GTE
b [341]

:[340]
push.e 0

:[341]
bf [357]

:[342]
push.v self.sneodollarcount
pushi.e 0
cmp.i.v EQ
bf [344]

:[343]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 100
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.startscale
pushi.e 1
pop.v.i self.sneodollarcount
b [356]

:[344]
push.v self.sneodollarcount
pushi.e 1
cmp.i.v EQ
bf [346]

:[345]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 200
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.startscale
pushi.e 2
pop.v.i self.sneodollarcount
b [356]

:[346]
push.v self.sneodollarcount
pushi.e 2
cmp.i.v EQ
bf [348]

:[347]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 100
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.startscale
pushi.e 3
pop.v.i self.sneodollarcount
b [356]

:[348]
push.v self.sneodollarcount
pushi.e 3
cmp.i.v EQ
bf [350]

:[349]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 100
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.startscale
pushi.e 4
pop.v.i self.sneodollarcount
b [356]

:[350]
push.v self.sneodollarcount
pushi.e 4
cmp.i.v EQ
bf [352]

:[351]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 200
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.startscale
pushi.e 5
pop.v.i self.sneodollarcount
b [356]

:[352]
push.v self.sneodollarcount
pushi.e 5
cmp.i.v EQ
bf [354]

:[353]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 100
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.d 1.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.startscale
pushi.e 6
pop.v.i self.sneodollarcount
b [356]

:[354]
push.v self.sneodollarcount
pushi.e 6
cmp.i.v EQ
bf [356]

:[355]
push.v self.minx
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v 872.y
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 100
add.i.v
pop.v.v self.yy
pushi.e 640
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.startscale
pushi.e 0
pop.v.i self.sneodollarcount

:[356]
pushi.e 3
pop.v.i self.btimer
push.d 0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.speed

:[357]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [366]

:[358]
push.v self.btimer
pushi.e 50
cmp.i.v GT
bf [366]

:[359]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [363]

:[360]
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pop.v.v self.pattern
push.v self.maxx
pushi.e 90
add.i.v
pop.v.v self.xx
pushi.e 0
pop.v.i self.yy
push.v 872.sprite_height
pushi.e 3
conv.i.d
div.d.v
pushi.e 14
sub.i.v
pop.v.v self.yshift
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
bf [362]

:[361]
push.v self.miny
pushi.e 22
add.i.v
pop.v.v self.yy
b [363]

:[362]
push.v self.maxy
pushi.e 22
sub.i.v
pop.v.v self.yy
push.v self.yshift
neg.v
pop.v.v self.yshift

:[363]
pushi.e 677
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.yy
push.v self.yshift
add.v.v
pop.v.v self.yy
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.made
push.e 1
add.i.v
pop.v.v self.made
push.v self.made
pushi.e 4
cmp.i.v EQ
bf [365]

:[364]
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.btimer
b [366]

:[365]
pushi.e 45
pop.v.i self.btimer

:[366]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [369]

:[367]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [369]

:[368]
pushi.e 646
conv.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 675
conv.i.v
push.v 872.y
pushi.e 150
sub.i.v
push.v 872.x
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
pushi.e 675
conv.i.v
push.v 872.y
pushi.e 150
add.i.v
push.v 872.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
pop.v.i self.init

:[369]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [end]

:[370]
push.v self.atimer
push.e 1
add.i.v
pop.v.v self.atimer
push.v self.atimer
pushi.e 1
cmp.i.v EQ
bf [373]

:[371]
push.v 697.facebroken
pushi.e 2
cmp.i.v EQ
bf [373]

:[372]
pushi.e 170
pop.v.i global.turntimer
pushi.e 1
pop.v.i 697.facebroken

:[373]
push.v self.atimer
pushi.e 20
cmp.i.v LT
bf [375]

:[374]
push.v 697.x
pushi.e 10
add.i.v
pop.v.v 697.x
pushi.e 5
conv.i.v
push.v self.atimer
pushi.e 10
conv.i.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pushi.e 300
mul.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.vinex
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 2
conv.i.v
push.v self.atimer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pushi.e 300
mul.i.v
add.v.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x

:[375]
push.v self.atimer
pushi.e 20
cmp.i.v EQ
bf [404]

:[376]
pushi.e 629
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 424
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.face
push.v self.target
push.v self.face
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.face
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.hellmode
push.v self.face
pushi.e -9
pop.v.v [stacktop]self.special
push.v 697.faceattackcount
pushi.e 1
cmp.i.v EQ
bf [378]

:[377]
pushi.e 1
push.v self.face
pushi.e -9
pop.v.b [stacktop]self.first_time

:[378]
push.v self.face
pushi.e -9
pushenv [380]

:[379]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[380]
popenv [379]
pushi.e 0
pop.v.i 698.facetimeincrease
push.v 697.eyeshp
pushi.e 0
cmp.i.v LTE
bf [382]

:[381]
push.v 698.facetimeincrease
push.e 1
add.i.v
pop.v.v 698.facetimeincrease

:[382]
push.v 697.nosehp
pushi.e 0
cmp.i.v LTE
bf [384]

:[383]
push.v 698.facetimeincrease
push.e 1
add.i.v
pop.v.v 698.facetimeincrease

:[384]
push.v 697.mouthhp
pushi.e 0
cmp.i.v LTE
bf [386]

:[385]
push.v 698.facetimeincrease
push.e 1
add.i.v
pop.v.v 698.facetimeincrease

:[386]
pushi.e 629
pushenv [403]

:[387]
push.v self.type
pushi.e 1
cmp.i.v NEQ
bf [395]

:[388]
push.v 698.facetimeincrease
pushi.e 1
cmp.i.v EQ
bf [390]

:[389]
push.v self.timer
pushi.e 20
add.i.v
pop.v.v self.timer

:[390]
push.v 698.facetimeincrease
pushi.e 2
cmp.i.v EQ
bt [392]

:[391]
push.v 698.facetimeincrease
pushi.e 3
cmp.i.v EQ
b [393]

:[392]
push.e 1

:[393]
bf [395]

:[394]
push.v self.timer
pushi.e 50
add.i.v
pop.v.v self.timer

:[395]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [403]

:[396]
push.v 698.facetimeincrease
pushi.e 1
cmp.i.v EQ
bf [398]

:[397]
push.v self.timer
pushi.e 20
add.i.v
pop.v.v self.timer

:[398]
push.v 698.facetimeincrease
pushi.e 2
cmp.i.v EQ
bt [400]

:[399]
push.v 698.facetimeincrease
pushi.e 3
cmp.i.v EQ
b [401]

:[400]
push.e 1

:[401]
bf [403]

:[402]
push.v self.timer
pushi.e 20
add.i.v
pop.v.v self.timer

:[403]
popenv [387]

:[404]
pushglb.v global.turntimer
pushi.e 80
cmp.i.v GT
bf [408]

:[405]
pushi.e 629
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [408]

:[406]
push.v 629.init
pushi.e 1
cmp.i.v EQ
bf [408]

:[407]
push.v 697.facebroken
pushi.e 0
cmp.i.v EQ
b [409]

:[408]
push.e 0

:[409]
bf [420]

:[410]
pushi.e 0
pop.v.i local.a
pushi.e 0
pop.v.i local.i

:[411]
pushloc.v local.i
pushi.e 629
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [418]

:[412]
push.i 170297
setowner.e
pushloc.v local.i
pushi.e 629
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.enemy
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.type
pushi.e 0
cmp.i.v NEQ
bf [414]

:[413]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.broken
pushi.e 0
cmp.i.v EQ
b [415]

:[414]
push.e 0

:[415]
bf [417]

:[416]
pushi.e 1
pop.v.i local.a

:[417]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [411]

:[418]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [420]

:[419]
pushi.e 80
pop.v.i global.turntimer

:[420]
pushglb.v global.turntimer
pushi.e 21
cmp.i.v LT
bf [422]

:[421]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v GT
b [423]

:[422]
push.e 0

:[423]
bf [428]

:[424]
pushi.e 629
pushenv [427]

:[425]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [427]

:[426]
call.i instance_destroy(argc=0)
popz.v

:[427]
popenv [425]
push.v 697.x
pushi.e 10
sub.i.v
pop.v.v 697.x
pushglb.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v local._slidetimer
pushi.e 5
conv.i.v
pushloc.v local._slidetimer
pushi.e 10
conv.i.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 50
mul.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.vinex
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
pushi.e 4
conv.i.v
pushloc.v local._slidetimer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 200
mul.i.v
add.v.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local._slidetimer
pushi.e 20
conv.i.d
div.d.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.___myremembery
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.y

:[428]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v EQ
bf [end]

:[429]
push.v 697.facebroken
pushi.e 1
cmp.i.v EQ
bf [431]

:[430]
pushi.e 0
pop.v.i 697.facebroken

:[431]
push.v 697.xstart
pop.v.v 697.x

:[end]