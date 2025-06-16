.localvar 2 arguments
.localvar 7017 a 12189
.localvar 25243 shieldindex 12190
.localvar 25244 hptype 12191
.localvar 24647 wineheight 12192

:[0]
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
push.v 574.shieldhp
push.v 574.shieldmaxhp
div.v.v
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
cmp.v.v LTE
bf [86]

:[1]
push.v 574.shieldhp
push.v 574.shieldmaxhp
div.v.v
pop.v.v local.a
push.v self.shieldsize
pushi.e 5
cmp.i.v EQ
bf [14]

:[2]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [4]

:[3]
push.i 171117
setowner.e
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha
b [5]

:[4]
push.i 171117
setowner.e
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha

:[5]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [7]

:[6]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha
b [8]

:[7]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha

:[8]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [10]

:[9]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha
b [11]

:[10]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha

:[11]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [13]

:[12]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha
b [14]

:[13]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha

:[14]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [42]

:[15]
pushloc.v local.a
push.d 0.9
cmp.d.v LT
bf [17]

:[16]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha
b [18]

:[17]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha

:[18]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [20]

:[19]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha
b [21]

:[20]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha

:[21]
pushloc.v local.a
push.d 0.7
cmp.d.v LT
bf [23]

:[22]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha
b [24]

:[23]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha

:[24]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [26]

:[25]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha
b [27]

:[26]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha

:[27]
pushloc.v local.a
push.d 0.5
cmp.d.v LT
bf [29]

:[28]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha
b [30]

:[29]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha

:[30]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [32]

:[31]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha
b [33]

:[32]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha

:[33]
pushloc.v local.a
push.d 0.3
cmp.d.v LT
bf [35]

:[34]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha
b [36]

:[35]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha

:[36]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [38]

:[37]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha
b [39]

:[38]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha

:[39]
pushloc.v local.a
push.d 0.1
cmp.d.v LT
bf [41]

:[40]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha
b [42]

:[41]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha

:[42]
push.v self.shieldsize
pushi.e 15
cmp.i.v EQ
bf [85]

:[43]
pushloc.v local.a
push.d 0.9333333333333333
cmp.d.v LT
bf [45]

:[44]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha
b [46]

:[45]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha

:[46]
pushloc.v local.a
push.d 0.8666666666666667
cmp.d.v LT
bf [48]

:[47]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha
b [49]

:[48]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha

:[49]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [51]

:[50]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha
b [52]

:[51]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha

:[52]
pushloc.v local.a
push.d 0.7333333333333333
cmp.d.v LT
bf [54]

:[53]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha
b [55]

:[54]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha

:[55]
pushloc.v local.a
push.d 0.6666666666666666
cmp.d.v LT
bf [57]

:[56]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha
b [58]

:[57]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha

:[58]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [60]

:[59]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha
b [61]

:[60]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha

:[61]
pushloc.v local.a
push.d 0.5333333333333333
cmp.d.v LT
bf [63]

:[62]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha
b [64]

:[63]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha

:[64]
pushloc.v local.a
push.d 0.4666666666666667
cmp.d.v LT
bf [66]

:[65]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha
b [67]

:[66]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha

:[67]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [69]

:[68]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha
b [70]

:[69]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha

:[70]
pushloc.v local.a
push.d 0.3333333333333333
cmp.d.v LT
bf [72]

:[71]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_alpha
b [73]

:[72]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_alpha

:[73]
pushloc.v local.a
push.d 0.26666666666666666
cmp.d.v LT
bf [75]

:[74]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_alpha
b [76]

:[75]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_alpha

:[76]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [78]

:[77]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_alpha
b [79]

:[78]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_alpha

:[79]
pushloc.v local.a
push.d 0.13333333333333333
cmp.d.v LT
bf [81]

:[80]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_alpha
b [82]

:[81]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_alpha

:[82]
pushloc.v local.a
push.d 0.06666666666666667
cmp.d.v LT
bf [84]

:[83]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_alpha
b [85]

:[84]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_alpha

:[85]
b [170]

:[86]
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
pop.v.v local.a
push.v self.shieldsize
pushi.e 5
cmp.i.v EQ
bf [99]

:[87]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [89]

:[88]
push.i 171117
setowner.e
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha
b [90]

:[89]
push.i 171117
setowner.e
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha

:[90]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [92]

:[91]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha
b [93]

:[92]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha

:[93]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [95]

:[94]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha
b [96]

:[95]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha

:[96]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [98]

:[97]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha
b [99]

:[98]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha

:[99]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [127]

:[100]
pushloc.v local.a
push.d 0.9
cmp.d.v LT
bf [102]

:[101]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha
b [103]

:[102]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha

:[103]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [105]

:[104]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha
b [106]

:[105]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha

:[106]
pushloc.v local.a
push.d 0.7
cmp.d.v LT
bf [108]

:[107]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha
b [109]

:[108]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha

:[109]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [111]

:[110]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha
b [112]

:[111]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha

:[112]
pushloc.v local.a
push.d 0.5
cmp.d.v LT
bf [114]

:[113]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha
b [115]

:[114]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha

:[115]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [117]

:[116]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha
b [118]

:[117]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha

:[118]
pushloc.v local.a
push.d 0.3
cmp.d.v LT
bf [120]

:[119]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha
b [121]

:[120]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha

:[121]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [123]

:[122]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha
b [124]

:[123]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha

:[124]
pushloc.v local.a
push.d 0.1
cmp.d.v LT
bf [126]

:[125]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha
b [127]

:[126]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha

:[127]
push.v self.shieldsize
pushi.e 15
cmp.i.v EQ
bf [170]

:[128]
pushloc.v local.a
push.d 0.9333333333333333
cmp.d.v LT
bf [130]

:[129]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha
b [131]

:[130]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_alpha

:[131]
pushloc.v local.a
push.d 0.8666666666666667
cmp.d.v LT
bf [133]

:[132]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha
b [134]

:[133]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_alpha

:[134]
pushloc.v local.a
push.d 0.8
cmp.d.v LT
bf [136]

:[135]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha
b [137]

:[136]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_alpha

:[137]
pushloc.v local.a
push.d 0.7333333333333333
cmp.d.v LT
bf [139]

:[138]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha
b [140]

:[139]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_alpha

:[140]
pushloc.v local.a
push.d 0.6666666666666666
cmp.d.v LT
bf [142]

:[141]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha
b [143]

:[142]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_alpha

:[143]
pushloc.v local.a
push.d 0.6
cmp.d.v LT
bf [145]

:[144]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha
b [146]

:[145]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_alpha

:[146]
pushloc.v local.a
push.d 0.5333333333333333
cmp.d.v LT
bf [148]

:[147]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha
b [149]

:[148]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_alpha

:[149]
pushloc.v local.a
push.d 0.4666666666666667
cmp.d.v LT
bf [151]

:[150]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha
b [152]

:[151]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_alpha

:[152]
pushloc.v local.a
push.d 0.4
cmp.d.v LT
bf [154]

:[153]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha
b [155]

:[154]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_alpha

:[155]
pushloc.v local.a
push.d 0.3333333333333333
cmp.d.v LT
bf [157]

:[156]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_alpha
b [158]

:[157]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_alpha

:[158]
pushloc.v local.a
push.d 0.26666666666666666
cmp.d.v LT
bf [160]

:[159]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_alpha
b [161]

:[160]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_alpha

:[161]
pushloc.v local.a
push.d 0.2
cmp.d.v LT
bf [163]

:[162]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_alpha
b [164]

:[163]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_alpha

:[164]
pushloc.v local.a
push.d 0.13333333333333333
cmp.d.v LT
bf [166]

:[165]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_alpha
b [167]

:[166]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_alpha

:[167]
pushloc.v local.a
push.d 0.06666666666666667
cmp.d.v LT
bf [169]

:[168]
pushi.e 1897
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_alpha
b [170]

:[169]
pushi.e 1896
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_alpha

:[170]
push.v self.shieldalpha
push.d 0.8
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
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
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_y
pushi.e 2
add.i.v
push.v self.x
pushi.e 81
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle(argc=7)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
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
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_y
pushi.e 2
add.i.v
push.v self.x
pushi.e 81
add.i.v
push.v self.queenhandy
push.v self.queenhandx
call.i draw_triangle_colour(argc=10)
popz.v
pushi.e 0
pop.v.i self.i

:[171]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [184]

:[172]
push.i 171111
setowner.e
push.v self.x
pushi.e 40
add.i.v
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
push.v self.y
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e 1896
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [178]

:[173]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y_origin
cmp.v.v LT
bf [175]

:[174]
push.i 171112
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.shieldpiece_y
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]self.shieldpiece_y
popz.v

:[175]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y_origin
cmp.v.v GT
bf [177]

:[176]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
popz.v
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.shieldpiece_y
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]self.shieldpiece_y
popz.v

:[177]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [173]

:[178]
popz.i
push.v 574.shieldhp
pushi.e 5
cmp.i.v LTE
bt [180]

:[179]
push.v 574.shieldacthp
pushi.e 1
cmp.i.v LT
b [181]

:[180]
push.e 1

:[181]
bf [183]

:[182]
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
push.v self.y
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_image_index
pushi.e 1896
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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

:[183]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [171]

:[184]
push.v self.appearcon
pushi.e 1
cmp.i.v EQ
bf [192]

:[185]
push.v self.shieldsize
pushi.e 5
cmp.i.v EQ
bf [187]

:[186]
push.i 171110
setowner.e
pushi.e 95
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 115
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 135
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 155
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 175
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_y_origin

:[187]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [189]

:[188]
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

:[189]
push.v self.shieldsize
pushi.e 15
cmp.i.v EQ
bf [191]

:[190]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 55
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 95
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 115
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 135
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 155
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 175
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 195
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 215
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 235
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 255
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 275
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_y_origin
pushi.e 300
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.shieldpiece_y_origin

:[191]
pushi.e 0
pop.v.i self.appearcon

:[192]
push.v self.appearcon
pushi.e 2
cmp.i.v EQ
bf [197]

:[193]
pushi.e 0
pop.v.i self.i

:[194]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [196]

:[195]
push.i 171112
setowner.e
push.v self.y
pushi.e 145
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [194]

:[196]
pushi.e 0
pop.v.i self.appearcon

:[197]
push.v self.shieldhurt
pushi.e 2
cmp.i.v NEQ
bf [199]

:[198]
push.d 0.7
push.v self.shieldsiner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.d
pop.v.v self.shieldalpha

:[199]
push.v self.shieldsize
pushi.e 5
cmp.i.v EQ
bf [201]

:[200]
push.i 171119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_image_index
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_image_index

:[201]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [203]

:[202]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_image_index
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_image_index

:[203]
push.v self.shieldsize
pushi.e 15
cmp.i.v EQ
bf [205]

:[204]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_image_index
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.shieldpiece_image_index

:[205]
pushi.e 0
pop.v.i local.shieldindex
pushi.e 0
pop.v.i local.hptype
push.v 574.shieldhp
push.v 574.shieldmaxhp
div.v.v
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
cmp.v.v LTE
bf [217]

:[206]
pushi.e 0
pop.v.i local.hptype
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [210]

:[207]
push.v 574.shieldhp
push.v self.shieldhpgradual
cmp.v.v LT
bf [209]

:[208]
push.v self.shieldhpgradual
pushi.e 1
sub.i.v
pop.v.v self.shieldhpgradual

:[209]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [207]

:[210]
popz.i
push.v 574.phase
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [216]

:[211]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [215]

:[212]
push.v 574.shieldhp
push.v self.shieldhpgradual
cmp.v.v GT
bf [214]

:[213]
push.v self.shieldhpgradual
pushi.e 1
add.i.v
pop.v.v self.shieldhpgradual

:[214]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [212]

:[215]
popz.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [211]

:[216]
popz.i
push.v self.shieldhpgradual
push.v 574.shieldmaxhp
div.v.v
pushi.e 0
conv.i.v
push.v self.shieldheight
call.i lerp(argc=3)
pop.v.v local.wineheight
b [230]

:[217]
pushi.e 1
pop.v.i local.hptype
push.v self.shieldhpgradual
push.v 574.shieldactmaxhp
cmp.v.v GT
bf [219]

:[218]
push.v 574.shieldactmaxhp
pop.v.v self.shieldhpgradual

:[219]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [223]

:[220]
push.v 574.shieldacthp
push.v self.shieldhpgradual
cmp.v.v LT
bf [222]

:[221]
push.v self.shieldhpgradual
push.d 0.01
sub.d.v
pop.v.v self.shieldhpgradual

:[222]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [220]

:[223]
popz.i
push.v 574.phase
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [229]

:[224]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [228]

:[225]
push.v 574.shieldacthp
push.v self.shieldhpgradual
cmp.v.v GT
bf [227]

:[226]
push.v self.shieldhpgradual
push.d 0.01
add.d.v
pop.v.v self.shieldhpgradual

:[227]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [225]

:[228]
popz.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [224]

:[229]
popz.i
push.v self.shieldhpgradual
push.v 574.shieldactmaxhp
div.v.v
pushi.e 0
conv.i.v
push.v self.shieldheight
call.i lerp(argc=3)
pop.v.v local.wineheight

:[230]
push.v self.shaketimer
pushi.e 0
cmp.i.v GT
bf [232]

:[231]
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

:[232]
push.v self.shieldhurt
pushi.e 1
cmp.i.v EQ
bf [235]

:[233]
pushi.e 2
pop.v.i local.shieldindex
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
bf [235]

:[234]
pushi.e 0
pop.v.i self.shieldhurt

:[235]
push.v self.shieldhurt
pushi.e 2
cmp.i.v EQ
bf [237]

:[236]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[237]
push.v self.appearcon
pushi.e 0
cmp.i.v NEQ
bf [239]

:[238]
push.v self.shieldalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 7
add.i.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[239]
push.v self.shieldalpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.wineheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
push.v self.shieldx
add.v.v
push.v self.shieldheight
pushloc.v local.wineheight
sub.v.v
push.v self.sprite_width
pushloc.v local.wineheight
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.shieldalpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.shieldx
add.v.v
pushloc.v local.wineheight
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
pushi.e 1
add.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.shieldhpgradual
pushi.e 5
cmp.i.v LTE
bf [241]

:[240]
pushloc.v local.hptype
pushi.e 0
cmp.i.v EQ
b [242]

:[241]
push.e 0

:[242]
bt [247]

:[243]
push.v self.shieldhpgradual
pushi.e 1
cmp.i.v LT
bf [245]

:[244]
pushloc.v local.hptype
pushi.e 1
cmp.i.v EQ
b [246]

:[245]
push.e 0

:[246]
b [248]

:[247]
push.e 1

:[248]
bf [end]

:[249]
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
push.v self.imabouttobreak_alpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.wineheight
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
push.v self.shieldx
add.v.v
push.v self.shieldheight
pushloc.v local.wineheight
sub.v.v
push.v self.sprite_width
pushloc.v local.wineheight
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.imabouttobreak_alpha
push.i 16777215
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.shieldx
add.v.v
pushloc.v local.wineheight
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.shieldindex
pushi.e 1
add.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
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

:[end]