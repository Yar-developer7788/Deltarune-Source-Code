.localvar 2 arguments
.localvar 6171 extra_ja_vspace 4083
.localvar 6170 font_set 4085

:[0]
b [128]

> gml_Script_scr_texttype_ch1 (locals=2, argc=0)
:[1]
pushi.e 1
pop.v.i self.textscale
pushi.e 0
pop.v.i local.extra_ja_vspace
push.s "chemg_typer"@12907
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
pushi.e -1
pop.v.i global.chemg_typer

:[3]
pushglb.v global.chemg_typer
pushglb.v global.typer
cmp.v.v NEQ
bf [5]

:[4]
pushglb.v global.typer
pop.v.v global.chemg_typer

:[5]
pushi.e 1
pop.v.b local.font_set
pushglb.v global.typer
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [54]

:[6]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [55]

:[7]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [56]

:[8]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [57]

:[9]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [58]

:[10]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [59]

:[11]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [60]

:[12]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [61]

:[13]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [62]

:[14]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [63]

:[15]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [64]

:[16]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [65]

:[17]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [66]

:[18]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [67]

:[19]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [68]

:[20]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [69]

:[21]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [70]

:[22]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [71]

:[23]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [72]

:[24]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [73]

:[25]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [74]

:[26]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [75]

:[27]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [76]

:[28]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [77]

:[29]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [78]

:[30]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [79]

:[31]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [80]

:[32]
dup.v 0
pushi.e 35
cmp.i.v EQ
bt [81]

:[33]
dup.v 0
pushi.e 36
cmp.i.v EQ
bt [82]

:[34]
dup.v 0
pushi.e 37
cmp.i.v EQ
bt [83]

:[35]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [84]

:[36]
dup.v 0
pushi.e 41
cmp.i.v EQ
bt [85]

:[37]
dup.v 0
pushi.e 42
cmp.i.v EQ
bt [86]

:[38]
dup.v 0
pushi.e 45
cmp.i.v EQ
bt [87]

:[39]
dup.v 0
pushi.e 46
cmp.i.v EQ
bt [88]

:[40]
dup.v 0
pushi.e 47
cmp.i.v EQ
bt [89]

:[41]
dup.v 0
pushi.e 48
cmp.i.v EQ
bt [90]

:[42]
dup.v 0
pushi.e 50
cmp.i.v EQ
bt [91]

:[43]
dup.v 0
pushi.e 51
cmp.i.v EQ
bt [92]

:[44]
dup.v 0
pushi.e 52
cmp.i.v EQ
bt [96]

:[45]
dup.v 0
pushi.e 53
cmp.i.v EQ
bt [100]

:[46]
dup.v 0
pushi.e 54
cmp.i.v EQ
bt [101]

:[47]
dup.v 0
pushi.e 55
cmp.i.v EQ
bt [102]

:[48]
dup.v 0
pushi.e 60
cmp.i.v EQ
bt [103]

:[49]
dup.v 0
pushi.e 666
cmp.i.v EQ
bt [104]

:[50]
dup.v 0
pushi.e 667
cmp.i.v EQ
bt [105]

:[51]
dup.v 0
pushi.e 999
cmp.i.v EQ
bt [106]

:[52]
b [107]

:[53]
b [108]

:[54]
pushi.e 0
pop.v.b local.font_set
b [108]

:[55]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[56]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 492
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[57]
pushi.e 1
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 357
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[58]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [108]

:[59]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[60]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[61]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 356
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[62]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 356
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[63]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 348
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[64]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 348
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[65]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 349
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[66]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 350
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[67]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 346
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "comicsans"@6176
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[68]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[69]
pushi.e 0
pop.v.b local.font_set
b [108]

:[70]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 347
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[71]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 344
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[72]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[73]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 355
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[74]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 355
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[75]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
pushi.e 355
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
pushi.e 7
add.i.v
push.v self.x
push.i 16777215
conv.i.v
push.s "tinynoelle"@6177
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[76]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
pushi.e 349
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
pushi.e 7
add.i.v
push.v self.x
push.i 16777215
conv.i.v
push.s "tinynoelle"@6177
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[77]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 348
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[78]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 351
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[79]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 354
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[80]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 405
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[81]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 353
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[82]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 492
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[83]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 18
conv.i.v
pushi.e 348
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[84]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 492
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[85]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 492
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[86]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 492
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[87]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 351
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [108]

:[88]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 354
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [108]

:[89]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 348
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [108]

:[90]
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 405
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
pushi.e 2
pop.v.i local.extra_ja_vspace
b [108]

:[91]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 357
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[92]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [94]

:[93]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 357
conv.i.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [95]

:[94]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 357
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v

:[95]
b [108]

:[96]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [98]

:[97]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 357
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [99]

:[98]
pushi.e 1
conv.i.v
pushi.e 36
conv.i.v
pushi.e 16
conv.i.v
pushi.e 357
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v

:[99]
b [108]

:[100]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 348
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[101]
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 9
conv.i.v
pushi.e 348
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[102]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 352
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[103]
pushi.e 0
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 492
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[104]
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
pushi.e 492
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[105]
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
pushi.e 492
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[106]
pushi.e 3
conv.i.v
pushi.e 18
conv.i.v
pushi.e 8
conv.i.v
pushi.e 489
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
push.i 16777215
conv.i.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_get_font_ch1(argc=1)
call.i gml_Script_scr_textsetup_ch1(argc=11)
popz.v
b [108]

:[107]
pushi.e 0
pop.v.b local.font_set
b [108]

:[108]
popz.v
pushloc.v local.font_set
conv.v.b
bf [110]

:[109]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [127]

:[112]
push.v self.myfont
pushi.e 10
cmp.i.v EQ
bf [116]

:[113]
push.v self.hspace
pushi.e 26
mul.i.v
pushi.e 16
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
push.v self.vspace
pushi.e 32
cmp.i.v EQ
bf [115]

:[114]
pushi.e 36
pop.v.i self.vspace

:[115]
b [126]

:[116]
push.v self.myfont
pushi.e 8
cmp.i.v EQ
bf [118]

:[117]
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
b [126]

:[118]
push.v self.myfont
pushi.e 6
cmp.i.v EQ
bf [120]

:[119]
push.d 0.5
pop.v.d self.textscale
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 3
add.i.v
pop.v.v self.hspace
b [126]

:[120]
push.v self.myfont
pushi.e 12
cmp.i.v EQ
bf [122]

:[121]
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
b [126]

:[122]
push.v self.myfont
pushi.e 7
cmp.i.v EQ
bf [124]

:[123]
push.v self.hspace
pushi.e 26
mul.i.v
pushi.e 16
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace
b [126]

:[124]
push.v self.myfont
pushi.e 9
cmp.i.v EQ
bf [126]

:[125]
push.v self.hspace
pushi.e 13
mul.i.v
pushi.e 8
conv.i.d
div.d.v
pushi.e 1
add.i.v
pop.v.v self.hspace

:[126]
push.v self.vspace
pushloc.v local.extra_ja_vspace
add.v.v
pop.v.v self.vspace

:[127]
exit.i

:[128]
push.i [function]gml_Script_scr_texttype_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_texttype_ch1
popz.v

:[end]