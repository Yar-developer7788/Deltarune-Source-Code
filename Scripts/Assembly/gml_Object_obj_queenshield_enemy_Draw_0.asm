.localvar 2 arguments
.localvar 7017 a 12170
.localvar 10805 x1 12171
.localvar 10806 y1 12172
.localvar 10807 x2 12173
.localvar 10808 y2 12174
.localvar 11611 ii 12175

:[0]
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.v self.shieldsiner
push.e 1
add.i.v
pop.v.v self.shieldsiner
push.v self.y
push.v self.shieldsiner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.v.v self.y
push.v self.shaketimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.xstart
push.v self.shaketimer
sub.v.v
push.v self.shaketimer
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shaketimer
sub.v.v
push.v self.shaketimer
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.shaketimer
push.e 1
sub.i.v
pop.v.v self.shaketimer

:[2]
push.v self.hurtsfxcon
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
push.v self.hurtsfxtimer
push.e 1
add.i.v
pop.v.v self.hurtsfxtimer
pushi.e 180
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[5]
push.v self.hurtsfxtimer
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.hurtsfxcon
pushi.e 0
pop.v.i self.hurtsfxtimer

:[7]
push.v 574.shieldhp
push.v 574.shieldmaxhp
div.v.v
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
cmp.v.v LTE
bf [99]

:[8]
push.v 574.shieldhp
push.v 574.shieldmaxhp
div.v.v
pop.v.v local.a
push.v self.shieldsize
pushi.e 7
cmp.i.v EQ
bf [30]

:[9]
pushloc.v local.a
push.d 0.8571428571428571
cmp.d.v LT
bf [11]

:[10]
push.i 171118
setowner.e
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index
b [12]

:[11]
push.i 171118
setowner.e
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index

:[12]
pushloc.v local.a
push.d 0.7142857142857143
cmp.d.v LT
bf [14]

:[13]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index
b [15]

:[14]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index

:[15]
pushloc.v local.a
push.d 0.5714285714285714
cmp.d.v LT
bf [17]

:[16]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index
b [18]

:[17]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index

:[18]
pushloc.v local.a
push.d 0.42857142857142855
cmp.d.v LT
bf [20]

:[19]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index
b [21]

:[20]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index

:[21]
pushloc.v local.a
push.d 0.2857142857142857
cmp.d.v LT
bf [23]

:[22]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index
b [24]

:[23]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index

:[24]
pushloc.v local.a
push.d 0.14285714285714285
cmp.d.v LT
bf [26]

:[25]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index
b [27]

:[26]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index

:[27]
pushloc.v local.a
pushi.e 0
cmp.i.v LTE
bf [29]

:[28]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index
b [30]

:[29]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index

:[30]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [61]

:[31]
pushloc.v local.a
push.d 0.9
cmp.d.v LT
bf [33]

:[32]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index
b [34]

:[33]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index

:[34]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [36]

:[35]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index
b [37]

:[36]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index

:[37]
pushloc.v local.a
push.d 0.7
cmp.d.v LT
bf [39]

:[38]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index
b [40]

:[39]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index

:[40]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [42]

:[41]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index
b [43]

:[42]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index

:[43]
pushloc.v local.a
push.d 0.5
cmp.d.v LT
bf [45]

:[44]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index
b [46]

:[45]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index

:[46]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [48]

:[47]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index
b [49]

:[48]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index

:[49]
pushloc.v local.a
push.d 0.3
cmp.d.v LT
bf [51]

:[50]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index
b [52]

:[51]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index

:[52]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [54]

:[53]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index
b [55]

:[54]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index

:[55]
pushloc.v local.a
push.d 0.1
cmp.d.v LT
bf [57]

:[56]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index
b [58]

:[57]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index

:[58]
pushloc.v local.a
pushi.e 0
cmp.i.v LTE
bf [60]

:[59]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index
b [61]

:[60]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index

:[61]
push.v self.shieldsize
pushi.e 12
cmp.i.v EQ
bf [98]

:[62]
pushloc.v local.a
push.d 0.9166666666666666
cmp.d.v LT
bf [64]

:[63]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index
b [65]

:[64]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index

:[65]
pushloc.v local.a
push.d 0.8333333333333334
cmp.d.v LT
bf [67]

:[66]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index
b [68]

:[67]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index

:[68]
pushloc.v local.a
push.d 0.75
cmp.d.v LT
bf [70]

:[69]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index
b [71]

:[70]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index

:[71]
pushloc.v local.a
push.d 0.6666666666666666
cmp.d.v LT
bf [73]

:[72]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index
b [74]

:[73]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index

:[74]
pushloc.v local.a
push.d 0.5833333333333334
cmp.d.v LT
bf [76]

:[75]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index
b [77]

:[76]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index

:[77]
pushloc.v local.a
push.d 0.5
cmp.d.v LT
bf [79]

:[78]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index
b [80]

:[79]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index

:[80]
pushloc.v local.a
push.d 0.4166666666666667
cmp.d.v LT
bf [82]

:[81]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index
b [83]

:[82]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index

:[83]
pushloc.v local.a
push.d 0.3333333333333333
cmp.d.v LT
bf [85]

:[84]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index
b [86]

:[85]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index

:[86]
pushloc.v local.a
push.d 0.25
cmp.d.v LT
bf [88]

:[87]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index
b [89]

:[88]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index

:[89]
pushloc.v local.a
push.d 0.16666666666666666
cmp.d.v LT
bf [91]

:[90]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index
b [92]

:[91]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index

:[92]
pushloc.v local.a
push.d 0.08333333333333333
cmp.d.v LT
bf [94]

:[93]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_sprite_index
b [95]

:[94]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_sprite_index

:[95]
pushloc.v local.a
pushi.e 0
cmp.i.v LTE
bf [97]

:[96]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_sprite_index
b [98]

:[97]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_sprite_index

:[98]
b [189]

:[99]
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
pop.v.v local.a
push.v self.shieldsize
pushi.e 7
cmp.i.v EQ
bf [121]

:[100]
pushloc.v local.a
push.d 0.8571428571428571
cmp.d.v LT
bf [102]

:[101]
push.i 171118
setowner.e
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index
b [103]

:[102]
push.i 171118
setowner.e
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index

:[103]
pushloc.v local.a
push.d 0.7142857142857143
cmp.d.v LT
bf [105]

:[104]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index
b [106]

:[105]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index

:[106]
pushloc.v local.a
push.d 0.5714285714285714
cmp.d.v LT
bf [108]

:[107]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index
b [109]

:[108]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index

:[109]
pushloc.v local.a
push.d 0.42857142857142855
cmp.d.v LT
bf [111]

:[110]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index
b [112]

:[111]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index

:[112]
pushloc.v local.a
push.d 0.2857142857142857
cmp.d.v LT
bf [114]

:[113]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index
b [115]

:[114]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index

:[115]
pushloc.v local.a
push.d 0.14285714285714285
cmp.d.v LT
bf [117]

:[116]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index
b [118]

:[117]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index

:[118]
pushloc.v local.a
pushi.e 0
cmp.i.v LTE
bf [120]

:[119]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index
b [121]

:[120]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index

:[121]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [152]

:[122]
pushloc.v local.a
push.d 0.9
cmp.d.v LT
bf [124]

:[123]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index
b [125]

:[124]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index

:[125]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [127]

:[126]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index
b [128]

:[127]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index

:[128]
pushloc.v local.a
push.d 0.7
cmp.d.v LT
bf [130]

:[129]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index
b [131]

:[130]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index

:[131]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [133]

:[132]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index
b [134]

:[133]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index

:[134]
pushloc.v local.a
push.d 0.5
cmp.d.v LT
bf [136]

:[135]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index
b [137]

:[136]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index

:[137]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [139]

:[138]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index
b [140]

:[139]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index

:[140]
pushloc.v local.a
push.d 0.3
cmp.d.v LT
bf [142]

:[141]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index
b [143]

:[142]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index

:[143]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [145]

:[144]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index
b [146]

:[145]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index

:[146]
pushloc.v local.a
push.d 0.1
cmp.d.v LT
bf [148]

:[147]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index
b [149]

:[148]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index

:[149]
pushloc.v local.a
pushi.e 0
cmp.i.v LTE
bf [151]

:[150]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index
b [152]

:[151]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index

:[152]
push.v self.shieldsize
pushi.e 12
cmp.i.v EQ
bf [189]

:[153]
pushloc.v local.a
push.d 0.9166666666666666
cmp.d.v LT
bf [155]

:[154]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index
b [156]

:[155]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_sprite_index

:[156]
pushloc.v local.a
push.d 0.8333333333333334
cmp.d.v LT
bf [158]

:[157]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index
b [159]

:[158]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_sprite_index

:[159]
pushloc.v local.a
push.d 0.75
cmp.d.v LT
bf [161]

:[160]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index
b [162]

:[161]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_sprite_index

:[162]
pushloc.v local.a
push.d 0.6666666666666666
cmp.d.v LT
bf [164]

:[163]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index
b [165]

:[164]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_sprite_index

:[165]
pushloc.v local.a
push.d 0.5833333333333334
cmp.d.v LT
bf [167]

:[166]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index
b [168]

:[167]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_sprite_index

:[168]
pushloc.v local.a
push.d 0.5
cmp.d.v LT
bf [170]

:[169]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index
b [171]

:[170]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_sprite_index

:[171]
pushloc.v local.a
push.d 0.4166666666666667
cmp.d.v LT
bf [173]

:[172]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index
b [174]

:[173]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_sprite_index

:[174]
pushloc.v local.a
push.d 0.3333333333333333
cmp.d.v LT
bf [176]

:[175]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index
b [177]

:[176]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index

:[177]
pushloc.v local.a
push.d 0.25
cmp.d.v LT
bf [179]

:[178]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index
b [180]

:[179]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index

:[180]
pushloc.v local.a
push.d 0.16666666666666666
cmp.d.v LT
bf [182]

:[181]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index
b [183]

:[182]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index

:[183]
pushloc.v local.a
push.d 0.08333333333333333
cmp.d.v LT
bf [185]

:[184]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_sprite_index
b [186]

:[185]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_sprite_index

:[186]
pushloc.v local.a
pushi.e 0
cmp.i.v LTE
bf [188]

:[187]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_sprite_index
b [189]

:[188]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_sprite_index

:[189]
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_yscale
push.d 0.1
cmp.d.v GT
bf [209]

:[190]
push.v self.movecon
pushi.e 15
cmp.i.v EQ
bf [192]

:[191]
push.v self.shieldalpha
pushi.e 0
cmp.i.v GT
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
push.v self.shieldalpha
push.d 0.1
sub.d.v
pop.v.v self.shieldalpha

:[195]
push.v self.movecon
pushi.e 15
cmp.i.v NEQ
bf [197]

:[196]
push.v self.shieldalpha
pushi.e 1
cmp.i.v LT
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
push.v self.shieldalpha
push.d 0.1
add.d.v
pop.v.v self.shieldalpha

:[200]
push.v 574.sprite_index
pushi.e 1885
cmp.i.v EQ
bt [202]

:[201]
push.v 574.sprite_index
pushi.e 1884
cmp.i.v EQ
b [203]

:[202]
push.e 1

:[203]
bf [205]

:[204]
pushi.e 10
pop.v.i local.x1
pushi.e 5
pop.v.i local.y1
pushi.e 10
pop.v.i local.x2
pushi.e 22
pop.v.i local.y2
b [206]

:[205]
pushi.e 17
pop.v.i local.x1
pushi.e 23
pop.v.i local.y1
pushi.e 17
pop.v.i local.x2
pushi.e 0
pop.v.i local.y2

:[206]
push.v self.appearcon
pushi.e 3
cmp.i.v EQ
bf [208]

:[207]
pushi.e 16
pushi.e 16
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_yscale
pushi.e 2
conv.i.d
div.d.v
mul.v.i
sub.v.i
pushi.e 2
mul.i.v
pop.v.v local.a
push.v self.shieldalpha
push.d 0.8
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e 48
sub.i.v
push.v self.x
pushi.e 14
add.i.v
push.v self.queenhandy
pushloc.v local.y1
sub.v.v
push.v self.queenhandx
pushloc.v local.x1
add.v.v
call.i draw_line(argc=4)
popz.v
pushi.e -1
push.v self.shieldsize
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e 33
add.i.v
pushloc.v local.a
sub.v.v
push.v self.x
pushi.e 81
add.i.v
push.v self.queenhandy
pushloc.v local.y2
add.v.v
push.v self.queenhandx
pushloc.v local.x2
add.v.v
call.i draw_line(argc=4)
popz.v
b [209]

:[208]
push.v self.shieldalpha
push.d 0.8
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e 48
sub.i.v
push.v self.x
pushi.e 14
add.i.v
push.v self.queenhandy
pushloc.v local.y1
sub.v.v
push.v self.queenhandx
pushloc.v local.x1
add.v.v
call.i draw_line(argc=4)
popz.v
pushi.e -1
push.v self.shieldsize
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e 33
add.i.v
push.v self.x
pushi.e 81
add.i.v
push.v self.queenhandy
pushloc.v local.y2
add.v.v
push.v self.queenhandx
pushloc.v local.x2
add.v.v
call.i draw_line(argc=4)
popz.v

:[209]
push.v self.shieldhurt
pushi.e 0
cmp.i.v EQ
bf [228]

:[210]
pushi.e 0
pop.v.i self.i

:[211]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [228]

:[212]
pushi.e -1
pushi.e 13
push.v self.i
sub.v.i
conv.v.i
push.v [array]self.depthorder
pop.v.v local.ii
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_yscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadecon
pushi.e 1
cmp.i.v EQ
bf [216]

:[213]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadetimer
pushi.e 10
cmp.i.v LT
bf [215]

:[214]
push.i 171120
setowner.e
pushi.e -1
pushloc.v local.ii
conv.v.i
dup.i 1
push.v [array]self.shieldpiece_fadetimer
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]self.shieldpiece_fadetimer
popz.v

:[215]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadetimer
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_yscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e 1897
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[216]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadecon
pushi.e 2
cmp.i.v EQ
bf [220]

:[217]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadetimer
popz.v
pushi.e -1
pushloc.v local.ii
conv.v.i
dup.i 1
push.v [array]self.shieldpiece_fadetimer
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]self.shieldpiece_fadetimer
popz.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadetimer
pushi.e 0
cmp.i.v EQ
bf [219]

:[218]
push.i 171121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.ii
conv.v.i
pop.v.v [array]self.shieldpiece_fadecon

:[219]
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_fadetimer
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_yscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e 1897
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[220]
push.v 574.shieldhp
pushi.e 5
cmp.i.v LTE
bt [222]

:[221]
push.v 574.shieldacthp
pushi.e 1
cmp.i.v LT
b [223]

:[222]
push.e 1

:[223]
bf [227]

:[224]
push.v self.imabouttobreak_siner
push.d 0.5
add.d.v
pop.v.v self.imabouttobreak_siner
push.d 0.1
push.v self.imabouttobreak_siner
call.i sin(argc=1)
pushi.e 6
conv.i.d
div.d.v
add.v.d
pop.v.v self.imabouttobreak_alpha
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_sprite_index
pushi.e 3229
cmp.i.v NEQ
bf [226]

:[225]
push.v self.imabouttobreak_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_yscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
pushloc.v local.ii
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e 1896
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[226]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[227]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [211]

:[228]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [257]

:[229]
push.v self.appearcon
pushi.e 1
cmp.i.v EQ
bf [240]

:[230]
push.v self.shieldsize
pushi.e 7
cmp.i.v EQ
bf [232]

:[231]
push.i 171110
setowner.e
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 95
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 115
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 135
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 155
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 175
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 200
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_y_origin

:[232]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [234]

:[233]
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 95
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 115
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 135
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 155
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 175
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 195
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 215
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 240
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_y_origin

:[234]
push.v self.shieldsize
pushi.e 12
cmp.i.v EQ
bf [236]

:[235]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 65
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 85
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 105
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 125
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 145
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 165
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 185
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 205
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 225
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 250
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_y_origin

:[236]
pushi.e 0
pop.v.i self.i

:[237]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [239]

:[238]
push.i 171116
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_yscale
push.i 171117
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_alpha
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [237]

:[239]
pushi.e 0
pop.v.i self.appearcon
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.movetimer
pushi.e 1
pop.v.i self.movecon

:[240]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
bf [242]

:[241]
pushi.e 2
pop.v.i self.movecon
push.i 171121
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_fadecon

:[242]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [245]

:[243]
push.v self.movetimer
pushi.e 2
add.i.v
pop.v.v self.movetimer
push.i 171111
setowner.e
pushi.e 2
conv.i.v
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
pushi.e 15
add.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
call.i gml_Script_lerp_ease_out(argc=4)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_x
push.i 171117
setowner.e
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_alpha
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [245]

:[244]
pushi.e 0
pop.v.i self.movetimer
pushi.e 3
pop.v.i self.movecon

:[245]
push.v self.movecon
pushi.e 3
cmp.i.v EQ
bf [249]

:[246]
push.v self.movetimer
pushi.e 2
add.i.v
pop.v.v self.movetimer
push.i 171112
setowner.e
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_y_origin
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_y
call.i lerp(argc=3)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_y
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [248]

:[247]
pushi.e 0
pop.v.i self.movetimer
pushi.e 4
pop.v.i self.movecon
push.i 171121
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_fadecon

:[248]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[249]
push.v self.movecon
pushi.e 4
cmp.i.v EQ
bf [252]

:[250]
push.v self.movetimer
pushi.e 2
add.i.v
pop.v.v self.movetimer
push.i 171111
setowner.e
pushi.e 1
conv.i.v
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
pushi.e 15
add.i.v
call.i gml_Script_lerp_ease_out(argc=4)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_x
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [252]

:[251]
pushi.e 0
pop.v.i self.movetimer
pushi.e 5
pop.v.i self.movecon

:[252]
push.v self.movecon
pushi.e 5
cmp.i.v EQ
bf [256]

:[253]
push.v self.movepiece
push.v self.shieldsize
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [255]

:[254]
pushi.e 0
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movepiece
b [256]

:[255]
push.v self.movepiece
push.e 1
add.i.v
pop.v.v self.movepiece
pushi.e 1
pop.v.i self.movecon

:[256]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [229]

:[257]
popz.i
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [283]

:[258]
push.v self.appearcon
pushi.e 2
cmp.i.v EQ
bf [260]

:[259]
pushi.e 0
pop.v.i self.appearcon
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.movetimer
pushi.e 10
pop.v.i self.movecon

:[260]
push.v self.movecon
pushi.e 10
cmp.i.v EQ
bf [262]

:[261]
pushi.e 11
pop.v.i self.movecon
push.i 171121
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_fadecon

:[262]
push.v self.movecon
pushi.e 11
cmp.i.v EQ
bf [265]

:[263]
push.v self.movetimer
pushi.e 2
add.i.v
pop.v.v self.movetimer
push.i 171111
setowner.e
pushi.e 1
conv.i.v
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
pushi.e 15
add.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
call.i gml_Script_lerp_ease_out(argc=4)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_x
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [265]

:[264]
pushi.e 0
pop.v.i self.movetimer
pushi.e 12
pop.v.i self.movecon

:[265]
push.v self.movecon
pushi.e 12
cmp.i.v EQ
bf [269]

:[266]
push.v self.movetimer
pushi.e 2
add.i.v
pop.v.v self.movetimer
push.i 171112
setowner.e
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
push.v self.ystart
pushi.e 135
add.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_y_origin
call.i lerp(argc=3)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_y
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [268]

:[267]
pushi.e 0
pop.v.i self.movetimer
pushi.e 13
pop.v.i self.movecon
push.i 171121
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_fadecon

:[268]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[269]
push.v self.movecon
pushi.e 13
cmp.i.v EQ
bf [272]

:[270]
push.v self.movetimer
pushi.e 2
add.i.v
pop.v.v self.movetimer
push.i 171111
setowner.e
pushi.e 2
conv.i.v
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
push.v [array]self.shieldpiece_x_origin
pushi.e 15
add.i.v
call.i gml_Script_lerp_ease_out(argc=4)
pushi.e -1
pushi.e -1
push.v self.movepiece
conv.v.i
push.v [array]self.moveorder
conv.v.i
pop.v.v [array]self.shieldpiece_x
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [272]

:[271]
pushi.e 0
pop.v.i self.movetimer
pushi.e 14
pop.v.i self.movecon

:[272]
push.v self.movecon
pushi.e 14
cmp.i.v EQ
bf [276]

:[273]
push.v self.movepiece
push.v self.shieldsize
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [275]

:[274]
pushi.e 15
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movepiece
b [276]

:[275]
push.v self.movepiece
push.e 1
add.i.v
pop.v.v self.movepiece
pushi.e 10
pop.v.i self.movecon

:[276]
push.v self.movecon
pushi.e 15
cmp.i.v EQ
bf [282]

:[277]
push.v self.movetimer
pushi.e 50
cmp.i.v LT
bf [279]

:[278]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer

:[279]
pushi.e 0
pop.v.i self.i

:[280]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [282]

:[281]
push.i 171117
setowner.e
push.v self.movetimer
pushi.e 50
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_alpha
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [280]

:[282]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [258]

:[283]
popz.i
push.v self.shieldhurt
pushi.e 1
cmp.i.v EQ
bf [291]

:[284]
push.v self.shieldhurttimer
call.i random(argc=1)
push.v self.shieldhurttimer
call.i random(argc=1)
sub.v.v
pushi.e 2
mul.i.v
pop.v.v self.shieldx
push.v self.shieldhurttimer
push.e 1
sub.i.v
pop.v.v self.shieldhurttimer
push.v self.shieldhurttimer
pushi.e 0
cmp.i.v LTE
bf [286]

:[285]
pushi.e 0
pop.v.i self.shieldhurt

:[286]
pushi.e 0
pop.v.i self.i

:[287]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [291]

:[288]
push.i 171111
setowner.e
push.v self.x
pushi.e 39
add.i.v
pushi.e 6
sub.i.v
pushi.e 12
conv.i.v
call.i irandom(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_yscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
push.v self.y
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shieldhurt
pushi.e 0
cmp.i.v EQ
bf [290]

:[289]
push.v self.x
pushi.e 39
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_x

:[290]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [287]

:[291]
push.v self.shieldhurt
pushi.e 2
cmp.i.v EQ
bf [293]

:[292]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[293]
push.v self.destroycon
pushi.e 1
cmp.i.v EQ
bf [300]

:[294]
push.v self.destroytimer
push.e 1
add.i.v
pop.v.v self.destroytimer
push.v self.destroytimer
pushi.e 4
cmp.i.v EQ
bf [296]

:[295]
pushi.e 55
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 1
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[296]
push.v self.destroytimer
pushi.e 8
cmp.i.v EQ
bf [298]

:[297]
pushi.e 55
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 1
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[298]
push.v self.destroytimer
pushi.e 12
cmp.i.v EQ
bf [300]

:[299]
pushi.e 0
pop.v.i self.destroycon

:[300]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]