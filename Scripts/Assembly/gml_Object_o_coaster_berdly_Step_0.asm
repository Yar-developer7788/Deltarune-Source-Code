.localvar 2 arguments
.localvar 338 _i 11373
.localvar 24513 _explosion 11375
.localvar 6482 xx 11376
.localvar 6483 yy 11377

:[0]
pushi.e 484
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 484.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 50
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bt [8]

:[4]
pushi.e 484
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e -5
push.v 484.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v 484.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
bf [17]

:[10]
push.v self.smokestart
pushi.e 0
cmp.i.v EQ
bf [15]

:[11]
pushi.e 1
pop.v.i self.smokestart
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i local._i

:[12]
pushloc.v local._i
pushi.e 8
cmp.i.v LT
bf [14]

:[13]
pushi.e 508
conv.i.v
push.v self.y
push.v self.x
pushi.e 90
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
pushi.e 45
pushloc.v local._i
mul.v.i
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.depth
pushi.e 1
sub.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [12]

:[14]
pushi.e 128
conv.i.v
push.v self.y
push.v self.x
pushi.e 90
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._explosion
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local._explosion
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1878
pushloc.v local._explosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[15]
push.v self.smoketimer
push.e 1
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 15
cmp.i.v GT
bf [17]

:[16]
pushi.e 0
pop.v.i self.smoketimer
pushi.e 508
conv.i.v
push.v self.y
push.v self.x
pushi.e 90
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
push.v self.depth
pushi.e 1
add.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.depth

:[17]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [35]

:[18]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 60
pop.v.i self.movethreshold
pushi.e 6
pop.v.i self.moveframes

:[20]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 36
pop.v.i self.movethreshold
pushi.e 12
pop.v.i self.moveframes

:[22]
push.v self.mode
pushi.e 2
cmp.i.v GTE
bf [24]

:[23]
pushi.e 1
pop.v.i self.queenmode
pushi.e 1865
pop.v.i self.sprite_index

:[24]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.movetype
pushi.e 24
pop.v.i self.moveframes

:[26]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushi.e 40
pop.v.i self.movethreshold
pushi.e 16
pop.v.i self.moveframes

:[28]
push.v self.mode
pushi.e 4
cmp.i.v EQ
bf [30]

:[29]
pushi.e 40
pop.v.i self.movethreshold
pushi.e 16
pop.v.i self.moveframes

:[30]
push.v self.mode
pushi.e 5
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.movetype
pushi.e 8
pop.v.i self.moveframes

:[32]
push.v self.mode
pushi.e 6
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.movetype
pushi.e 4
pop.v.i self.moveframes

:[34]
pushi.e 1
pop.v.i self.init

:[35]
push.v 484.premonition
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.v 502.actcon
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.i self.premonition
pushi.e 1
pop.v.i self.drawpremonition
b [41]

:[40]
pushi.e 0
pop.v.i self.drawpremonition

:[41]
push.v self.y
pushi.e 178
cmp.i.v GT
bf [43]

:[42]
pushi.e 78
pop.v.i self.depth

:[43]
push.v self.y
pushi.e 230
cmp.i.v GT
bf [45]

:[44]
pushi.e 73
pop.v.i self.depth

:[45]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.xshake
pushi.e 0
cmp.i.v NEQ
bf [49]

:[46]
push.v self.shaketimer
push.e 1
add.i.v
pop.v.v self.shaketimer
push.v self.shaketimer
pushi.e 2
cmp.i.v GTE
bf [49]

:[47]
pushi.e 0
pop.v.i self.shaketimer
push.v self.xshake
push.d -0.8
mul.d.v
pop.v.v self.xshake
push.v self.xshake
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [49]

:[48]
pushi.e 0
pop.v.i self.xshake

:[49]
push.v self.endscene
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [52]

:[51]
push.e 0

:[52]
bf [56]

:[53]
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.x
pushi.e 22
add.i.v
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
pop.v.v local.xx
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.y
pushi.e 47
add.i.v
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.yy
push.v self.endscenetimer
pushi.e 10
cmp.i.v LT
bf [55]

:[54]
push.v self.endscenetimer
push.e 1
add.i.v
pop.v.v self.endscenetimer

:[55]
push.v self.endscenetimer
pushi.e 10
conv.i.d
div.d.v
pushloc.v local.xx
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.endscenetimer
pushi.e 10
conv.i.d
div.d.v
pushloc.v local.yy
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[56]
push.v self.damagecon
pushi.e 0
cmp.i.v EQ
bf [60]

:[57]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.endscene
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x

:[59]
pushi.e 0
pop.v.i self.damagetimer

:[60]
push.v self.damagecon
pushi.e 1
cmp.i.v EQ
bf [66]

:[61]
push.v self.damagetimer
pushi.e 1
add.i.v
pop.v.v self.damagetimer
pushi.e 1
pop.v.i self.image_index
push.v self.kiss
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 2
pop.v.i self.image_index

:[63]
push.v self.xstart
pushi.e 60
add.i.v
push.v self.damagetimer
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.damagetimer
pushi.e 10
cmp.i.v GTE
bf [66]

:[64]
pushi.e 0
pop.v.i self.xshake
pushi.e 0
pop.v.i self.yshake
push.v self.xstart
pop.v.v self.x
pushi.e 0
pop.v.i self.damagetimer
pushi.e 0
pop.v.i self.damagecon
pushi.e 0
pop.v.i self.image_index
push.v self.sprite_index
pushi.e 1076
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1849
pop.v.i self.sprite_index

:[66]
push.v 502.actcon
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v self.movecon
pushi.e -1
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 0
pop.v.i self.movecon

:[71]
push.v 502.actcon
pushi.e 0
cmp.i.v EQ
bf [76]

:[72]
pushi.e -1
pop.v.i self.movecon
pushi.e 59
pop.v.i self.movetimer
push.v self.y
push.v self.ystart
cmp.v.v LT
bf [74]

:[73]
push.v self.y
push.v self.ystart
push.v self.y
sub.v.v
push.v self.moveframes
div.v.v
add.v.v
pop.v.v self.y

:[74]
push.v self.y
push.v self.ystart
cmp.v.v GT
bf [76]

:[75]
push.v self.y
push.v self.ystart
push.v self.y
sub.v.v
push.v self.moveframes
div.v.v
add.v.v
pop.v.v self.y

:[76]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [120]

:[77]
pushi.e 0
pop.v.i self.movebuffer
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetype
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
pushi.e -1
pushi.e 1
push.v [array]self.yspot
push.v self.movetimer
push.v self.moveframes
div.v.v
call.i sin(argc=1)
pushi.e -1
pushi.e 2
push.v [array]self.yspot
pushi.e -1
pushi.e 0
push.v [array]self.yspot
sub.v.v
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[79]
push.v self.movetimer
push.v self.movethreshold
cmp.v.v GTE
bf [81]

:[80]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [120]

:[83]
push.v self.idealy
pop.v.v self.oldidealy
push.v 484.ralseigo
pushi.e 1
cmp.i.v EQ
bf [88]

:[84]
pushi.e 2
pop.v.i self.forceypos
pushi.e 0
pop.v.i 484.ralseigo
pushi.e 495
pushenv [87]

:[85]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pop.v.i self.bump

:[87]
popenv [85]
b [98]

:[88]
push.v 484.susiego
pushi.e 1
cmp.i.v EQ
bf [93]

:[89]
pushi.e 1
pop.v.i self.forceypos
pushi.e 0
pop.v.i 484.susiego
pushi.e 495
pushenv [92]

:[90]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
pushi.e 1
pop.v.i self.bump

:[92]
popenv [90]
b [98]

:[93]
push.v 484.krisgo
pushi.e 1
cmp.i.v EQ
bf [98]

:[94]
pushi.e 0
pop.v.i self.forceypos
pushi.e 0
pop.v.i 484.krisgo
pushi.e 495
pushenv [97]

:[95]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i self.bump

:[97]
popenv [95]

:[98]
push.v self.forceypos
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
pushi.e -1
pushi.e 0
push.v [array]self.yspot
pop.v.v self.idealy

:[100]
push.v self.forceypos
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e -1
pushi.e 1
push.v [array]self.yspot
pop.v.v self.idealy

:[102]
push.v self.forceypos
pushi.e 2
cmp.i.v EQ
bf [104]

:[103]
pushi.e -1
pushi.e 2
push.v [array]self.yspot
pop.v.v self.idealy

:[104]
push.v self.forceypos
pushi.e -1
cmp.i.v EQ
bf [106]

:[105]
pushi.e -1
pushi.e -1
push.v self.ycount
conv.v.i
push.v [array]self.nexty
conv.v.i
push.v [array]self.yspot
pop.v.v self.idealy

:[106]
push.v self.idealy
push.v self.y
sub.v.v
push.v self.moveframes
div.v.v
pop.v.v self.yspeed
pushi.e 1
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movetimer
push.v self.ycount
push.e 1
add.i.v
pop.v.v self.ycount
push.v self.ycount
pushi.e 6
cmp.i.v GTE
bf [120]

:[107]
pushi.e 0
pop.v.i self.i

:[108]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [110]

:[109]
push.i 170183
setowner.e
pushi.e -1
push.v self.i
pushi.e 6
add.i.v
conv.v.i
push.v [array]self.nexty
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.nexty
pushi.e -1
conv.i.v
pushi.e -1
push.v self.i
pushi.e 6
add.i.v
conv.v.i
pop.v.v [array]self.nexty
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [108]

:[110]
pushi.e 0
pop.v.i self.ycount
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 6
add.i.v
call.i floor(argc=1)
pop.v.v self.pick
pushi.e 0
pop.v.i self.i

:[111]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [115]

:[112]
pushi.e -1
push.v self.pick
conv.v.i
push.v [array]self.nexty
pushi.e -1
cmp.i.v NEQ
bf [114]

:[113]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 6
add.i.v
call.i floor(argc=1)
pop.v.v self.pick
b [112]

:[114]
push.i 170183
setowner.e
push.v self.i
pushi.e -1
push.v self.pick
conv.v.i
pop.v.v [array]self.nexty
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [111]

:[115]
pushi.e 6
pop.v.i self.j

:[116]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [120]

:[117]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.nexty
pushi.e -1
cmp.i.v EQ
bf [119]

:[118]
push.i 170183
setowner.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.nexty

:[119]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [116]

:[120]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
bf [125]

:[121]
push.v self.y
push.v self.yspeed
add.v.v
pop.v.v self.y
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
push.v self.moveframes
cmp.v.v GTE
bf [125]

:[122]
push.v self.movebuffer
pushi.e 0
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i self.movetimer
push.v self.idealy
pop.v.v self.y

:[124]
pushi.e 0
pop.v.i self.movecon

:[125]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [128]

:[126]
push.v self.modetimer
push.e 1
add.i.v
pop.v.v self.modetimer
push.v self.modetimer
pushi.e 60
cmp.i.v GTE
bf [128]

:[127]
pushi.e -60
pop.v.i self.modetimer
pushi.e 497
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
push.v [array]self.yspot
push.v 496.x
pushi.e 40
sub.i.v
pushi.e 20
push.v self.queenmode
mul.v.i
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jama

:[128]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [131]

:[129]
push.v self.modetimer
push.e 1
add.i.v
pop.v.v self.modetimer
push.v self.modetimer
pushi.e 60
cmp.i.v GTE
bf [131]

:[130]
pushi.e -60
pop.v.i self.modetimer
pushi.e 494
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
push.v [array]self.yspot
pushi.e -6
pushi.e 0
push.v [array]self.view_xview
pushi.e 330
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[131]
push.v self.mode
pushi.e 4
cmp.i.v EQ
bf [134]

:[132]
push.v self.modetimer
push.e 1
add.i.v
pop.v.v self.modetimer
push.v self.modetimer
pushi.e 60
cmp.i.v GTE
bf [134]

:[133]
pushi.e -30
pop.v.i self.modetimer
pushi.e 497
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
push.v [array]self.yspot
push.v 496.x
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jama
pushi.e 1
push.v self.jama
pushi.e -9
pop.v.i [stacktop]self.bigcar
pushi.e 1872
push.v self.jama
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[134]
push.v self.mode
pushi.e 5
cmp.i.v EQ
bf [139]

:[135]
push.v self.modetimer
push.e 1
add.i.v
pop.v.v self.modetimer
push.v self.modetimer
pushi.e 40
cmp.i.v EQ
bf [137]

:[136]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.nozoki
pushi.e 494
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
push.v [array]self.yspot
pushi.e -6
pushi.e 0
push.v [array]self.view_xview
pushi.e 330
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lit
pushi.e 20
push.v self.lit
pushi.e -9
pop.v.i [stacktop]self.waittime
pushi.e 20
push.v self.lit
pushi.e -9
pop.v.i [stacktop]self.litwaittime

:[137]
push.v self.modetimer
pushi.e 80
cmp.i.v EQ
bf [139]

:[138]
pushi.e 497
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
push.v [array]self.yspot
push.v 496.x
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.jama
pushi.e 0
pop.v.i self.modetimer

:[139]
pushi.e 484
pushenv [142]

:[140]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
cmp.v.v NEQ
bf [142]

:[141]
pushi.e 0
pop.v.i 496.kiss

:[142]
popenv [140]

:[end]