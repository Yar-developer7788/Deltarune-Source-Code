.localvar 2 arguments

:[0]
b [216]

> gml_Script_scr_encountersetup (locals=0, argc=1)
:[1]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e 80
push.v self.i
mul.v.i
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 396
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e 20
push.v self.i
mul.v.i
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 40
add.i.v
pushi.e 90
push.v self.i
mul.v.i
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakey
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [7]

:[5]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.i 28150270
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey

:[10]
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [13]

:[11]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [13]

:[12]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey

:[16]
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_34_0"@7626
conv.s.v
push.s "* It is known."@7627
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [103]

:[17]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [104]

:[18]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [105]

:[19]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [106]

:[20]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [109]

:[21]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [114]

:[22]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [115]

:[23]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [116]

:[24]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [117]

:[25]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [118]

:[26]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [119]

:[27]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [120]

:[28]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [121]

:[29]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [122]

:[30]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [123]

:[31]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [124]

:[32]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [125]

:[33]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [126]

:[34]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [127]

:[35]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [128]

:[36]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [133]

:[37]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [134]

:[38]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [135]

:[39]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [136]

:[40]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [137]

:[41]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [138]

:[42]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [139]

:[43]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [140]

:[44]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [141]

:[45]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [142]

:[46]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [143]

:[47]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [144]

:[48]
dup.v 0
pushi.e 50
cmp.i.v EQ
bt [145]

:[49]
dup.v 0
pushi.e 51
cmp.i.v EQ
bt [149]

:[50]
dup.v 0
pushi.e 52
cmp.i.v EQ
bt [150]

:[51]
dup.v 0
pushi.e 53
cmp.i.v EQ
bt [151]

:[52]
dup.v 0
pushi.e 54
cmp.i.v EQ
bt [152]

:[53]
dup.v 0
pushi.e 55
cmp.i.v EQ
bt [153]

:[54]
dup.v 0
pushi.e 56
cmp.i.v EQ
bt [156]

:[55]
dup.v 0
pushi.e 57
cmp.i.v EQ
bt [159]

:[56]
dup.v 0
pushi.e 58
cmp.i.v EQ
bt [160]

:[57]
dup.v 0
pushi.e 59
cmp.i.v EQ
bt [161]

:[58]
dup.v 0
pushi.e 60
cmp.i.v EQ
bt [165]

:[59]
dup.v 0
pushi.e 61
cmp.i.v EQ
bt [166]

:[60]
dup.v 0
pushi.e 62
cmp.i.v EQ
bt [169]

:[61]
dup.v 0
pushi.e 63
cmp.i.v EQ
bt [170]

:[62]
dup.v 0
pushi.e 64
cmp.i.v EQ
bt [175]

:[63]
dup.v 0
pushi.e 65
cmp.i.v EQ
bt [176]

:[64]
dup.v 0
pushi.e 66
cmp.i.v EQ
bt [177]

:[65]
dup.v 0
pushi.e 67
cmp.i.v EQ
bt [178]

:[66]
dup.v 0
pushi.e 68
cmp.i.v EQ
bt [179]

:[67]
dup.v 0
pushi.e 69
cmp.i.v EQ
bt [180]

:[68]
dup.v 0
pushi.e 70
cmp.i.v EQ
bt [181]

:[69]
dup.v 0
pushi.e 71
cmp.i.v EQ
bt [182]

:[70]
dup.v 0
pushi.e 72
cmp.i.v EQ
bt [183]

:[71]
dup.v 0
pushi.e 73
cmp.i.v EQ
bt [184]

:[72]
dup.v 0
pushi.e 74
cmp.i.v EQ
bt [185]

:[73]
dup.v 0
pushi.e 75
cmp.i.v EQ
bt [186]

:[74]
dup.v 0
pushi.e 76
cmp.i.v EQ
bt [187]

:[75]
dup.v 0
pushi.e 77
cmp.i.v EQ
bt [188]

:[76]
dup.v 0
pushi.e 78
cmp.i.v EQ
bt [189]

:[77]
dup.v 0
pushi.e 79
cmp.i.v EQ
bt [190]

:[78]
dup.v 0
pushi.e 80
cmp.i.v EQ
bt [191]

:[79]
dup.v 0
pushi.e 81
cmp.i.v EQ
bt [192]

:[80]
dup.v 0
pushi.e 82
cmp.i.v EQ
bt [193]

:[81]
dup.v 0
pushi.e 83
cmp.i.v EQ
bt [194]

:[82]
dup.v 0
pushi.e 84
cmp.i.v EQ
bt [195]

:[83]
dup.v 0
pushi.e 85
cmp.i.v EQ
bt [196]

:[84]
dup.v 0
pushi.e 86
cmp.i.v EQ
bt [197]

:[85]
dup.v 0
pushi.e 87
cmp.i.v EQ
bt [198]

:[86]
dup.v 0
pushi.e 88
cmp.i.v EQ
bt [199]

:[87]
dup.v 0
pushi.e 89
cmp.i.v EQ
bt [200]

:[88]
dup.v 0
pushi.e 90
cmp.i.v EQ
bt [201]

:[89]
dup.v 0
pushi.e 91
cmp.i.v EQ
bt [202]

:[90]
dup.v 0
pushi.e 92
cmp.i.v EQ
bt [203]

:[91]
dup.v 0
pushi.e 93
cmp.i.v EQ
bt [204]

:[92]
dup.v 0
pushi.e 94
cmp.i.v EQ
bt [205]

:[93]
dup.v 0
pushi.e 95
cmp.i.v EQ
bt [206]

:[94]
dup.v 0
pushi.e 96
cmp.i.v EQ
bt [207]

:[95]
dup.v 0
pushi.e 97
cmp.i.v EQ
bt [208]

:[96]
dup.v 0
pushi.e 98
cmp.i.v EQ
bt [209]

:[97]
dup.v 0
pushi.e 99
cmp.i.v EQ
bt [210]

:[98]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [211]

:[99]
dup.v 0
pushi.e 101
cmp.i.v EQ
bt [212]

:[100]
dup.v 0
pushi.e 102
cmp.i.v EQ
bt [213]

:[101]
dup.v 0
pushi.e 777
cmp.i.v EQ
bt [214]

:[102]
b [215]

:[103]
b [215]

:[104]
push.i 28149816
setowner.e
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_60_0"@7628
conv.s.v
push.s "* Test enemies showed up."@7629
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[105]
push.i 28149816
setowner.e
push.v self.obj_lancerboss
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
b [215]

:[106]
push.i 28149816
setowner.e
pushi.e 393
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
pushi.e 103
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [108]

:[107]
push.i 28149818
setowner.e
push.v 103.xstart
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v 103.ystart
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey

:[108]
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
b [215]

:[109]
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_98_0"@7634
conv.s.v
push.s "* Rudinn drew near!"@7635
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [111]

:[110]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_99_0"@7636
conv.s.v
push.s "* A different Rudinn from last time drew near!"@7637
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[111]
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_100_0"@7638
conv.s.v
push.s "* Assumedly another different Rudinn appeared!"@7639
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[113]
b [215]

:[114]
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_116_0"@7640
conv.s.v
push.s "* A necklace of Rudinns blocks your path."@7641
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[115]
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_132_0"@7643
conv.s.v
push.s "* Rudinn and Hathy blocked the way!"@7644
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[116]
push.i 28149816
setowner.e
push.v self.obj_smallcheckers_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_144_0"@7646
conv.s.v
push.s "* C. Round attacked violently!&* (You recall Ralsei's advice to include Susie in an ACT.)"@7647
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[117]
push.i 28149816
setowner.e
pushi.e 406
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_155_0"@7648
conv.s.v
push.s "* Clover grew close!"@7649
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[118]
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_174_0"@7650
conv.s.v
push.s "* Three Hathys blocked the way!"@7651
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[119]
push.i 28149816
setowner.e
pushi.e 399
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_188_0"@7652
conv.s.v
push.s "* Here it comes!"@7653
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[120]
push.i 28149816
setowner.e
pushi.e 405
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 405
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_201_0"@7654
conv.s.v
push.s "* Ponman drew near!"@7655
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
b [215]

:[121]
push.i 28149816
setowner.e
pushi.e 405
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 405
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 405
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_222_0"@7656
conv.s.v
push.s "* Ponman drew near!"@7655
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[122]
push.i 28149816
setowner.e
pushi.e 406
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 30
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 420
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_239_0"@7657
conv.s.v
push.s "* Clover and Hathy grew close!"@7658
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[123]
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_250_0"@7660
conv.s.v
push.s "* Rabbick slithered in the way!"@7661
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[124]
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_266_0"@7662
conv.s.v
push.s "* Rabbicks slithered in the way!"@7663
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[125]
push.i 28149816
setowner.e
push.v self.obj_bloxer_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_277_0"@7665
conv.s.v
push.s "* Bloxer assembled!"@7666
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[126]
push.i 28149816
setowner.e
push.v self.obj_bloxer_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_bloxer_enemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_293_0"@7667
conv.s.v
push.s "* Bloxers assembled!"@7668
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[127]
push.i 28149816
setowner.e
push.v self.obj_lancerboss2
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28150269
setowner.e
push.v self.xx
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_308_0"@7670
conv.s.v
push.s "* Lancer blocked the way!"@7671
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[128]
push.i 28149816
setowner.e
push.v self.obj_jigsawryenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_319_0"@7673
conv.s.v
push.s "* Jigsawry drew near!"@7674
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [130]

:[129]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_320_0"@7675
conv.s.v
push.s "* A different Jigsawry from last time drew near!"@7676
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[130]
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [132]

:[131]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_321_0"@7677
conv.s.v
push.s "* Assumedly another different Jigsawry appeared!"@7678
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[132]
b [215]

:[133]
push.i 28149816
setowner.e
push.v self.obj_jigsawryenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_jigsawryenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_jigsawryenemy
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_340_0"@7679
conv.s.v
push.s "* A board of Jigsawrys blocked the way!"@7680
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[134]
push.i 28149816
setowner.e
push.v self.obj_jigsawryenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_359_0"@7681
conv.s.v
push.s "* Smorgasboard."@7682
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[135]
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_374_0"@7683
conv.s.v
push.s "* Rabbick slithered in the way!"@7661
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[136]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 90
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 100
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 210
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
push.v self.obj_joker
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_400_0"@7685
conv.s.v
push.s "* LET THE GAMES BEGIN!"@7686
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[137]
push.i 28149816
setowner.e
pushi.e 399
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 21
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_413_0"@7687
conv.s.v
push.s "* Here it comes^1. Again."@7688
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 28150270
setowner.e
push.v self.yy
pushi.e 65
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
b [215]

:[138]
push.i 28149816
setowner.e
pushi.e 398
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 398
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_430_0"@7689
conv.s.v
push.s "* Rudinn Rangers came sparkling into view!"@7690
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[139]
push.i 28149816
setowner.e
push.v self.obj_headhathy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_headhathy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_446_0"@7692
conv.s.v
push.s "* Head Hathy blocked the way quietly!"@7693
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[140]
push.i 28149816
setowner.e
push.v self.obj_headhathy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_headhathy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_headhathy
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_465_0"@7694
conv.s.v
push.s "* Head Hathy blocked the way quietly! (x3)"@7695
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[141]
push.i 28149816
setowner.e
push.v self.obj_susieenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 19
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 520
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_lancerboss3
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 18
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_479_0"@7698
conv.s.v
push.s "* Two bad guys blocked the way!"@7699
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[142]
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_rabbick_enemy
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_500_0"@7700
conv.s.v
push.s "* Rabbicks slithered in the way!"@7663
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[143]
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_heartenemy
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
push.v self.obj_diamondenemy
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_521_0"@7701
conv.s.v
push.s "* Various guys appeared!"@7702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[144]
push.i 28149816
setowner.e
push.v self.obj_king_boss
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 25
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 70
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_533_0"@7704
conv.s.v
push.s "* King blocked the way!"@7705
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[145]
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_554_0"@7706
conv.s.v
push.s "* Ambyu-Lances beeped towards you!"@7707
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [148]

:[146]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [148]

:[147]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_559_0"@7708
conv.s.v
push.s "* Hey Kris^1, lemme show you my ultimate healing!"@7709
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[148]
b [215]

:[149]
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 490
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 190
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_568_0"@7710
conv.s.v
push.s "* Poppups popped up!"@7711
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[150]
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_585_0"@7712
conv.s.v
push.s "* Tasques crossed your path!"@7713
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[151]
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 490
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 520
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 190
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_603_0"@7714
conv.s.v
push.s "* Werewires swung in!"@7715
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[152]
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 478
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 98
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 202
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_620_0"@7716
conv.s.v
push.s "* Maice blocked the way! "@7717
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[153]
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 510
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 154
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_637_0"@7718
conv.s.v
push.s "* Virovirokun floated in!"@7719
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushglb.v global.ambush
pushi.e 2
cmp.i.v EQ
bf [155]

:[154]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_640_0"@7721
conv.s.v
push.s "* First strike!"@7722
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[155]
b [215]

:[156]
push.i 28149540
setowner.e
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e -5
pushi.e 426
pop.v.v [array]self.flag
pushi.e -5
pushi.e 541
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [158]

:[157]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 426
pop.v.v [array]self.flag

:[158]
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 394
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 7
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 490
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 74
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 394
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_661_0"@7723
conv.s.v
push.s "* Swatchlings bowed in!"@7724
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[159]
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 450
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 35
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 453
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 42
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 486
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 95
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 450
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_681_0"@7725
conv.s.v
push.s "* Tasque Manager blocks the way!"@7726
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[160]
push.i 28149816
setowner.e
pushi.e 484
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 43
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_695_0"@7727
conv.s.v
push.s "* Berdly rides in!"@7728
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[161]
push.i 28149816
setowner.e
pushi.e 574
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 48
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [163]

:[162]
push.i 28149818
setowner.e
push.v self.xx
pushi.e 470
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
b [164]

:[163]
push.i 28149818
setowner.e
push.v self.xx
pushi.e 450
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 98
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey

:[164]
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_708_0"@7729
conv.s.v
push.s "* Queen blocks the way!"@7730
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[165]
push.i 28149816
setowner.e
pushi.e 584
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 49
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 490
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 90
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 170
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_720_0"@7731
conv.s.v
push.s "* DON'T YOU WANNA BE A BIG SHOT?"@7732
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[166]
push.i 28149816
setowner.e
pushi.e 697
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [168]

:[167]
push.v self.yy
pushi.e 173
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey

:[168]
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_732_0"@7733
conv.s.v
push.s "* It's time to be a BIG SHOT!"@7734
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[169]
push.i 28149816
setowner.e
pushi.e 710
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 39
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 714
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 38
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 90
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 712
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 37
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_752_0"@7735
conv.s.v
push.s "* Sweet Cap'n Cakes block your way!"@7736
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[170]
pushi.e 970
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [174]

:[171]
pushi.e 970
pushenv [173]

:[172]
push.i 28150269
setowner.e
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey

:[173]
popenv [172]

:[174]
push.i 28149816
setowner.e
pushi.e 729
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 45
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_776_0"@7739
conv.s.v
push.s "* Thrash Machine reluctantly fights you!"@7740
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[175]
push.i 28149540
setowner.e
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=5)
pushi.e -5
pushi.e 426
pop.v.v [array]self.flag
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 432
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 24
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 488
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 142
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_791_0"@7741
conv.s.v
push.s "* Swatchlings bowed in!"@7724
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[176]
push.i 28149816
setowner.e
pushi.e 483
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 502
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 70
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 483
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 456
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 190
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_808_0"@7742
conv.s.v
push.s "* Werewerewire strongly blocks the way!"@7743
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[177]
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 172
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_817_0"@7744
conv.s.v
push.s "* Maus blocked the way! "@7745
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[178]
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 494
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_831_0"@7746
conv.s.v
push.s "* H-huh!? What's going on!?"@7747
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[179]
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_848_0"@7748
conv.s.v
push.s "* Virovirokun and Ambyu-lance are fighting each other!"@7749
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[180]
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_865_0"@7750
conv.s.v
push.s "* Virovirokun and Ambyu-lance are fighting each other!"@7749
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[181]
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 170
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_882_0"@7751
conv.s.v
push.s "* Animal house."@7752
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[182]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 406
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 47
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_892_0"@7753
conv.s.v
push.s "* Clover joins the stage!"@7754
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[183]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 848
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 42
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_901_0"@7755
conv.s.v
push.s "* It's a grazing adventure."@7756
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[184]
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 494
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_915_0"@7757
conv.s.v
push.s "\\EE* H-huh!? What's going on!?&* What are we doing!?"@7758
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[185]
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 494
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 64
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 430
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 130
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 495
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 204
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_935_0"@7759
conv.s.v
push.s "* Smorgasbord 2."@7760
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[186]
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 85
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 435
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 144
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 522
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 214
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_955_0"@7761
conv.s.v
push.s "* Werewires swung in!"@7715
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[187]
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 62
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 434
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 126
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 530
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 236
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_975_0"@7762
conv.s.v
push.s "* Werewire and Maus swung down like stringed superheroes!"@7763
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[188]
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 170
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_992_0"@7764
conv.s.v
push.s "* Ambyu-Lance and its pet appeared!"@7765
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[189]
push.i 28149540
setowner.e
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=5)
pushi.e -5
pushi.e 426
pop.v.v [array]self.flag
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 390
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 18
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 394
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1012_0"@7766
conv.s.v
push.s "* Poppup and caretakers appeared!"@7767
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[190]
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 70
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 530
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 142
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 468
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 214
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1032_0"@7768
conv.s.v
push.s "* Maice blocked the way!"@7769
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[191]
push.i 28149540
setowner.e
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=5)
pushi.e -5
pushi.e 426
pop.v.v [array]self.flag
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 410
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 18
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 482
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 466
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1052_0"@7770
conv.s.v
push.s "* Swatchling and vermin appeared!"@7771
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[192]
push.i 28149816
setowner.e
pushi.e 483
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 482
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 164
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1066_0"@7772
conv.s.v
push.s "* Werewerewire strongly blocks the way!"@7743
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[193]
push.i 28149816
setowner.e
pushi.e 485
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 46
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 470
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 144
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 84
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 522
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 214
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1076_0"@7773
conv.s.v
push.s "* Berdly blocks the way!"@7774
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[194]
push.i 28149816
setowner.e
pushi.e 761
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 44
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 450
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1090_0"@7775
conv.s.v
push.s "* Mauswheel spins into you!"@7776
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[195]
push.i 28149816
setowner.e
pushi.e 840
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 51
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 150
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 0
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1104_0"@7777
conv.s.v
push.s "* GIGA Queen blocks the way!"@7778
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[196]
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 42
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 422
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 134
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_551_0"@7779
conv.s.v
push.s "* Ambyu-Lances beeped towards you!"@7707
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[197]
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 412
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 24
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 482
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 126
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 412
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 184
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1156_0"@7780
conv.s.v
push.s "* Tasque and Co. drew near!"@7781
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[198]
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 412
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 24
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 474
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 114
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 412
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 184
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1175_0"@7782
conv.s.v
push.s "* Tasques zoomed towards you!"@7783
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[199]
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 434
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 36
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 190
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1233_0"@7784
conv.s.v
push.s "* Poppup and Virovirokun Appeared!"@7785
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[200]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 453
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 42
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 487
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1247_0"@7786
conv.s.v
push.s "* Graze!"@7787
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[201]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 476
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 70
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 454
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 168
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1263_0"@7788
conv.s.v
push.s "* Round One!"@7789
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[202]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 412
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 40
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 466
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 106
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 412
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 184
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1282_0"@7790
conv.s.v
push.s "* Round Two!"@7791
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[203]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 432
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 52
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 476
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 512
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 236
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1301_0"@7792
conv.s.v
push.s "* Round Three!"@7793
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[204]
push.i 28149540
setowner.e
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e -5
pushi.e 426
pop.v.v [array]self.flag
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 394
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 8
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 490
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 74
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 436
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 36
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 394
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1323_0"@7794
conv.s.v
push.s "* Round Four!"@7795
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[205]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 483
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 464
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 68
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 483
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 494
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 184
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1339_0"@7796
conv.s.v
push.s "* Final Round!"@7797
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[206]
push.i 28149816
setowner.e
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 33
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 502
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 144
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1351_0"@7798
conv.s.v
push.s "* Werewire appeared."@7799
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[207]
push.i 28149816
setowner.e
pushi.e 418
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 35
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_637_0"@7718
conv.s.v
push.s "* Virovirokun floated in!"@7719
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[208]
push.i 28149816
setowner.e
pushi.e 411
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 114
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1377_0"@7800
conv.s.v
push.s "* Ambyu-Lance beeps towards you!"@7801
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[209]
push.i 28149816
setowner.e
pushi.e 448
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 32
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 494
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 144
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1390_0"@7802
conv.s.v
push.s "* Tasque crossed your path!"@7803
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[210]
push.i 28149816
setowner.e
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 396
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 520
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_60_0"@7628
conv.s.v
push.s "* Test enemies showed up."@7629
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[211]
push.i 28150269
setowner.e
push.v self.xx
pushi.e 94
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 122
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 28150269
setowner.e
push.v self.xx
pushi.e 72
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 28150270
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 28149816
setowner.e
pushi.e 849
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 52
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1422_0"@7804
conv.s.v
push.s "* Jigsaw Joe jigs in!"@7805
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[212]
push.i 28149816
setowner.e
pushi.e 426
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 31
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 465
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 490
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 166
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149814
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 206
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1441_0"@7806
conv.s.v
push.s "* Poppup and Maus appeared."@7807
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[213]
push.i 28149816
setowner.e
pushi.e 51
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 53
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 530
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 51
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 53
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 448
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 168
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 28149816
setowner.e
pushi.e 51
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 53
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28149818
setowner.e
push.v self.xx
pushi.e 510
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 28149817
setowner.e
push.v self.yy
pushi.e 250
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1462_0"@7808
conv.s.v
push.s "* Pipis."@7809
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[214]
push.i 28149816
setowner.e
pushi.e 906
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
pushi.e 906
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
pushi.e 906
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 28149814
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 28150257
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1114_0"@7810
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [215]

:[215]
popz.v
exit.i

:[216]
push.i [function]gml_Script_scr_encountersetup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_encountersetup
popz.v

:[end]