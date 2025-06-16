.localvar 2 arguments

:[0]
push.v self.facechange
pushi.e 1
sub.i.v
pop.v.v self.facechange
push.v self.nowface
pushglb.v global.fc
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.facechange

:[2]
push.v self.facechange
pushi.e 0
cmp.i.v LTE
bf [190]

:[3]
pushglb.v global.fc
pushi.e 1
cmp.i.v EQ
bf [40]

:[4]
pushi.e -5
pushi.e 29
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bt [6]

:[5]
pushglb.v global.chapter
pushi.e 1
cmp.i.v LTE
b [7]

:[6]
push.e 1

:[7]
bf [35]

:[8]
pushi.e 566
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 567
pop.v.i self.face

:[10]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 568
pop.v.i self.face

:[12]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 569
pop.v.i self.face

:[14]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e 570
pop.v.i self.face

:[16]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 571
pop.v.i self.face

:[18]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
pushi.e 572
pop.v.i self.face

:[20]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [22]

:[21]
pushi.e 573
pop.v.i self.face

:[22]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [24]

:[23]
pushi.e 574
pop.v.i self.face

:[24]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [26]

:[25]
pushi.e 575
pop.v.i self.face

:[26]
pushglb.v global.fe
pushi.e 10
cmp.i.v EQ
bf [28]

:[27]
pushi.e 576
pop.v.i self.face

:[28]
pushglb.v global.fe
pushi.e 11
cmp.i.v EQ
bf [30]

:[29]
pushi.e 578
pop.v.i self.face

:[30]
pushglb.v global.fe
pushi.e 12
cmp.i.v EQ
bf [32]

:[31]
pushi.e 579
pop.v.i self.face

:[32]
pushglb.v global.fe
pushi.e 13
cmp.i.v EQ
bf [34]

:[33]
pushi.e 580
pop.v.i self.face

:[34]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
pushi.e -5
pushi.e 29
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bt [37]

:[36]
pushglb.v global.chapter
pushi.e 1
cmp.i.v GT
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
pushi.e 565
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
pushglb.v global.fc
pushi.e 2
cmp.i.v EQ
bf [49]

:[41]
pushi.e 618
pop.v.i self.face
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 620
pop.v.i self.face

:[43]
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bt [45]

:[44]
pushglb.v global.chapter
pushi.e 1
cmp.i.v GT
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
pushi.e 619
pop.v.i self.face

:[48]
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[49]
pushglb.v global.fc
pushi.e 3
cmp.i.v EQ
bf [71]

:[50]
pushi.e 581
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 582
pop.v.i self.face

:[52]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
pushi.e 583
pop.v.i self.face

:[54]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
pushi.e 584
pop.v.i self.face

:[56]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
pushi.e 585
pop.v.i self.face

:[58]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [60]

:[59]
pushi.e 586
pop.v.i self.face

:[60]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [62]

:[61]
pushi.e 587
pop.v.i self.face

:[62]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [64]

:[63]
pushi.e 588
pop.v.i self.face

:[64]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [66]

:[65]
pushi.e 589
pop.v.i self.face

:[66]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [68]

:[67]
pushi.e 590
pop.v.i self.face

:[68]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [70]

:[69]
pushi.e 591
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index

:[70]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[71]
pushglb.v global.fc
pushi.e 4
cmp.i.v EQ
bf [91]

:[72]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 29
add.i.v
push.v self.x
pushi.e 7
sub.i.v
pushi.e 0
conv.i.v
pushi.e 641
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 554
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e 555
pop.v.i self.face

:[74]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [76]

:[75]
pushi.e 556
pop.v.i self.face

:[76]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
pushi.e 557
pop.v.i self.face

:[78]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [80]

:[79]
pushi.e 558
pop.v.i self.face

:[80]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [82]

:[81]
pushi.e 559
pop.v.i self.face

:[82]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [84]

:[83]
pushi.e 560
pop.v.i self.face

:[84]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [86]

:[85]
pushi.e 561
pop.v.i self.face

:[86]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [88]

:[87]
pushi.e 562
pop.v.i self.face

:[88]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [90]

:[89]
pushi.e 563
pop.v.i self.face

:[90]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[91]
pushglb.v global.fc
pushi.e 5
cmp.i.v EQ
bf [93]

:[92]
pushi.e 621
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
pushglb.v global.fc
pushi.e 6
cmp.i.v EQ
bf [105]

:[94]
pushi.e 599
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 600
pop.v.i self.face

:[96]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
pushi.e 601
pop.v.i self.face

:[98]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [100]

:[99]
pushi.e 602
pop.v.i self.face

:[100]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [102]

:[101]
pushi.e 603
pop.v.i self.face

:[102]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [104]

:[103]
pushi.e 604
pop.v.i self.face

:[104]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[105]
pushglb.v global.fc
pushi.e 9
cmp.i.v EQ
bf [107]

:[106]
pushi.e 637
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[107]
pushglb.v global.fc
pushi.e 10
cmp.i.v EQ
bf [125]

:[108]
pushi.e 623
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 624
pop.v.i self.face

:[110]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [112]

:[111]
pushi.e 625
pop.v.i self.face

:[112]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [114]

:[113]
pushi.e 626
pop.v.i self.face

:[114]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [116]

:[115]
pushi.e 627
pop.v.i self.face

:[116]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [118]

:[117]
pushi.e 628
pop.v.i self.face

:[118]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [120]

:[119]
pushi.e 629
pop.v.i self.face

:[120]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [122]

:[121]
pushi.e 630
pop.v.i self.face

:[122]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [124]

:[123]
pushi.e 631
pop.v.i self.face

:[124]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[125]
pushglb.v global.fc
pushi.e 11
cmp.i.v EQ
bf [127]

:[126]
pushi.e 642
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[127]
pushglb.v global.fc
pushi.e 12
cmp.i.v EQ
bf [149]

:[128]
pushi.e 592
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 593
pop.v.i self.face

:[130]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [132]

:[131]
pushi.e 594
pop.v.i self.face

:[132]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [134]

:[133]
pushi.e 595
pop.v.i self.face

:[134]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [136]

:[135]
pushi.e 596
pop.v.i self.face

:[136]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [138]

:[137]
pushi.e 597
pop.v.i self.face

:[138]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [140]

:[139]
pushi.e 593
pop.v.i self.face

:[140]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [142]

:[141]
pushi.e 593
pop.v.i self.face

:[142]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [144]

:[143]
pushi.e 593
pop.v.i self.face

:[144]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [146]

:[145]
pushi.e 593
pop.v.i self.face

:[146]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
pushi.e 598
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index

:[148]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[149]
pushglb.v global.fc
pushi.e 13
cmp.i.v EQ
bf [155]

:[150]
pushi.e 605
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [152]

:[151]
pushi.e 606
pop.v.i self.face

:[152]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [154]

:[153]
pushi.e 607
pop.v.i self.face

:[154]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[155]
pushglb.v global.fc
pushi.e 14
cmp.i.v EQ
bf [175]

:[156]
pushi.e 608
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
pushi.e 609
pop.v.i self.face

:[158]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
pushi.e 610
pop.v.i self.face

:[160]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
pushi.e 611
pop.v.i self.face

:[162]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 612
pop.v.i self.face

:[164]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [166]

:[165]
pushi.e 613
pop.v.i self.face

:[166]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [168]

:[167]
pushi.e 614
pop.v.i self.face

:[168]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [170]

:[169]
pushi.e 615
pop.v.i self.face

:[170]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [172]

:[171]
pushi.e 616
pop.v.i self.face

:[172]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [174]

:[173]
pushi.e 617
pop.v.i self.face

:[174]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[175]
pushglb.v global.fc
pushi.e 15
cmp.i.v EQ
bf [177]

:[176]
pushi.e 622
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[177]
pushglb.v global.fc
pushi.e 16
cmp.i.v EQ
bf [179]

:[178]
pushi.e 632
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[179]
pushglb.v global.fc
pushi.e 17
cmp.i.v EQ
bf [181]

:[180]
pushi.e 633
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[181]
pushglb.v global.fc
pushi.e 18
cmp.i.v EQ
bf [184]

:[182]
pushi.e 635
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 326
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 4
push.v self.f
mul.v.i
sub.v.v
push.v self.x
pushi.e 10
sub.i.v
pushi.e 3
push.v self.f
mul.v.i
sub.v.v
push.v self.face_index
pushi.e 636
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[184]
pushglb.v global.fc
pushi.e 19
cmp.i.v EQ
bf [186]

:[185]
pushi.e 634
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[186]
pushglb.v global.fc
pushi.e 20
cmp.i.v EQ
bf [188]

:[187]
pushi.e 640
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[188]
pushglb.v global.fc
pushi.e 21
cmp.i.v EQ
bf [190]

:[189]
push.s "spr_face_queen"@6219
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[190]
pushglb.v global.fc
pop.v.v self.nowface

:[end]