.localvar 2 arguments

:[0]
pushbltn.v builtin.os_type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.skiptimer
pushi.e 19
cmp.i.v LT
pop.v.b self.draw_screen

:[2]
push.v self.draw_screen
conv.v.b
bf [247]

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [28]

:[4]
push.v self.textimer
pushi.e 1
add.i.v
pop.v.v self.textimer
push.v self.textimer
pushi.e 6
cmp.i.v EQ
bf [6]

:[5]
pushi.e 41
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_legend_slash_Draw_0_gml_13_0"@36766
conv.s.v
push.s "Once upon a time, a LEGEND&was whispered among shadows."@36767
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
pushi.e -9
pop.v.i [stacktop]self.depth

:[6]
push.v self.textimer
pushi.e 220
cmp.i.v EQ
bf [10]

:[7]
pushi.e 64
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
push.s "obj_legend_slash_Draw_0_gml_21_0"@36768
conv.s.v
push.s "It was&a LEGEND&of HOPE."@36769
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
pushi.e -9
pop.v.i [stacktop]self.depth
push.s "obj_legend_slash_Draw_0_gml_24_0"@36770
conv.s.v
push.s "It was&a LEGEND&of DREAMS."@36771
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
pushi.e -9
pop.v.i [stacktop]self.depth

:[10]
push.v self.textimer
pushi.e 340
cmp.i.v EQ
bf [14]

:[11]
pushi.e 64
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
push.s "obj_legend_slash_Draw_0_gml_32_0"@36772
conv.s.v
push.s "It was&a LEGEND&of LIGHT."@36773
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
pushi.e -9
pop.v.i [stacktop]self.depth
push.s "obj_legend_slash_Draw_0_gml_35_0"@36774
conv.s.v
push.s "It was&a LEGEND&of DARK."@36775
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
pushi.e -9
pop.v.i [stacktop]self.depth

:[14]
push.v self.textimer
pushi.e 460
cmp.i.v EQ
bf [18]

:[15]
pushi.e 64
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
push.s "obj_legend_slash_Draw_0_gml_43_0"@36776
conv.s.v
push.s "This is the legend of&  ^3   DELTA RUNE"@36777
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
pushi.e -9
pop.v.i [stacktop]self.depth

:[18]
pushi.e 48
push.v self.yoff
add.v.i
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.ytimer
pushi.e 1
add.i.v
pop.v.v self.ytimer
push.v self.ytimer
pushi.e 4
cmp.i.v GTE
bf [20]

:[19]
push.v self.yoff
pushi.e -260
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 0
pop.v.i self.ytimer
push.v self.yoff
pushi.e 2
sub.i.v
pop.v.v self.yoff

:[23]
push.v self.yoff
pushi.e -260
cmp.i.v LTE
bf [28]

:[24]
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 40
cmp.i.v EQ
bf [26]

:[25]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_pause_sound(argc=1)
popz.v

:[26]
push.v self.contimer
pushi.e 100
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 1
pop.v.i self.chunkfade
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [33]

:[29]
pushi.e 48
push.v self.yoff
add.v.i
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 40
cmp.i.v EQ
bf [33]

:[30]
pushi.e 64
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]

:[33]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
pushi.e 2463
pop.v.i self.pic
push.d 19.656
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_set_track_position(argc=2)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_resume_sound(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.chunkfade
pushi.e 40
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_legend_slash_Draw_0_gml_98_0"@36778
conv.s.v
push.s "For millenia, LIGHT and DARK&have lived in balance^6,%"@36779
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_legend_slash_Draw_0_gml_99_0"@36780
conv.s.v
push.s "Bringing peace to the WORLD."@36781
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[35]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [42]

:[36]
pushi.e 28
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 270
cmp.i.v EQ
bf [40]

:[37]
pushi.e 64
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
push.s "obj_legend_slash_Draw_0_gml_113_0"@36782
conv.s.v
push.s "But if this harmony&were to shatter..."@36783
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[40]
push.v self.contimer
pushi.e 276
cmp.i.v GTE
bf [42]

:[41]
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.contimer
pushi.e 5
pop.v.i self.con

:[42]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [69]

:[43]
push.v self.contimer
pushi.e 200
cmp.i.v LTE
bf [45]

:[44]
pushi.e 28
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v

:[45]
pushi.e 0
pop.v.i self.con_alph
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [47]

:[46]
push.d 0.25
pop.v.d self.con_alph

:[47]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [49]

:[48]
push.d 0.5
pop.v.d self.con_alph

:[49]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [51]

:[50]
push.d 0.75
pop.v.d self.con_alph

:[51]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [53]

:[52]
pushi.e 1
pop.v.i self.con_alph

:[53]
push.v self.contimer
pushi.e 200
cmp.i.v LTE
bf [55]

:[54]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v

:[55]
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 120
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.chunkfade

:[57]
push.v self.contimer
pushi.e 130
cmp.i.v EQ
bf [61]

:[58]
pushi.e 64
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
push.s "obj_legend_slash_Draw_0_gml_151_0"@36786
conv.s.v
push.s "A terrible calamity would occur."@36787
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[61]
push.v self.contimer
pushi.e 210
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i self.chunkfade
push.d 0.2
pop.v.d self.fadespeed

:[63]
push.v self.contimer
pushi.e 230
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.chunkfade
push.d 0.03
pop.v.d self.fadespeed
push.i 16777215
pop.v.i self.fadecolor

:[65]
push.v self.contimer
pushi.e 275
cmp.i.v EQ
bf [69]

:[66]
pushi.e 64
pushenv [68]

:[67]
call.i instance_destroy(argc=0)
popz.v

:[68]
popenv [67]
push.s "obj_legend_slash_Draw_0_gml_170_0"@36788
conv.s.v
push.s "The sky will run&black with terror"@36789
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
push.d 0.05
pop.v.d self.fadespeed
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.chunkfade
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.border
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 2464
pop.v.i self.pic

:[69]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [98]

:[70]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 276
cmp.i.v GTE
bf [72]

:[71]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt

:[72]
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [74]

:[73]
push.d 0.25
pop.v.d self.con_alph

:[74]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [76]

:[75]
push.d 0.5
pop.v.d self.con_alph

:[76]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [78]

:[77]
push.d 0.75
pop.v.d self.con_alph

:[78]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [80]

:[79]
pushi.e 1
pop.v.i self.con_alph

:[80]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [84]

:[81]
pushi.e 64
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
push.s "obj_legend_slash_Draw_0_gml_205_0"@36790
conv.s.v
push.s "And the land will&crack with fear."@36791
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[84]
push.v self.contimer
pushi.e 276
cmp.i.v EQ
bf [88]

:[85]
pushi.e 64
pushenv [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
popenv [86]
push.s "obj_legend_slash_Draw_0_gml_212_0"@36792
conv.s.v
push.s "Then^1, her heart pounding..."@36793
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[88]
push.v self.contimer
pushi.e 414
cmp.i.v EQ
bf [92]

:[89]
pushi.e 64
pushenv [91]

:[90]
call.i instance_destroy(argc=0)
popz.v

:[91]
popenv [90]
push.s "obj_legend_slash_Draw_0_gml_219_0"@36794
conv.s.v
push.s "The EARTH will draw&her final breath."@36795
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[92]
push.v self.contimer
pushi.e 520
cmp.i.v EQ
bf [94]

:[93]
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[94]
push.v self.contimer
pushi.e 551
cmp.i.v EQ
bf [98]

:[95]
pushi.e 64
pushenv [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [96]
push.s "obj_legend_slash_Draw_0_gml_233_0"@36796
conv.s.v
push.s "Only then^1, shining with hope..."@36797
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 7
pop.v.i self.con
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 2465
pop.v.i self.pic

:[98]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [119]

:[99]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [103]

:[100]
pushi.e 64
pushenv [102]

:[101]
call.i instance_destroy(argc=0)
popz.v

:[102]
popenv [101]
push.s "obj_legend_slash_Draw_0_gml_253_0"@36798
conv.s.v
push.s "Three HEROES appear&at WORLDS' edge."@36799
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[103]
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 138
cmp.i.v GTE
bf [105]

:[104]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt

:[105]
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [107]

:[106]
push.d 0.25
pop.v.d self.con_alph

:[107]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [109]

:[108]
push.d 0.5
pop.v.d self.con_alph

:[109]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [111]

:[110]
push.d 0.75
pop.v.d self.con_alph

:[111]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [113]

:[112]
pushi.e 1
pop.v.i self.con_alph

:[113]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 246
cmp.i.v EQ
bf [115]

:[114]
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[115]
push.v self.contimer
pushi.e 277
cmp.i.v GTE
bf [119]

:[116]
pushi.e 64
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 2466
pop.v.i self.pic

:[119]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [157]

:[120]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 4
cmp.i.v EQ
bf [124]

:[121]
pushi.e 64
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]
push.s "obj_legend_slash_Draw_0_gml_301_0"@36800
conv.s.v
push.s "A HUMAN,"@36801
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[124]
push.v self.contimer
pushi.e 69
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_legend_slash_Draw_0_gml_309_0"@36802
conv.s.v
push.s "A MONSTER,"@36803
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 110
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[126]
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_legend_slash_Draw_0_gml_317_0"@36804
conv.s.v
push.s "And a PRINCE&FROM THE DARK."@36805
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[128]
push.v self.contimer
pushi.e 69
cmp.i.v GTE
bf [130]

:[129]
push.v self.contimer
pushi.e 138
cmp.i.v LTE
b [131]

:[130]
push.e 0

:[131]
bf [142]

:[132]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [134]

:[133]
push.d 0.25
pop.v.d self.con_alph

:[134]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [136]

:[135]
push.d 0.5
pop.v.d self.con_alph

:[136]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [138]

:[137]
push.d 0.75
pop.v.d self.con_alph

:[138]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [140]

:[139]
pushi.e 1
pop.v.i self.con_alph

:[140]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GT
bf [142]

:[141]
pushi.e 1
pop.v.i self.c_chunkamt

:[142]
push.v self.contimer
pushi.e 138
cmp.i.v GTE
bf [151]

:[143]
pushi.e 1
pop.v.i self.con_alph
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt
push.v self.c_chunkamt
push.d 1.25
cmp.d.v GTE
bf [145]

:[144]
push.d 1.25
pop.v.d self.con_alph

:[145]
push.v self.c_chunkamt
push.d 1.5
cmp.d.v GTE
bf [147]

:[146]
push.d 1.5
pop.v.d self.con_alph

:[147]
push.v self.c_chunkamt
push.d 1.75
cmp.d.v GTE
bf [149]

:[148]
push.d 1.75
pop.v.d self.con_alph

:[149]
push.v self.c_chunkamt
pushi.e 2
cmp.i.v GTE
bf [151]

:[150]
pushi.e 2
pop.v.i self.con_alph

:[151]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con_alph
pushi.e 1
sub.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 246
cmp.i.v EQ
bf [153]

:[152]
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[153]
push.v self.contimer
pushi.e 277
cmp.i.v GTE
bf [157]

:[154]
pushi.e 64
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
push.s "obj_legend_slash_Draw_0_gml_356_0"@36806
conv.s.v
push.s "Only they can seal the fountains"@36807
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 9
pop.v.i self.con
pushi.e 2467
pop.v.i self.pic

:[157]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [184]

:[158]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 276
cmp.i.v GTE
bf [160]

:[159]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt

:[160]
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [162]

:[161]
push.d 0.25
pop.v.d self.con_alph

:[162]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [164]

:[163]
push.d 0.5
pop.v.d self.con_alph

:[164]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [166]

:[165]
push.d 0.75
pop.v.d self.con_alph

:[166]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [168]

:[167]
pushi.e 1
pop.v.i self.con_alph

:[168]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [172]

:[169]
pushi.e 64
pushenv [171]

:[170]
call.i instance_destroy(argc=0)
popz.v

:[171]
popenv [170]
push.s "obj_legend_slash_Draw_0_gml_387_0"@36808
conv.s.v
push.s "And banish the ANGEL'S HEAVEN."@36809
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[172]
push.v self.contimer
pushi.e 276
cmp.i.v EQ
bf [176]

:[173]
pushi.e 64
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
push.s "obj_legend_slash_Draw_0_gml_394_0"@36810
conv.s.v
push.s "Only then will balance&be restored,"@36811
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[176]
push.v self.contimer
pushi.e 414
cmp.i.v EQ
bf [180]

:[177]
pushi.e 64
pushenv [179]

:[178]
call.i instance_destroy(argc=0)
popz.v

:[179]
popenv [178]
push.s "obj_legend_slash_Draw_0_gml_401_0"@36812
conv.s.v
push.s "And the WORLD saved&from destruction."@36813
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[180]
push.v self.contimer
pushi.e 552
cmp.i.v GTE
bf [184]

:[181]
pushi.e 0
pop.v.i self.xoff
pushi.e 0
pop.v.i self.yoff
push.d 0.02
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 10
pop.v.i self.con
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 2468
pop.v.i self.pic
pushi.e 1
pop.v.i self.border
pushi.e 0
pop.v.i self.ytimer
pushi.e 0
pop.v.i self.xtimer
pushi.e 64
pushenv [183]

:[182]
call.i instance_destroy(argc=0)
popz.v

:[183]
popenv [182]
push.s "obj_legend_slash_Draw_0_gml_426_0"@36814
conv.s.v
push.s "Today, the FOUNTAIN OF DARKNESS-"@36815
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[184]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [226]

:[185]
pushi.e 28
push.v self.yoff
add.v.i
pushi.e 60
push.v self.xoff
add.v.i
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.ytimer
pushi.e 1
add.i.v
pop.v.v self.ytimer
push.v self.ytimer
pushi.e 4
cmp.i.v GTE
bf [187]

:[186]
push.v self.yoff
pushi.e -110
cmp.i.v GT
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 0
pop.v.i self.ytimer
push.v self.yoff
pushi.e 2
sub.i.v
pop.v.v self.yoff

:[190]
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [194]

:[191]
pushi.e 64
pushenv [193]

:[192]
call.i instance_destroy(argc=0)
popz.v

:[193]
popenv [192]
push.s "obj_legend_slash_Draw_0_gml_451_0"@36816
conv.s.v
push.s "The geyser that&gives this land form-"@36817
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[194]
push.v self.contimer
pushi.e 276
cmp.i.v EQ
bf [198]

:[195]
pushi.e 64
pushenv [197]

:[196]
call.i instance_destroy(argc=0)
popz.v

:[197]
popenv [196]
push.s "obj_legend_slash_Draw_0_gml_459_0"@36818
conv.s.v
push.s "Stands tall at the&center of the kingdom."@36819
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[198]
push.v self.contimer
pushi.e 444
cmp.i.v EQ
bf [202]

:[199]
pushi.e 64
pushenv [201]

:[200]
call.i instance_destroy(argc=0)
popz.v

:[201]
popenv [200]
push.s "obj_legend_slash_Draw_0_gml_466_0"@36820
conv.s.v
push.s "But recently, another fountain&has appeared on the horizon..."@36821
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[202]
push.v self.contimer
pushi.e 640
cmp.i.v EQ
bf [206]

:[203]
pushi.e 64
pushenv [205]

:[204]
call.i instance_destroy(argc=0)
popz.v

:[205]
popenv [204]
push.s "obj_legend_slash_Draw_0_gml_473_0"@36822
conv.s.v
push.s "And with it^1, the balance of&LIGHT and DARK begins to shift..."@36823
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.w

:[206]
push.v self.contimer
pushi.e 444
cmp.i.v GTE
bf [212]

:[207]
push.v self.xtimer
pushi.e 1
add.i.v
pop.v.v self.xtimer
push.v self.xoff
pushi.e -60
cmp.i.v GT
bf [209]

:[208]
push.v self.xtimer
pushi.e 4
cmp.i.v GTE
b [210]

:[209]
push.e 0

:[210]
bf [212]

:[211]
pushi.e 0
pop.v.i self.xtimer
push.v self.xoff
pushi.e 2
sub.i.v
pop.v.v self.xoff

:[212]
push.v self.contimer
pushi.e 760
cmp.i.v EQ
bf [214]

:[213]
push.d 0.02
pop.v.d self.fadespeed
pushi.e 1
pop.v.i self.chunkfade

:[214]
push.v self.contimer
pushi.e 880
cmp.i.v EQ
bf [216]

:[215]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [219]

:[218]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.f
push.d 0.02
push.v self.f
pushi.e -9
pop.v.d [stacktop]self.fadespeed

:[219]
push.v self.contimer
pushi.e 960
cmp.i.v EQ
bf [221]

:[220]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [222]

:[221]
push.e 0

:[222]
bf [226]

:[223]
pushglb.v global.plot
pushi.e 20
cmp.i.v EQ
bf [225]

:[224]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.room_castle_front
call.i room_goto(argc=1)
popz.v
b [226]

:[225]
pushi.e 241
conv.i.v
call.i room_goto(argc=1)
popz.v

:[226]
push.v self.border
pushi.e 1
cmp.i.v EQ
bf [228]

:[227]
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

:[228]
push.v self.chunkfade
pushi.e 0
cmp.i.v EQ
bf [230]

:[229]
push.v self.chunkamt
pushi.e 0
cmp.i.v GT
b [231]

:[230]
push.e 0

:[231]
bf [233]

:[232]
push.v self.chunkamt
push.v self.fadespeed
sub.v.v
pop.v.v self.chunkamt

:[233]
push.v self.chunkfade
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
push.v self.chunkamt
pushi.e 1
cmp.i.v LT
b [236]

:[235]
push.e 0

:[236]
bf [238]

:[237]
push.v self.chunkamt
push.v self.fadespeed
add.v.v
pop.v.v self.chunkamt

:[238]
push.v self.fadecolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.alph
push.v self.chunkamt
push.d 0.25
cmp.d.v GTE
bf [240]

:[239]
push.d 0.25
pop.v.d self.alph

:[240]
push.v self.chunkamt
push.d 0.5
cmp.d.v GTE
bf [242]

:[241]
push.d 0.5
pop.v.d self.alph

:[242]
push.v self.chunkamt
push.d 0.75
cmp.d.v GTE
bf [244]

:[243]
push.d 0.75
pop.v.d self.alph

:[244]
push.v self.chunkamt
pushi.e 1
cmp.i.v GTE
bf [246]

:[245]
pushi.e 1
pop.v.i self.alph

:[246]
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

:[247]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.ingame
pushi.e 0
cmp.i.v EQ
bf [end]

:[248]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [250]

:[249]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [251]

:[250]
push.e 0

:[251]
bf [253]

:[252]
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

:[253]
push.v self.skipped
pushi.e 1
cmp.i.v EQ
bf [255]

:[254]
push.v self.skiptimer
pushi.e 1
add.i.v
pop.v.v self.skiptimer

:[255]
push.v self.skiptimer
pushi.e 19
cmp.i.v EQ
bf [257]

:[256]
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

:[257]
push.v self.skiptimer
pushi.e 20
cmp.i.v EQ
bf [end]

:[258]
pushi.e 241
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]