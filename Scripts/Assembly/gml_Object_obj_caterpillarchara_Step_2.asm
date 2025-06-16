.localvar 2 arguments

:[0]
push.v self.init
conv.v.b
not.b
bf [2]

:[1]
pushi.e 0
pop.v.i self.ignoredepth
pushi.e 1
pop.v.i self.init

:[2]
push.v self.ignoredepth
conv.v.b
not.b
bf [12]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 5
add.i.v
pop.v.v self.depth
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [5]

:[4]
push.v self.depth
pushi.e 80
sub.i.v
pop.v.v self.depth

:[5]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [7]

:[6]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.depth
pushi.e 60
sub.i.v
pop.v.v self.depth

:[10]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [12]

:[11]
push.v self.depth
pushi.e 5
sub.i.v
pop.v.v self.depth

:[12]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 0
pop.v.i self.moved
pushi.e 0
pop.v.i self.walk
pushi.e 0
pop.v.i self.runmove
pushi.e 0
pop.v.i self.slided
push.v 82.x
pushi.e -1
pushi.e 0
push.v [array]self.remx
cmp.v.v NEQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.moved

:[14]
push.v 82.y
pushi.e -1
pushi.e 0
push.v [array]self.remy
cmp.v.v NEQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.moved

:[16]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.sliding
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.moved

:[18]
push.v self.moved
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.follow
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [50]

:[22]
pushi.e 0
pop.v.i self.blushtimer
pushi.e 75
pop.v.i self.i

:[23]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.i 166112
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
push.i 166113
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remy
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remy
push.i 165705
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.facing
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.i 168230
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.sliding
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sliding
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [23]

:[25]
push.i 166112
setowner.e
push.v 82.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.remx
push.i 166113
setowner.e
push.v 82.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.remy
push.i 168230
setowner.e
push.v 82.sliding
pushi.e -1
pushi.e 0
pop.v.v [array]self.sliding
push.i 165705
setowner.e
pushglb.v global.facing
pushi.e -1
pushi.e 0
pop.v.v [array]self.facing
push.v self.usprite
pushi.e 993
cmp.i.v EQ
bf [27]

:[26]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 6
sub.i.v
pop.v.v self.x
b [34]

:[27]
push.v self.usprite
pushi.e 826
cmp.i.v EQ
bf [29]

:[28]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 6
sub.i.v
pop.v.v self.x
b [34]

:[29]
push.v self.usprite
pushi.e 854
cmp.i.v EQ
bf [31]

:[30]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 3
sub.i.v
pop.v.v self.x
b [34]

:[31]
push.v self.usprite
pushi.e 728
cmp.i.v EQ
bf [33]

:[32]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 4
sub.i.v
pop.v.v self.x
b [34]

:[33]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 2
sub.i.v
pop.v.v self.x

:[34]
push.v self.usprite
pushi.e 993
cmp.i.v EQ
bf [36]

:[35]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 16
sub.i.v
pop.v.v self.y
b [43]

:[36]
push.v self.usprite
pushi.e 826
cmp.i.v EQ
bf [38]

:[37]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 16
sub.i.v
pop.v.v self.y
b [43]

:[38]
push.v self.usprite
pushi.e 854
cmp.i.v EQ
bf [40]

:[39]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 6
sub.i.v
pop.v.v self.y
b [43]

:[40]
push.v self.usprite
pushi.e 728
cmp.i.v EQ
bf [42]

:[41]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 20
sub.i.v
pop.v.v self.y
b [43]

:[42]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 12
sub.i.v
pop.v.v self.y

:[43]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.sliding
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pop.v.v self.x
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pop.v.v self.y
push.v self.slidesprite
pop.v.v self.sprite_index
pushi.e 1
pop.v.i self.slided

:[45]
pushi.e -1
push.v self.target
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.remx
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v GT
bf [47]

:[46]
pushi.e 1
pop.v.i self.runmove

:[47]
pushi.e -1
push.v self.target
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.remy
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v GT
bf [49]

:[48]
pushi.e 1
pop.v.i self.runmove

:[49]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pop.v.v self.dir

:[50]
push.v self.x
push.v self.nowx
cmp.v.v NEQ
bf [52]

:[51]
pushi.e 1
pop.v.i self.walk

:[52]
push.v self.y
push.v self.nowy
cmp.v.v NEQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.walk

:[54]
push.v self.walk
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 6
pop.v.i self.walkbuffer

:[56]
push.v self.walkbuffer
pushi.e 3
cmp.i.v GT
bf [58]

:[57]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [72]

:[60]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer
push.v self.runmove
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer

:[62]
push.v self.walktimer
pushi.e 40
cmp.i.v GTE
bf [64]

:[63]
push.v self.walktimer
pushi.e 40
sub.i.v
pop.v.v self.walktimer

:[64]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [66]

:[65]
pushi.e 0
pop.v.i self.image_index

:[66]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [68]

:[67]
pushi.e 1
pop.v.i self.image_index

:[68]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [70]

:[69]
pushi.e 2
pop.v.i self.image_index

:[70]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [72]

:[71]
pushi.e 3
pop.v.i self.image_index

:[72]
push.v self.walkbuffer
pushi.e 0
cmp.i.v LTE
bf [74]

:[73]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [91]

:[76]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [78]

:[77]
push.d 9.5
pop.v.d self.walktimer

:[78]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [80]

:[79]
push.v self.walktimer
pushi.e 20
cmp.i.v LT
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
push.d 19.5
pop.v.d self.walktimer

:[83]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [85]

:[84]
push.v self.walktimer
pushi.e 30
cmp.i.v LT
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.d 29.5
pop.v.d self.walktimer

:[88]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [90]

:[89]
push.d 39.5
pop.v.d self.walktimer

:[90]
pushi.e 0
pop.v.i self.image_index

:[91]
push.v self.walkbuffer
push.d 0.75
sub.d.v
pop.v.v self.walkbuffer
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.v self.slided
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [103]

:[95]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.v self.dsprite
pop.v.v self.sprite_index

:[97]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
push.v self.rsprite
pop.v.v self.sprite_index

:[99]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
push.v self.usprite
pop.v.v self.sprite_index

:[101]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 3
cmp.i.v EQ
bf [103]

:[102]
push.v self.lsprite
pop.v.v self.sprite_index

:[103]
push.v self.dsprite
pushi.e 1010
cmp.i.v EQ
bt [105]

:[104]
push.v self.dsprite
pushi.e 785
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [109]

:[107]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [137]

:[111]
push.v 82.x
push.v self.x
pushi.e 2
add.i.v
sub.v.v
pop.v.v self.distfrommcx
push.v 82.y
push.v self.y
pushi.e 12
add.i.v
sub.v.v
pop.v.v self.distfrommcy
push.v self.distfrommcy
call.i abs(argc=1)
pushi.e 14
cmp.i.v LTE
bf [113]

:[112]
push.v self.distfrommcx
call.i abs(argc=1)
pushi.e 20
cmp.i.v LTE
b [114]

:[113]
push.e 0

:[114]
bf [126]

:[115]
push.v self.distfrommcx
pushi.e 0
cmp.i.v LTE
bf [117]

:[116]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
push.v self.blushtimer
pushi.e 1
add.i.v
pop.v.v self.blushtimer

:[120]
push.v self.distfrommcx
pushi.e 0
cmp.i.v GTE
bf [122]

:[121]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
push.v self.blushtimer
pushi.e 1
add.i.v
pop.v.v self.blushtimer

:[125]
b [127]

:[126]
pushi.e 0
pop.v.i self.blushtimer

:[127]
push.v self.blushtimer
pushi.e 300
cmp.i.v GTE
bf [136]

:[128]
push.v self.sprite_index
push.v self.dsprite
cmp.v.v EQ
bf [130]

:[129]
push.v self.dsprite_blush
pop.v.v self.sprite_index

:[130]
push.v self.sprite_index
push.v self.rsprite
cmp.v.v EQ
bf [132]

:[131]
push.v self.rsprite_blush
pop.v.v self.sprite_index

:[132]
push.v self.sprite_index
push.v self.usprite
cmp.v.v EQ
bf [134]

:[133]
push.v self.usprite_blush
pop.v.v self.sprite_index

:[134]
push.v self.sprite_index
push.v self.lsprite
cmp.v.v EQ
bf [136]

:[135]
push.v self.lsprite_blush
pop.v.v self.sprite_index

:[136]
b [138]

:[137]
pushi.e 0
pop.v.i self.blushtimer

:[138]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [end]

:[139]
push.v self.sprite_index
push.v self.dsprite
cmp.v.v EQ
bf [end]

:[140]
push.v self.depth
pushi.e 20
add.i.v
pop.v.v self.depth

:[end]