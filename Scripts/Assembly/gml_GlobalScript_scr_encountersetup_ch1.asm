.localvar 2 arguments

:[0]
b [92]

> gml_Script_scr_encountersetup_ch1 (locals=0, argc=1)
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
push.i 118458877
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.heromakex
push.i 118458878
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
push.i 118458424
setowner.e
pushi.e 1607
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e 80
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
push.i 118458878
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
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [49]

:[17]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [50]

:[18]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [51]

:[19]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [52]

:[20]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [55]

:[21]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [60]

:[22]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [61]

:[23]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [62]

:[24]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [63]

:[25]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [64]

:[26]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [65]

:[27]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [66]

:[28]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [67]

:[29]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [68]

:[30]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [69]

:[31]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [70]

:[32]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [71]

:[33]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [72]

:[34]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [73]

:[35]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [74]

:[36]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [79]

:[37]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [80]

:[38]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [81]

:[39]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [82]

:[40]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [83]

:[41]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [84]

:[42]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [85]

:[43]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [86]

:[44]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [87]

:[45]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [88]

:[46]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [89]

:[47]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [90]

:[48]
b [91]

:[49]
b [91]

:[50]
push.i 118458424
setowner.e
pushi.e 1567
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1567
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
b [91]

:[51]
push.i 118458424
setowner.e
pushi.e 1607
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
b [91]

:[52]
push.i 118458424
setowner.e
pushi.e 1565
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
pushi.e 1412
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [54]

:[53]
push.i 118458426
setowner.e
push.v 1412.xstart
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v 1412.ystart
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey

:[54]
push.i 118458422
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
b [91]

:[55]
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_82_0"@13232
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [57]

:[56]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_83_0"@13233
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[57]
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_84_0"@13234
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[59]
b [91]

:[60]
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_100_0"@7638
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[61]
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_116_0"@7640
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[62]
push.i 118458424
setowner.e
pushi.e 1618
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_128_0"@13235
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[63]
push.i 118458424
setowner.e
pushi.e 1614
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_139_0"@13236
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[64]
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_158_0"@13237
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[65]
push.i 118458424
setowner.e
pushi.e 1582
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_172_0"@13238
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[66]
push.i 118458424
setowner.e
pushi.e 1589
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1589
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_185_0"@13239
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
b [91]

:[67]
push.i 118458424
setowner.e
pushi.e 1589
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1589
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1589
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_206_0"@13240
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[68]
push.i 118458424
setowner.e
pushi.e 1614
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 30
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 420
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_223_0"@13241
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[69]
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_234_0"@13242
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[70]
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_250_0"@7660
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[71]
push.i 118458424
setowner.e
pushi.e 1604
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_261_0"@13243
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[72]
push.i 118458424
setowner.e
pushi.e 1604
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1604
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 14
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_277_0"@7665
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[73]
push.i 118458424
setowner.e
pushi.e 1608
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458877
setowner.e
push.v self.xx
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_292_0"@13244
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[74]
push.i 118458424
setowner.e
pushi.e 1581
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_303_0"@13245
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [76]

:[75]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_304_0"@13246
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[76]
pushi.e -5
pushi.e 500
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_305_0"@13247
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[78]
b [91]

:[79]
push.i 118458424
setowner.e
pushi.e 1581
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1581
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1581
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_324_0"@13248
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[80]
push.i 118458424
setowner.e
pushi.e 1581
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_343_0"@13249
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[81]
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_358_0"@13250
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[82]
push.i 118458877
setowner.e
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakex
push.i 118458878
setowner.e
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
push.i 118458877
setowner.e
push.v self.xx
pushi.e 90
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakex
push.i 118458878
setowner.e
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.heromakey
push.i 118458877
setowner.e
push.v self.xx
pushi.e 100
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakex
push.i 118458878
setowner.e
push.v self.yy
pushi.e 210
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.heromakey
push.i 118458424
setowner.e
pushi.e 1613
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_384_0"@13251
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[83]
push.i 118458424
setowner.e
pushi.e 1582
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 21
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_397_0"@13252
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 118458878
setowner.e
push.v self.yy
pushi.e 65
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.heromakey
b [91]

:[84]
push.i 118458424
setowner.e
pushi.e 1579
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1579
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_414_0"@13253
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[85]
push.i 118458424
setowner.e
pushi.e 1617
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1617
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_430_0"@7689
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[86]
push.i 118458424
setowner.e
pushi.e 1617
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1617
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1617
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_449_0"@13254
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[87]
push.i 118458424
setowner.e
pushi.e 1610
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 19
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 520
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1611
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 18
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458422
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_463_0"@13255
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[88]
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1602
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_484_0"@13256
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[89]
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1616
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monstermakey
push.i 118458424
setowner.e
pushi.e 1609
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monstermakey
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_505_0"@13257
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[90]
push.i 118458424
setowner.e
pushi.e 1612
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstancetype
push.i 118458422
setowner.e
pushi.e 25
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstertype
push.i 118458426
setowner.e
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakex
push.i 118458425
setowner.e
push.v self.yy
pushi.e 70
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monstermakey
push.i 118458422
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
push.i 118458865
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_517_0"@13258
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [91]

:[91]
popz.v
exit.i

:[92]
push.i [function]gml_Script_scr_encountersetup_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_encountersetup_ch1
popz.v

:[end]