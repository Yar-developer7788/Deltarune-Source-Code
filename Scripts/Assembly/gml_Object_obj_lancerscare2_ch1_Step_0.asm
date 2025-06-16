.localvar 2 arguments

:[0]
push.v self.mcon
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.mcon

:[2]
push.v self.mcon
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 231459
setowner.e
push.s "lancer_susie.ogg"@39171
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 2
pop.v.i self.mcon

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[5]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.d 0.5
pop.v.d self.mm
push.v self.mm
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
pushi.e 1
pop.v.i global.interact
pushi.e 3549
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
push.v 1351.x
pushi.e 100
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.sus
pushi.e 3575
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
push.v 1351.x
pushi.e 50
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.ral
pushi.e 4202
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.v self.ral
pop.v.v self.r
push.v self.sus
pop.v.v self.s
pushi.e 1493
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 1351
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
pushi.e 1407
pushenv [11]

:[10]
pushi.e 6
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[11]
popenv [10]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.mcon

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[15]
pushi.e 1
pop.v.i global.facing
pushi.e 4
pop.v.i self.con
pushi.e 1407
pushenv [17]

:[16]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[17]
popenv [16]
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x
pushi.e 1
pop.v.i 1351.visible
push.v self.k
pushi.e -9
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [22]

:[21]
push.i 231459
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 5
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_60_0"@39172
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_61_0"@39173
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_62_0"@39174
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[22]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [24]

:[23]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[27]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
pushi.e 3587
pop.v.i self.sprite_index
pushi.e 9
pop.v.i self.con
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[29]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_84_0"@39175
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_85_0"@39176
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_86_0"@39177
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 11
pop.v.i self.con

:[31]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [33]

:[32]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 3590
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 3595
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bucket
pushi.e -4
push.v self.bucket
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 10
add.i.v
push.v self.bucket
pushi.e -9
pop.v.v [stacktop]self.depth
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 455
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 3594
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.lightning
pushi.e 3
push.v self.lightning
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i self.ctimer

:[36]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [49]

:[37]
push.v self.mm
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.mm
push.d 0.05
sub.d.v
pop.v.v self.mm
b [40]

:[39]
pushi.e 0
pop.v.i self.mm

:[40]
push.v self.mm
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.lightning
pushi.e -9
pushenv [42]

:[41]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[42]
popenv [41]
push.v self.ctimer
pushi.e 1
add.i.v
pop.v.v self.ctimer
push.v self.ctimer
pushi.e 20
cmp.i.v GTE
bf [44]

:[43]
pushi.e 0
push.v self.bucket
pushi.e -9
pop.v.i [stacktop]self.hspeed

:[44]
push.v self.ctimer
pushi.e 60
cmp.i.v GTE
bf [46]

:[45]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 3587
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 13
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[49]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [51]

:[50]
push.i 231459
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_137_0"@39178
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_139_0"@39179
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_141_0"@39180
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_142_0"@39181
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 16
pop.v.i self.con

:[51]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [53]

:[52]
pushi.e 15
pop.v.i self.con
push.i 231459
setowner.e
push.s "lancer.ogg"@20915
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[53]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [55]

:[54]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [60]

:[57]
push.v self.sus
pushi.e -9
pushenv [59]

:[58]
pushi.e 3546
pop.v.i self.sprite_index

:[59]
popenv [58]
pushi.e 17
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[60]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [64]

:[61]
push.v self.sus
pushi.e -9
pushenv [63]

:[62]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[63]
popenv [62]
pushi.e 19
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[64]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [68]

:[65]
push.v self.sus
pushi.e -9
pushenv [67]

:[66]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[67]
popenv [66]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_181_0"@39182
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_183_0"@39183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_185_0"@39184
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_186_0"@39185
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_187_0"@39186
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_188_0"@39187
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_189_0"@39188
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_191_0"@39189
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_193_0"@39190
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_195_0"@39191
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_196_0"@39192
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_198_0"@39193
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]self.msg
pushi.e 25
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[68]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [86]

:[69]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [86]

:[70]
push.v 1331.msgno
pushi.e 4
cmp.i.v EQ
bf [74]

:[71]
push.v self.sus
pushi.e -9
pushenv [73]

:[72]
pushi.e 3553
pop.v.i self.sprite_index

:[73]
popenv [72]

:[74]
push.v 1331.msgno
pushi.e 5
cmp.i.v EQ
bf [78]

:[75]
push.v self.sus
pushi.e -9
pushenv [77]

:[76]
pushi.e 3549
pop.v.i self.sprite_index

:[77]
popenv [76]

:[78]
push.v 1331.msgno
pushi.e 6
cmp.i.v EQ
bf [82]

:[79]
push.v self.sus
pushi.e -9
pushenv [81]

:[80]
pushi.e 3553
pop.v.i self.sprite_index

:[81]
popenv [80]

:[82]
push.v 1331.msgno
pushi.e 8
cmp.i.v EQ
bf [86]

:[83]
push.v self.sus
pushi.e -9
pushenv [85]

:[84]
pushi.e 3549
pop.v.i self.sprite_index

:[85]
popenv [84]

:[86]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [88]

:[87]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [93]

:[90]
push.v self.sus
pushi.e -9
pushenv [92]

:[91]
pushi.e 3553
pop.v.i self.sprite_index

:[92]
popenv [91]
pushi.e 26
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[93]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [97]

:[94]
push.v self.sus
pushi.e -9
pushenv [96]

:[95]
pushi.e 3549
pop.v.i self.sprite_index

:[96]
popenv [95]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_226_0"@39194
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_228_0"@39195
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_229_0"@39196
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_231_0"@39197
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 60
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[97]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [99]

:[98]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 61
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[102]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [104]

:[103]
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_245_0"@39198
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerscare2_slash_Step_0_gml_246_0"@39199
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_248_0"@39200
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_250_0"@39201
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_252_0"@39202
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 63
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[104]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [106]

:[105]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fd
pushi.e 64
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[109]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [111]

:[110]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.bucket
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
sub.i.v
pop.v.v 1351.x
push.v self.bucket
pushi.e -9
push.v [stacktop]self.x
pushi.e 100
sub.i.v
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.bucket
pushi.e -9
push.v [stacktop]self.x
pushi.e 150
sub.i.v
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 66
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[111]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [115]

:[112]
push.v self.fd
pushi.e -9
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 1465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fi
pushi.e 67
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[115]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [117]

:[116]
pushi.e 0
pop.v.i global.fe
pushi.e 175
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 28
pop.v.i self.con

:[117]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [119]

:[118]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
pushi.e 16
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.image_speed
push.v self.bucket
pushi.e -9
pushenv [123]

:[122]
pushi.e 16
pop.v.i self.hspeed

:[123]
popenv [122]
pushi.e 455
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 3590
pop.v.i self.sprite_index
pushi.e 36
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[124]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [126]

:[125]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_free_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_311_0"@39204
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 31
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[126]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [128]

:[127]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [129]

:[128]
push.e 0

:[129]
bf [133]

:[130]
push.v self.sus
pushi.e -9
pushenv [132]

:[131]
pushi.e 3546
pop.v.i self.sprite_index
pushi.e -6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[132]
popenv [131]
pushi.e 32
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[133]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [137]

:[134]
push.v self.sus
pushi.e -9
pushenv [136]

:[135]
pushi.e 3549
pop.v.i self.sprite_index
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[136]
popenv [135]
pushi.e 34
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[137]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [139]

:[138]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerscare2_slash_Step_0_gml_343_0"@39205
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 37
pop.v.i self.con

:[139]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [141]

:[140]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [142]

:[141]
push.e 0

:[142]
bf [end]

:[143]
pushi.e 1404
pushenv [145]

:[144]
pushi.e 1
pop.v.i self.visible

:[145]
popenv [144]
push.v self.sus
pop.v.v self.s
push.v self.ral
pop.v.v self.r
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
call.i gml_Script_scr_unmarkify_caterpillar_ch1(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 38
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushglb.v global.plot
pushi.e 55
cmp.i.v LTE
bf [147]

:[146]
pushi.e 55
pop.v.i global.plot

:[147]
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v

:[end]