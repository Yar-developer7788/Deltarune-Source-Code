.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[1]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i room_restart(argc=0)
popz.v

:[3]
push.v self.drawpic
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.con_alph
pushi.e 4
mul.i.v
call.i ceil(argc=1)
pushi.e 4
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.picy
push.v self.picx
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con_alphb
pushi.e 4
mul.i.v
call.i ceil(argc=1)
pushi.e 4
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.picyb
push.v self.picxb
pushi.e 0
conv.i.v
push.v self.picb
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2464
pop.v.i self.pic
pushi.e 314
pop.v.i self.picb
pushi.e -50
pop.v.i self.picyb
push.d 3.1
pop.v.d self.con
pushi.e 0
pop.v.i self.con_alphb
pushi.e -100
pop.v.i self.contimer
pushi.e 0
pop.v.i self.chunkfade
pushi.e 1
pop.v.i self.drawpic
pushi.e 0
pop.v.i self.flamecon
pushi.e 0
pop.v.i self.flamesiner
pushi.e 1
pop.v.i self.flamealph
pushi.e 0
pop.v.i self.flamey
pushi.e 41
pop.v.i global.typer

:[7]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [84]

:[8]
push.v self.con_alph
pushi.e 1
cmp.i.v LT
bf [10]

:[9]
push.v self.contimer
pushi.e 200
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.con_alph
push.d 0.01
add.d.v
pop.v.v self.con_alph

:[13]
push.v self.flamesiner
push.e 1
add.i.v
pop.v.v self.flamesiner
push.v self.contimer
push.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 20
cmp.i.v EQ
bf [17]

:[14]
push.s "obj_legend_neo_slash_Draw_0_gml_38_0"@36837
conv.s.v
push.s "When the LIGHT is&subsumed by SHADOW"@36838
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 88
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [16]

:[15]
pushi.e 62
pop.v.i self.wx

:[16]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[17]
push.v self.contimer
pushi.e 200
cmp.i.v EQ
bf [23]

:[18]
push.v self.w
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
push.s "obj_legend_neo_slash_Draw_0_gml_46_0"@36839
conv.s.v
push.s "When the FOUNTAINS fill the sky"@36840
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 37
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [22]

:[21]
pushi.e 83
pop.v.i self.wx

:[22]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[23]
push.v self.contimer
pushi.e 200
cmp.i.v GTE
bf [25]

:[24]
push.v self.contimer
pushi.e 300
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bf [33]

:[27]
push.v self.con_alphb
pushi.e 1
cmp.i.v LT
bf [29]

:[28]
push.v self.con_alphb
push.d 0.02
add.d.v
pop.v.v self.con_alphb

:[29]
push.v self.picyb
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
push.v self.picyb
push.d 0.5
add.d.v
pop.v.v self.picyb

:[31]
push.v self.picy
pushi.e 80
cmp.i.v LT
bf [33]

:[32]
push.v self.picy
push.d 0.5
add.d.v
pop.v.v self.picy

:[33]
push.v self.contimer
pushi.e 400
cmp.i.v EQ
bf [39]

:[34]
pushi.e 1
pop.v.i self.flamecon
push.d 0.7
pop.v.d self.flamealph
pushi.e 0
pop.v.i self.wave_siner
pushbltn.v builtin.room_height
pushi.e 30
sub.i.v
pop.v.v self.flameya
pushbltn.v builtin.room_height
pop.v.v self.flameyb
pushi.e 317
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.wave_maxa
pushi.e 318
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.wave_maxb
push.v self.w
pushi.e -9
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
push.s "obj_legend_neo_slash_Draw_0_gml_69_0"@36845
conv.s.v
push.s "All will fall into CHAOS."@36846
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 63
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [38]

:[37]
pushi.e 55
pop.v.i self.wx

:[38]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[39]
push.v self.contimer
pushi.e 600
cmp.i.v EQ
bf [45]

:[40]
push.v self.w
pushi.e -9
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
push.v self.picb
pop.v.v self.pic
push.v self.picyb
pop.v.v self.picy
push.v self.picb
pop.v.v self.pic
pushi.e 0
pop.v.i self.con_alphb
pushi.e 315
pop.v.i self.picb
push.s "obj_legend_neo_slash_Draw_0_gml_80_0"@36847
conv.s.v
push.s "The TITANS will take&form from the FOUNTAINS"@36848
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 69
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [44]

:[43]
pushi.e 65
pop.v.i self.wx

:[44]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[45]
push.v self.contimer
pushi.e 600
cmp.i.v GTE
bf [47]

:[46]
push.v self.contimer
pushi.e 680
cmp.i.v LTE
b [48]

:[47]
push.e 0

:[48]
bf [51]

:[49]
push.v self.con_alphb
pushi.e 1
cmp.i.v LT
bf [51]

:[50]
push.v self.con_alphb
push.d 0.01
add.d.v
pop.v.v self.con_alphb

:[51]
push.v self.contimer
pushi.e 800
cmp.i.v EQ
bf [57]

:[52]
push.v self.picb
pop.v.v self.pic
push.v self.picyb
pop.v.v self.picy
push.v self.picb
pop.v.v self.pic
pushi.e 0
pop.v.i self.con_alphb
pushi.e 316
pop.v.i self.picb
push.v self.w
pushi.e -9
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
push.s "obj_legend_neo_slash_Draw_0_gml_99_0"@36849
conv.s.v
push.s "          And envelop&   the land in devastation."@36850
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 43
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [56]

:[55]
pushi.e 48
pop.v.i self.wx

:[56]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[57]
push.v self.contimer
pushi.e 800
cmp.i.v GTE
bf [59]

:[58]
push.v self.contimer
pushi.e 980
cmp.i.v LTE
b [60]

:[59]
push.e 0

:[60]
bf [63]

:[61]
push.v self.con_alphb
pushi.e 1
cmp.i.v LT
bf [63]

:[62]
push.v self.con_alphb
push.d 0.01
add.d.v
pop.v.v self.con_alphb

:[63]
push.v self.contimer
pushi.e 1030
cmp.i.v GTE
bf [65]

:[64]
push.v self.contimer
pushi.e 1130
cmp.i.v LTE
b [66]

:[65]
push.e 0

:[66]
bf [73]

:[67]
push.v self.w
pushi.e -9
pushenv [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
popenv [68]
pushi.e 0
pop.v.i self.con_alph
push.v self.con_alphb
pushi.e 0
cmp.i.v GT
bf [71]

:[70]
push.v self.con_alphb
push.d 0.01
sub.d.v
pop.v.v self.con_alphb

:[71]
push.v self.flamealph
pushi.e 0
cmp.i.v GT
bf [73]

:[72]
push.v self.flamealph
push.d 0.01
sub.d.v
pop.v.v self.flamealph

:[73]
push.v self.contimer
pushi.e 1160
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
pop.v.i self.contimer
pushi.e 4
pop.v.i self.con

:[75]
push.v self.flamecon
pushi.e 1
cmp.i.v EQ
bf [84]

:[76]
push.v self.flameya
pushbltn.v builtin.room_height
push.v self.wave_maxa
sub.v.v
cmp.v.v GT
bf [78]

:[77]
push.v self.flameya
push.d 1.5
sub.d.v
pop.v.v self.flameya

:[78]
push.v self.flameyb
pushbltn.v builtin.room_height
push.v self.wave_maxb
sub.v.v
cmp.v.v GT
bf [80]

:[79]
push.v self.flameyb
push.e 1
sub.i.v
pop.v.v self.flameyb

:[80]
pushi.e 2
pop.v.i self.thickness
push.v self.wave_siner
push.e 1
add.i.v
pop.v.v self.wave_siner
push.v self.flamesiner
push.e 1
add.i.v
pop.v.v self.flamesiner
push.v self.flamealph
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[81]
push.v self.i
push.v self.wave_maxa
cmp.v.v LT
bf [83]

:[82]
push.v self.i
push.v self.thickness
mul.v.v
push.v self.flameya
add.v.v
push.v self.flamesiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e -10
push.v self.wave_siner
push.v self.i
pushi.e 8
mul.i.v
add.v.v
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
add.v.i
push.v self.thickness
pushi.e 2
add.i.v
pushi.e 400
conv.i.v
push.v self.i
push.v self.thickness
mul.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 317
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.i
push.v self.thickness
add.v.v
pop.v.v self.i
b [81]

:[83]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[84]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [86]

:[85]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 319
pop.v.i self.pic
pushi.e 320
pop.v.i self.picb
pushi.e 0
pop.v.i self.con_alph
pushi.e 0
pop.v.i self.con_alphb
pushi.e 48
pop.v.i self.picx
pushi.e 60
pop.v.i self.picy
pushi.e 48
pop.v.i self.picxb
pushi.e 60
pop.v.i self.picyb
pushi.e 41
pop.v.i global.typer

:[86]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [147]

:[87]
push.v self.contimer
push.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 30
cmp.i.v EQ
bf [91]

:[88]
push.s "obj_legend_neo_slash_Draw_0_gml_167_0"@36851
conv.s.v
push.s "The surviving Darkners,&crushed by the darkness"@36852
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 69
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [90]

:[89]
pushi.e 58
pop.v.i self.wx

:[90]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[91]
push.v self.contimer
pushi.e 100
cmp.i.v LTE
bf [94]

:[92]
push.v self.con_alph
pushi.e 1
cmp.i.v LTE
bf [94]

:[93]
push.v self.con_alph
push.d 0.01
add.d.v
pop.v.v self.con_alph

:[94]
push.v self.contimer
pushi.e 240
cmp.i.v EQ
bf [100]

:[95]
push.v self.w
pushi.e -9
pushenv [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [96]
push.s "obj_legend_neo_slash_Draw_0_gml_180_0"@36853
conv.s.v
push.s "Will slowly, one by one,&turn into statues..."@36854
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 67
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [99]

:[98]
pushi.e 55
pop.v.i self.wx

:[99]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[100]
push.v self.contimer
pushi.e 240
cmp.i.v GTE
bf [102]

:[101]
push.v self.contimer
pushi.e 360
cmp.i.v LTE
b [103]

:[102]
push.e 0

:[103]
bf [106]

:[104]
push.v self.con_alphb
pushi.e 1
cmp.i.v LTE
bf [106]

:[105]
push.v self.con_alphb
push.d 0.01
add.d.v
pop.v.v self.con_alphb

:[106]
push.v self.contimer
pushi.e 420
cmp.i.v EQ
bf [112]

:[107]
push.v self.picb
pop.v.v self.pic
pushi.e 321
pop.v.i self.picb
pushi.e 0
pop.v.i self.con_alphb
push.v self.w
pushi.e -9
pushenv [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
popenv [108]
push.s "obj_legend_neo_slash_Draw_0_gml_196_0"@36855
conv.s.v
push.s "Leaving the Lightners&to fend for themselves"@36856
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 73
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [111]

:[110]
pushi.e 58
pop.v.i self.wx

:[111]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[112]
push.v self.contimer
pushi.e 420
cmp.i.v GTE
bf [114]

:[113]
push.v self.contimer
pushi.e 520
cmp.i.v LTE
b [115]

:[114]
push.e 0

:[115]
bf [118]

:[116]
push.v self.con_alphb
pushi.e 1
cmp.i.v LTE
bf [118]

:[117]
push.v self.con_alphb
push.d 0.01
add.d.v
pop.v.v self.con_alphb

:[118]
push.v self.contimer
pushi.e 600
cmp.i.v EQ
bf [124]

:[119]
push.v self.picb
pop.v.v self.pic
pushi.e 322
pop.v.i self.picb
pushi.e 0
pop.v.i self.con_alphb
push.v self.w
pushi.e -9
pushenv [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
popenv [120]
push.s "obj_legend_neo_slash_Draw_0_gml_211_0"@36857
conv.s.v
push.s "Lost eternally in an&    endless night..."@36858
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 81
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [123]

:[122]
pushi.e 69
pop.v.i self.wx

:[123]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[124]
push.v self.contimer
pushi.e 600
cmp.i.v GTE
bf [126]

:[125]
push.v self.contimer
pushi.e 700
cmp.i.v LTE
b [127]

:[126]
push.e 0

:[127]
bf [130]

:[128]
push.v self.con_alphb
pushi.e 1
cmp.i.v LTE
bf [130]

:[129]
push.v self.con_alphb
push.d 0.01
add.d.v
pop.v.v self.con_alphb

:[130]
push.v self.contimer
pushi.e 840
cmp.i.v EQ
bf [136]

:[131]
push.v self.picb
pop.v.v self.pic
pushi.e 0
pop.v.i self.con_alphb
push.v self.w
pushi.e -9
pushenv [133]

:[132]
call.i instance_destroy(argc=0)
popz.v

:[133]
popenv [132]
push.s "obj_legend_neo_slash_Draw_0_gml_225_0"@36859
conv.s.v
push.s "Is that your idea&  of paradise?"@36860
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 103
pop.v.i self.wx
push.v self.jp
conv.v.b
bf [135]

:[134]
pushi.e 90
pop.v.i self.wx

:[135]
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
push.v self.wx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[136]
push.v self.contimer
pushi.e 840
cmp.i.v GTE
bf [138]

:[137]
push.v self.con_alph
push.d 0.01
sub.d.v
pop.v.v self.con_alph

:[138]
push.v self.contimer
pushi.e 1080
cmp.i.v EQ
bf [140]

:[139]
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[140]
push.v self.contimer
pushi.e 1100
cmp.i.v EQ
bf [142]

:[141]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [147]

:[144]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [146]

:[145]
pushi.e 208
conv.i.v
call.i room_goto(argc=1)
popz.v
b [147]

:[146]
pushi.e 207
conv.i.v
call.i room_goto(argc=1)
popz.v

:[147]
push.v self.border
pushi.e 1
cmp.i.v EQ
bf [149]

:[148]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 27
conv.i.v
pushi.e 330
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 300
conv.i.v
pushi.e 59
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 300
conv.i.v
pushi.e 260
conv.i.v
pushi.e -10
conv.i.v
pushi.e 400
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 138
conv.i.v
pushi.e 330
conv.i.v
pushi.e 400
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[149]
push.v self.border
pushi.e 2
cmp.i.v EQ
bf [151]

:[150]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 482
conv.i.v
pushi.e 999
conv.i.v
pushi.e 180
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[151]
push.v self.chunkfade
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
push.v self.chunkamt
pushi.e 0
cmp.i.v GT
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.v self.chunkamt
push.v self.fadespeed
sub.v.v
pop.v.v self.chunkamt

:[156]
push.v self.chunkfade
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
push.v self.chunkamt
pushi.e 1
cmp.i.v LT
b [159]

:[158]
push.e 0

:[159]
bf [161]

:[160]
push.v self.chunkamt
push.v self.fadespeed
add.v.v
pop.v.v self.chunkamt

:[161]
push.v self.fadecolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.alph
push.v self.chunkamt
push.d 0.25
cmp.d.v GTE
bf [163]

:[162]
push.d 0.25
pop.v.d self.alph

:[163]
push.v self.chunkamt
push.d 0.5
cmp.d.v GTE
bf [165]

:[164]
push.d 0.5
pop.v.d self.alph

:[165]
push.v self.chunkamt
push.d 0.75
cmp.d.v GTE
bf [167]

:[166]
push.d 0.75
pop.v.d self.alph

:[167]
push.v self.chunkamt
pushi.e 1
cmp.i.v GTE
bf [169]

:[168]
pushi.e 1
pop.v.i self.alph

:[169]
push.v self.alph
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 330
conv.i.v
pushi.e 330
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.ingame
pushi.e 0
cmp.i.v EQ
bf [end]

:[170]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [172]

:[171]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [173]

:[172]
push.e 0

:[173]
bf [175]

:[174]
pushi.e 1
pop.v.i self.skipped
pushi.e 0
pop.v.i self.skiptimer
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.f
push.d 0.08
push.v self.f
pushi.e -9
pop.v.d [stacktop]self.fadespeed
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v

:[175]
push.v self.skipped
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
push.v self.skiptimer
pushi.e 1
add.i.v
pop.v.v self.skiptimer

:[177]
push.v self.skiptimer
pushi.e 19
cmp.i.v EQ
bf [179]

:[178]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag

:[179]
push.v self.skiptimer
pushi.e 20
cmp.i.v EQ
bf [end]

:[180]
pushi.e 241
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]