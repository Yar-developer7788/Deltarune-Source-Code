.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 82.x
pushi.e 20
add.i.v
pop.v.v self.checkX

:[2]
push.v self.timer
pushi.e 2
add.i.v
pop.v.v self.timer
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.timer
pushi.e 255
mod.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.c_rainbow
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.v self.c_rainbow
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
call.i merge_color(argc=3)
pop.v.v self.curColor
push.v self.curColor
call.i draw_set_color(argc=1)
popz.v
push.v self.createAndStay
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 664
conv.i.v
pushi.e 110
conv.i.v
pushi.e 594
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 704
conv.i.v
pushi.e 110
conv.i.v
pushi.e 670
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 748
conv.i.v
pushi.e 110
conv.i.v
pushi.e 710
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 796
conv.i.v
pushi.e 110
conv.i.v
pushi.e 754
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 852
conv.i.v
pushi.e 110
conv.i.v
pushi.e 802
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 928
conv.i.v
pushi.e 110
conv.i.v
pushi.e 858
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 968
conv.i.v
pushi.e 110
conv.i.v
pushi.e 934
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1050
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1000
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1106
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1056
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1188
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1138
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1242
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1194
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1282
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1248
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1356
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1314
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1380
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1362
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1436
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1386
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1488
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1442
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[4]
push.v self.createAndStay
pushi.e 1
cmp.i.v EQ
bf [104]

:[5]
push.v self.checkX
pushi.e 594
cmp.i.v GTE
bf [7]

:[6]
pushi.e 1
pop.v.i self.newcount

:[7]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [9]

:[8]
push.v self.newcount
pop.v.v self.count

:[9]
push.v self.checkX
pushi.e 670
cmp.i.v GTE
bf [11]

:[10]
pushi.e 2
pop.v.i self.newcount

:[11]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [13]

:[12]
push.v self.newcount
pop.v.v self.count

:[13]
push.v self.checkX
pushi.e 710
cmp.i.v GTE
bf [15]

:[14]
pushi.e 3
pop.v.i self.newcount

:[15]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [17]

:[16]
push.v self.newcount
pop.v.v self.count

:[17]
push.v self.checkX
pushi.e 754
cmp.i.v GTE
bf [19]

:[18]
pushi.e 4
pop.v.i self.newcount

:[19]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [21]

:[20]
push.v self.newcount
pop.v.v self.count

:[21]
push.v self.checkX
pushi.e 802
cmp.i.v GTE
bf [23]

:[22]
pushi.e 5
pop.v.i self.newcount

:[23]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [25]

:[24]
push.v self.newcount
pop.v.v self.count

:[25]
push.v self.checkX
pushi.e 858
cmp.i.v GTE
bf [27]

:[26]
pushi.e 6
pop.v.i self.newcount

:[27]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [29]

:[28]
push.v self.newcount
pop.v.v self.count

:[29]
push.v self.checkX
pushi.e 934
cmp.i.v GTE
bf [31]

:[30]
pushi.e 7
pop.v.i self.newcount

:[31]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [33]

:[32]
push.v self.newcount
pop.v.v self.count

:[33]
push.v self.checkX
pushi.e 1000
cmp.i.v GTE
bf [35]

:[34]
pushi.e 8
pop.v.i self.newcount

:[35]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [37]

:[36]
push.v self.newcount
pop.v.v self.count

:[37]
push.v self.checkX
pushi.e 1056
cmp.i.v GTE
bf [39]

:[38]
pushi.e 9
pop.v.i self.newcount

:[39]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [41]

:[40]
push.v self.newcount
pop.v.v self.count

:[41]
push.v self.checkX
pushi.e 1138
cmp.i.v GTE
bf [43]

:[42]
pushi.e 10
pop.v.i self.newcount

:[43]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [45]

:[44]
push.v self.newcount
pop.v.v self.count

:[45]
push.v self.checkX
pushi.e 1194
cmp.i.v GTE
bf [47]

:[46]
pushi.e 11
pop.v.i self.newcount

:[47]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [49]

:[48]
push.v self.newcount
pop.v.v self.count

:[49]
push.v self.checkX
pushi.e 1248
cmp.i.v GTE
bf [51]

:[50]
pushi.e 12
pop.v.i self.newcount

:[51]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [53]

:[52]
push.v self.newcount
pop.v.v self.count

:[53]
push.v self.checkX
pushi.e 1314
cmp.i.v GTE
bf [55]

:[54]
pushi.e 13
pop.v.i self.newcount

:[55]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [57]

:[56]
push.v self.newcount
pop.v.v self.count

:[57]
push.v self.checkX
pushi.e 1362
cmp.i.v GTE
bf [59]

:[58]
pushi.e 14
pop.v.i self.newcount

:[59]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [61]

:[60]
push.v self.newcount
pop.v.v self.count

:[61]
push.v self.checkX
pushi.e 1386
cmp.i.v GTE
bf [63]

:[62]
pushi.e 15
pop.v.i self.newcount

:[63]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [65]

:[64]
push.v self.newcount
pop.v.v self.count

:[65]
push.v self.checkX
pushi.e 1442
cmp.i.v GTE
bf [67]

:[66]
pushi.e 16
pop.v.i self.newcount

:[67]
push.v self.count
push.v self.newcount
cmp.v.v LT
bf [69]

:[68]
push.v self.newcount
pop.v.v self.count

:[69]
push.v self.count
pushi.e 1
cmp.i.v GTE
bf [71]

:[70]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 664
conv.i.v
pushi.e 110
conv.i.v
pushi.e 594
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[71]
push.v self.count
pushi.e 2
cmp.i.v GTE
bf [73]

:[72]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 704
conv.i.v
pushi.e 110
conv.i.v
pushi.e 670
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[73]
push.v self.count
pushi.e 3
cmp.i.v GTE
bf [75]

:[74]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 748
conv.i.v
pushi.e 110
conv.i.v
pushi.e 710
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[75]
push.v self.count
pushi.e 4
cmp.i.v GTE
bf [77]

:[76]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 796
conv.i.v
pushi.e 110
conv.i.v
pushi.e 754
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[77]
push.v self.count
pushi.e 5
cmp.i.v GTE
bf [79]

:[78]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 852
conv.i.v
pushi.e 110
conv.i.v
pushi.e 802
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[79]
push.v self.count
pushi.e 6
cmp.i.v GTE
bf [81]

:[80]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 928
conv.i.v
pushi.e 110
conv.i.v
pushi.e 858
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[81]
push.v self.count
pushi.e 7
cmp.i.v GTE
bf [83]

:[82]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 968
conv.i.v
pushi.e 110
conv.i.v
pushi.e 934
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[83]
push.v self.count
pushi.e 8
cmp.i.v GTE
bf [85]

:[84]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1050
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1000
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[85]
push.v self.count
pushi.e 9
cmp.i.v GTE
bf [87]

:[86]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1106
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1056
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[87]
push.v self.count
pushi.e 10
cmp.i.v GTE
bf [89]

:[88]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1188
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1138
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[89]
push.v self.count
pushi.e 11
cmp.i.v GTE
bf [91]

:[90]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1242
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1194
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[91]
push.v self.count
pushi.e 12
cmp.i.v GTE
bf [93]

:[92]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1282
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1248
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[93]
push.v self.count
pushi.e 13
cmp.i.v GTE
bf [95]

:[94]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1356
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1314
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[95]
push.v self.count
pushi.e 14
cmp.i.v GTE
bf [97]

:[96]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1380
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1362
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[97]
push.v self.count
pushi.e 15
cmp.i.v GTE
bf [99]

:[98]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1436
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1386
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[99]
push.v self.count
pushi.e 16
cmp.i.v GTE
bf [101]

:[100]
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1488
conv.i.v
pushi.e 110
conv.i.v
pushi.e 1442
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[101]
push.v self.count
pushi.e 16
cmp.i.v EQ
bf [104]

:[102]
pushglb.v global.plot
pushi.e 67
cmp.i.v LT
bf [104]

:[103]
pushi.e 67
pop.v.i global.plot

:[104]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[end]