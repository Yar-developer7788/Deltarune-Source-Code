.localvar 2 arguments
.localvar 11951 control 3623
.localvar 11952 isString 3624
.localvar 11953 button 3625
.localvar 11955 is_dualshock 3627
.localvar 11956 button_sprite 3628
.localvar 11957 invert 3629

:[0]
b [201]

> gml_Script_scr_getbuttonsprite (locals=6, argc=2)
:[1]
push.v arg.argument0
pop.v.v local.control
push.v arg.argument1
pop.v.v local.isString
pushi.e -4
pop.v.i local.button
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bt [3]

:[2]
push.v 1112.gamepad_type
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
pop.v.b local.is_dualshock
pushi.e 758
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [10]

:[5]
pushglb.v global.typer
pushi.e 50
cmp.i.v EQ
bt [8]

:[6]
pushglb.v global.typer
pushi.e 70
cmp.i.v EQ
bt [8]

:[7]
pushglb.v global.typer
pushi.e 71
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
b [11]

:[10]
push.e 0

:[11]
pop.v.b local.invert
pushloc.v local.isString
conv.v.b
bf [55]

:[12]
pushloc.v local.control
push.s "A"@1192
cmp.s.v EQ
bf [21]

:[13]
pushi.e 3270
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2578
pop.v.i local.button_sprite
b [20]

:[15]
pushloc.v local.is_dualshock
conv.v.b
bf [20]

:[16]
pushloc.v local.invert
conv.v.b
bf [18]

:[17]
pushi.e 131
conv.i.v
b [19]

:[18]
pushi.e 2609
conv.i.v

:[19]
pop.v.v local.button_sprite

:[20]
pushloc.v local.button_sprite
ret.v

:[21]
pushloc.v local.control
push.s "D"@9480
cmp.s.v EQ
bf [30]

:[22]
pushi.e 3265
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2582
pop.v.i local.button_sprite
b [29]

:[24]
pushloc.v local.is_dualshock
conv.v.b
bf [29]

:[25]
pushloc.v local.invert
conv.v.b
bf [27]

:[26]
pushi.e 3321
conv.i.v
b [28]

:[27]
pushi.e 2610
conv.i.v

:[28]
pop.v.v local.button_sprite

:[29]
pushloc.v local.button_sprite
ret.v

:[30]
pushloc.v local.control
push.s "W"@9494
cmp.s.v EQ
bf [39]

:[31]
pushi.e 1256
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [33]

:[32]
pushi.e 2585
pop.v.i local.button_sprite
b [38]

:[33]
pushloc.v local.is_dualshock
conv.v.b
bf [38]

:[34]
pushloc.v local.invert
conv.v.b
bf [36]

:[35]
pushi.e 3277
conv.i.v
b [37]

:[36]
pushi.e 2611
conv.i.v

:[37]
pop.v.v local.button_sprite

:[38]
pushloc.v local.button_sprite
ret.v

:[39]
pushloc.v local.control
push.s "S"@9491
cmp.s.v EQ
bf [48]

:[40]
pushi.e 1921
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2594
pop.v.i local.button_sprite
b [47]

:[42]
pushloc.v local.is_dualshock
conv.v.b
bf [47]

:[43]
pushloc.v local.invert
conv.v.b
bf [45]

:[44]
pushi.e 2435
conv.i.v
b [46]

:[45]
pushi.e 2612
conv.i.v

:[46]
pop.v.v local.button_sprite

:[47]
pushloc.v local.button_sprite
ret.v

:[48]
pushloc.v local.control
push.s "Z"@9495
cmp.s.v EQ
bf [50]

:[49]
pushglb.v global.button0
pop.v.v local.button

:[50]
pushloc.v local.control
push.s "X"@5605
cmp.s.v EQ
bf [52]

:[51]
pushglb.v global.button1
pop.v.v local.button

:[52]
pushloc.v local.control
push.s "C"@9479
cmp.s.v EQ
bf [54]

:[53]
pushglb.v global.button2
pop.v.v local.button

:[54]
b [91]

:[55]
pushloc.v local.control
pop.v.v local.button
pushloc.v local.control
push.i 32783
cmp.i.v EQ
bf [64]

:[56]
pushi.e 3270
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [58]

:[57]
pushi.e 2578
pop.v.i local.button_sprite
b [63]

:[58]
pushloc.v local.is_dualshock
conv.v.b
bf [63]

:[59]
pushloc.v local.invert
conv.v.b
bf [61]

:[60]
pushi.e 131
conv.i.v
b [62]

:[61]
pushi.e 2609
conv.i.v

:[62]
pop.v.v local.button_sprite

:[63]
pushloc.v local.button_sprite
ret.v

:[64]
pushloc.v local.control
push.i 32784
cmp.i.v EQ
bf [73]

:[65]
pushi.e 3265
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [67]

:[66]
pushi.e 2582
pop.v.i local.button_sprite
b [72]

:[67]
pushloc.v local.is_dualshock
conv.v.b
bf [72]

:[68]
pushloc.v local.invert
conv.v.b
bf [70]

:[69]
pushi.e 3321
conv.i.v
b [71]

:[70]
pushi.e 2610
conv.i.v

:[71]
pop.v.v local.button_sprite

:[72]
pushloc.v local.button_sprite
ret.v

:[73]
pushloc.v local.control
push.i 32781
cmp.i.v EQ
bf [82]

:[74]
pushi.e 1256
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [76]

:[75]
pushi.e 2585
pop.v.i local.button_sprite
b [81]

:[76]
pushloc.v local.is_dualshock
conv.v.b
bf [81]

:[77]
pushloc.v local.invert
conv.v.b
bf [79]

:[78]
pushi.e 3277
conv.i.v
b [80]

:[79]
pushi.e 2611
conv.i.v

:[80]
pop.v.v local.button_sprite

:[81]
pushloc.v local.button_sprite
ret.v

:[82]
pushloc.v local.control
push.i 32782
cmp.i.v EQ
bf [91]

:[83]
pushi.e 1921
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [85]

:[84]
pushi.e 2594
pop.v.i local.button_sprite
b [90]

:[85]
pushloc.v local.is_dualshock
conv.v.b
bf [90]

:[86]
pushloc.v local.invert
conv.v.b
bf [88]

:[87]
pushi.e 2435
conv.i.v
b [89]

:[88]
pushi.e 2612
conv.i.v

:[89]
pop.v.v local.button_sprite

:[90]
pushloc.v local.button_sprite
ret.v

:[91]
pushloc.v local.button
push.i 32769
cmp.i.v EQ
bf [97]

:[92]
pushi.e 91
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [94]

:[93]
pushi.e 2606
pop.v.i local.button_sprite

:[94]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [96]

:[95]
pushi.e 2592
pop.v.i local.button_sprite

:[96]
pushloc.v local.button_sprite
ret.v

:[97]
pushloc.v local.button
push.i 32770
cmp.i.v EQ
bf [103]

:[98]
pushi.e 3332
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [100]

:[99]
pushi.e 2605
pop.v.i local.button_sprite

:[100]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [102]

:[101]
pushi.e 2591
pop.v.i local.button_sprite

:[102]
pushloc.v local.button_sprite
ret.v

:[103]
pushloc.v local.button
push.i 32771
cmp.i.v EQ
bf [109]

:[104]
pushi.e 1299
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [106]

:[105]
pushi.e 2601
pop.v.i local.button_sprite

:[106]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [108]

:[107]
pushi.e 2587
pop.v.i local.button_sprite

:[108]
pushloc.v local.button_sprite
ret.v

:[109]
pushloc.v local.button
push.i 32772
cmp.i.v EQ
bf [115]

:[110]
pushi.e 3298
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [112]

:[111]
pushi.e 2603
pop.v.i local.button_sprite

:[112]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [114]

:[113]
pushi.e 2586
pop.v.i local.button_sprite

:[114]
pushloc.v local.button_sprite
ret.v

:[115]
pushloc.v local.button
push.i 32773
cmp.i.v EQ
bf [121]

:[116]
pushi.e 1650
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [118]

:[117]
pushi.e 2607
pop.v.i local.button_sprite

:[118]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [120]

:[119]
pushi.e 2577
pop.v.i local.button_sprite

:[120]
pushloc.v local.button_sprite
ret.v

:[121]
pushloc.v local.button
push.i 32775
cmp.i.v EQ
bf [127]

:[122]
pushi.e 2330
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [124]

:[123]
pushi.e 2608
pop.v.i local.button_sprite

:[124]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [126]

:[125]
pushi.e 2588
pop.v.i local.button_sprite

:[126]
pushloc.v local.button_sprite
ret.v

:[127]
pushloc.v local.button
push.i 32774
cmp.i.v EQ
bf [133]

:[128]
pushi.e 3304
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [130]

:[129]
pushi.e 2598
pop.v.i local.button_sprite

:[130]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [132]

:[131]
pushi.e 2581
pop.v.i local.button_sprite

:[132]
pushloc.v local.button_sprite
ret.v

:[133]
pushloc.v local.button
push.i 32776
cmp.i.v EQ
bf [139]

:[134]
pushi.e 23
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [136]

:[135]
pushi.e 2599
pop.v.i local.button_sprite

:[136]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [138]

:[137]
pushi.e 2589
pop.v.i local.button_sprite

:[138]
pushloc.v local.button_sprite
ret.v

:[139]
pushloc.v local.button
push.i 32779
cmp.i.v EQ
bf [145]

:[140]
pushi.e 754
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [142]

:[141]
pushi.e 2597
pop.v.i local.button_sprite

:[142]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [144]

:[143]
pushi.e 2595
pop.v.i local.button_sprite

:[144]
pushloc.v local.button_sprite
ret.v

:[145]
pushloc.v local.button
push.i 32780
cmp.i.v EQ
bf [151]

:[146]
pushi.e 2418
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [148]

:[147]
pushi.e 2600
pop.v.i local.button_sprite

:[148]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [150]

:[149]
pushi.e 2596
pop.v.i local.button_sprite

:[150]
pushloc.v local.button_sprite
ret.v

:[151]
pushloc.v local.button
push.i 32777
cmp.i.v EQ
bf [157]

:[152]
pushi.e 3357
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [154]

:[153]
pushi.e 2602
pop.v.i local.button_sprite

:[154]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [156]

:[155]
pushi.e 2579
pop.v.i local.button_sprite

:[156]
pushloc.v local.button_sprite
ret.v

:[157]
pushloc.v local.button
push.i 32778
cmp.i.v EQ
bf [163]

:[158]
pushi.e 3305
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [160]

:[159]
pushi.e 2520
conv.i.v
ret.v

:[160]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [162]

:[161]
pushi.e 2580
pop.v.i local.button_sprite

:[162]
pushloc.v local.button_sprite
ret.v

:[163]
pushloc.v local.button
push.i 32783
cmp.i.v EQ
bf [172]

:[164]
pushi.e 3270
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [166]

:[165]
pushi.e 2578
pop.v.i local.button_sprite
b [171]

:[166]
pushloc.v local.is_dualshock
conv.v.b
bf [171]

:[167]
pushloc.v local.invert
conv.v.b
bf [169]

:[168]
pushi.e 131
conv.i.v
b [170]

:[169]
pushi.e 2609
conv.i.v

:[170]
pop.v.v local.button_sprite

:[171]
pushloc.v local.button_sprite
ret.v

:[172]
pushloc.v local.button
push.i 32784
cmp.i.v EQ
bf [181]

:[173]
pushi.e 3265
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [175]

:[174]
pushi.e 2582
pop.v.i local.button_sprite
b [180]

:[175]
pushloc.v local.is_dualshock
conv.v.b
bf [180]

:[176]
pushloc.v local.invert
conv.v.b
bf [178]

:[177]
pushi.e 3321
conv.i.v
b [179]

:[178]
pushi.e 2610
conv.i.v

:[179]
pop.v.v local.button_sprite

:[180]
pushloc.v local.button_sprite
ret.v

:[181]
pushloc.v local.button
push.i 32781
cmp.i.v EQ
bf [190]

:[182]
pushi.e 1256
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [184]

:[183]
pushi.e 2585
pop.v.i local.button_sprite
b [189]

:[184]
pushloc.v local.is_dualshock
conv.v.b
bf [189]

:[185]
pushloc.v local.invert
conv.v.b
bf [187]

:[186]
pushi.e 3277
conv.i.v
b [188]

:[187]
pushi.e 2611
conv.i.v

:[188]
pop.v.v local.button_sprite

:[189]
pushloc.v local.button_sprite
ret.v

:[190]
pushloc.v local.button
push.i 32782
cmp.i.v EQ
bf [199]

:[191]
pushi.e 1921
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [193]

:[192]
pushi.e 2594
pop.v.i local.button_sprite
b [198]

:[193]
pushloc.v local.is_dualshock
conv.v.b
bf [198]

:[194]
pushloc.v local.invert
conv.v.b
bf [196]

:[195]
pushi.e 2435
conv.i.v
b [197]

:[196]
pushi.e 2612
conv.i.v

:[197]
pop.v.v local.button_sprite

:[198]
pushloc.v local.button_sprite
ret.v

:[199]
pushloc.v local.button_sprite
ret.v

:[200]
exit.i

:[201]
push.i [function]gml_Script_scr_getbuttonsprite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getbuttonsprite
popz.v

:[end]