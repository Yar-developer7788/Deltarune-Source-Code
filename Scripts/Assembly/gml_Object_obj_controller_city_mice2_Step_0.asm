.localvar 2 arguments

:[0]
push.v self.victory
pushi.e 0
cmp.i.v EQ
bf [178]

:[1]
push.v self.weird
pushi.e 0
cmp.i.v EQ
bf [18]

:[2]
push.v self.con
pushi.e -2
cmp.i.v EQ
bf [18]

:[3]
push.v self.icon
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v 82.x
pushi.e 278
cmp.i.v GTE
b [6]

:[5]
push.e 0

:[6]
bf [11]

:[7]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.noeX
pushi.e 0
pop.v.i self.noeY
push.v 82.x
pop.v.v self.krX
push.v 82.y
pop.v.v self.krY
pushi.e 276
pushenv [10]

:[8]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [10]

:[9]
push.v self.x
pop.v.v other.noeX
push.v self.y
pop.v.v other.noeY

:[10]
popenv [8]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1
pop.v.i self.icon

:[11]
push.v self.icon
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e -999
pop.v.i self.icon
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 246
conv.i.v
pushi.e 410
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 38
conv.i.v
pushi.e 270
conv.i.v
pushi.e 448
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_25_0"@37309
conv.s.v
push.s "\\E1* Looks like another electric wall./%"@37310
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 270
conv.i.v
pushi.e 678
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 228
conv.i.v
pushi.e 678
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_32_0"@37311
conv.s.v
push.s "\\E5* Huh? This hole has a switch inside of it.../"@37312
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_33_0"@37313
conv.s.v
push.s "\\E4* Maybe we could try to put something inside...?/%"@37314
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 38
conv.i.v
pushi.e 228
conv.i.v
pushi.e 468
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_39_0"@37315
conv.s.v
push.s "\\E0* What do you think^1, Kris?/%"@37316
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 2
conv.i.v
push.s "icon"@5832
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[13]
push.v self.icon
pushi.e 2
cmp.i.v EQ
bf [18]

:[14]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.icon
pushi.e 319
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[15]
pushi.e 319
pushenv [17]

:[16]
pushi.e 1
pop.v.b self.start
pushi.e 1
pop.v.b self.fade_in

:[17]
popenv [16]

:[18]
push.v self.weird
pushi.e 1
cmp.i.v EQ
bf [178]

:[19]
push.v self.con
pushi.e -2
cmp.i.v EQ
bf [178]

:[20]
push.v self.icon
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v 82.x
pushi.e 278
cmp.i.v GTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1
pop.v.i self.icon

:[25]
push.v self.icon
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e -9999
pop.v.i self.icon
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 48
conv.i.v
pushi.e 240
conv.i.v
pushi.e 410
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 282
conv.i.v
pushi.e 424
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 16
conv.i.v
pushi.e 222
conv.i.v
pushi.e 484
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
pushi.e 2
conv.i.v
push.s "icon"@5832
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[27]
push.v self.icon
pushi.e 2
cmp.i.v EQ
bf [31]

:[28]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield
pushi.e 276
pushenv [30]

:[29]
pushi.e 484
pop.v.i self.x
pushi.e 222
pop.v.i self.y
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 1205
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon
pushi.e 0
pop.v.i self.timer

:[31]
push.v self.icon
pushi.e 4
cmp.i.v EQ
bf [33]

:[32]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [34]

:[33]
push.e 0

:[34]
bf [59]

:[35]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [41]

:[36]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 82
pushenv [38]

:[37]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 40
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[38]
popenv [37]
pushi.e 276
pushenv [40]

:[39]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v other.noellemarker
pushi.e 0
pop.v.b self.visible

:[40]
popenv [39]
push.v self.noellemarker
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[41]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [45]

:[42]
push.v self.noellemarker
pushi.e -9
pushenv [44]

:[43]
push.d 0.25
pop.v.d self.image_speed
pushi.e 30
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[44]
popenv [43]

:[45]
push.v self.timer
pushi.e 35
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_index

:[47]
push.v self.timer
pushi.e 41
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
pop.v.i 82.fun

:[49]
push.v self.timer
pushi.e 42
cmp.i.v EQ
bf [53]

:[50]
pushi.e 276
pushenv [52]

:[51]
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.y
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_setxy(argc=2)
popz.v
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_caterpillar_facing(argc=1)
popz.v

:[52]
popenv [51]

:[53]
push.v self.timer
pushi.e 49
cmp.i.v EQ
bf [57]

:[54]
pushi.e 276
pushenv [56]

:[55]
pushi.e 1
pop.v.b self.visible

:[56]
popenv [55]
push.v self.noellemarker
call.i gml_Script_safe_delete(argc=1)
popz.v

:[57]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1224
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon
pushi.e 0
pop.v.i self.timer

:[59]
push.v self.icon
pushi.e 6
cmp.i.v EQ
bf [61]

:[60]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [87]

:[63]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [69]

:[64]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 82
pushenv [66]

:[65]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 40
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[66]
popenv [65]
pushi.e 276
pushenv [68]

:[67]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v other.noellemarker
pushi.e 0
pop.v.b self.visible

:[68]
popenv [67]
push.v self.noellemarker
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[69]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [73]

:[70]
push.v self.noellemarker
pushi.e -9
pushenv [72]

:[71]
push.d 0.25
pop.v.d self.image_speed
pushi.e 30
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[72]
popenv [71]

:[73]
push.v self.timer
pushi.e 35
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_index

:[75]
push.v self.timer
pushi.e 41
cmp.i.v EQ
bf [77]

:[76]
pushi.e 0
pop.v.i 82.fun

:[77]
push.v self.timer
pushi.e 42
cmp.i.v EQ
bf [81]

:[78]
pushi.e 276
pushenv [80]

:[79]
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.y
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_setxy(argc=2)
popz.v
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_caterpillar_facing(argc=1)
popz.v

:[80]
popenv [79]

:[81]
push.v self.timer
pushi.e 49
cmp.i.v EQ
bf [85]

:[82]
pushi.e 276
pushenv [84]

:[83]
pushi.e 1
pop.v.b self.visible

:[84]
popenv [83]
push.v self.noellemarker
call.i gml_Script_safe_delete(argc=1)
popz.v

:[85]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1226
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon
pushi.e 0
pop.v.i self.timer

:[87]
push.v self.icon
pushi.e 8
cmp.i.v EQ
bf [89]

:[88]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [115]

:[91]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [97]

:[92]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 82
pushenv [94]

:[93]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 40
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[94]
popenv [93]
pushi.e 276
pushenv [96]

:[95]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v other.noellemarker
pushi.e 0
pop.v.b self.visible

:[96]
popenv [95]
push.v self.noellemarker
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[97]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [101]

:[98]
push.v self.noellemarker
pushi.e -9
pushenv [100]

:[99]
push.d 0.25
pop.v.d self.image_speed
pushi.e 30
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[100]
popenv [99]

:[101]
push.v self.timer
pushi.e 35
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_index

:[103]
push.v self.timer
pushi.e 41
cmp.i.v EQ
bf [105]

:[104]
pushi.e 0
pop.v.i 82.fun

:[105]
push.v self.timer
pushi.e 42
cmp.i.v EQ
bf [109]

:[106]
pushi.e 276
pushenv [108]

:[107]
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.y
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_setxy(argc=2)
popz.v
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_caterpillar_facing(argc=1)
popz.v

:[108]
popenv [107]

:[109]
push.v self.timer
pushi.e 49
cmp.i.v EQ
bf [113]

:[110]
pushi.e 276
pushenv [112]

:[111]
pushi.e 1
pop.v.b self.visible

:[112]
popenv [111]
push.v self.noellemarker
call.i gml_Script_safe_delete(argc=1)
popz.v

:[113]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [115]

:[114]
pushi.e 1228
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon
pushi.e 0
pop.v.i self.timer

:[115]
push.v self.icon
pushi.e 10
cmp.i.v EQ
bf [117]

:[116]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [118]

:[117]
push.e 0

:[118]
bf [143]

:[119]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [125]

:[120]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 82
pushenv [122]

:[121]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 40
conv.i.v
push.v self.y
pushi.e 716
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[122]
popenv [121]
pushi.e 276
pushenv [124]

:[123]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v other.noellemarker
pushi.e 0
pop.v.b self.visible

:[124]
popenv [123]
push.v self.noellemarker
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[125]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [129]

:[126]
push.v self.noellemarker
pushi.e -9
pushenv [128]

:[127]
push.d 0.25
pop.v.d self.image_speed
pushi.e 30
conv.i.v
push.v self.y
pushi.e 760
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[128]
popenv [127]

:[129]
push.v self.timer
pushi.e 35
cmp.i.v EQ
bf [131]

:[130]
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_index

:[131]
push.v self.timer
pushi.e 41
cmp.i.v EQ
bf [133]

:[132]
pushi.e 0
pop.v.i 82.fun

:[133]
push.v self.timer
pushi.e 42
cmp.i.v EQ
bf [137]

:[134]
pushi.e 276
pushenv [136]

:[135]
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.y
push.v other.noellemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_setxy(argc=2)
popz.v
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_caterpillar_facing(argc=1)
popz.v

:[136]
popenv [135]

:[137]
push.v self.timer
pushi.e 49
cmp.i.v EQ
bf [141]

:[138]
pushi.e 276
pushenv [140]

:[139]
pushi.e 1
pop.v.b self.visible

:[140]
popenv [139]
push.v self.noellemarker
call.i gml_Script_safe_delete(argc=1)
popz.v

:[141]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1230
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon
pushi.e 0
pop.v.i self.timer

:[143]
push.v self.icon
pushi.e 12
cmp.i.v EQ
bf [145]

:[144]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [146]

:[145]
push.e 0

:[146]
bf [165]

:[147]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [149]

:[148]
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fadeout
pushi.e 100
push.v self.fadeout
pushi.e -9
pop.v.i [stacktop]self.depth

:[149]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 45
cmp.i.v EQ
bf [159]

:[150]
pushi.e 1
conv.i.v
call.i gml_Script_scr_camerareset(argc=1)
popz.v
pushi.e 252
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1165
pushenv [152]

:[151]
pushi.e 0
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[152]
popenv [151]
pushi.e 1182
pushenv [154]

:[153]
pushi.e 1
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[154]
popenv [153]
pushi.e 287
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 708
pop.v.i 82.x
pushi.e 258
pop.v.i 82.y
pushi.e 276
pushenv [158]

:[157]
pushi.e 760
pop.v.i self.x
pushi.e 240
pop.v.i self.y
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[158]
popenv [157]

:[159]
push.v self.timer
pushi.e 90
cmp.i.v EQ
bf [163]

:[160]
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fadein
push.v self.fadeout
pushi.e -9
pushenv [162]

:[161]
call.i instance_destroy(argc=0)
popz.v

:[162]
popenv [161]

:[163]
push.v self.timer
pushi.e 140
cmp.i.v EQ
bf [165]

:[164]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_452_0"@37317
conv.s.v
push.s "\\E2* Th..^1. there^1, looks like I..^1. I did it?/"@37318
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_453_0"@37319
conv.s.v
push.s "\\Ee* (I just..^1. listened to Kris's command.)/"@37320
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_454_0"@37321
conv.s.v
push.s "\\EW* (And somehow^1, before I knew it...)/"@37322
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_455_0"@37323
conv.s.v
push.s "\\EZ* (The puzzle was finished.)/"@37324
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_456_0"@37325
conv.s.v
push.s "\\Ee* (What was I thinking^1? Kris wasn't trying to hurt me...)/"@37326
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_457_0_b"@37327
conv.s.v
push.s "\\Ed* (They were just making me stronger.)/%"@37328
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon

:[165]
push.v self.icon
pushi.e 13
cmp.i.v EQ
bf [167]

:[166]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
pushi.e 6
pop.v.i self.icon
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.victory
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 368
pop.v.v [array]self.flag
pushi.e 77
pop.v.i global.plot
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact

:[170]
push.v self.icon
pushi.e 999
cmp.i.v EQ
bf [175]

:[171]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 178
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.musicer
pushi.e 1000
pop.v.i self.icon
pushi.e 319
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [175]

:[172]
pushi.e 319
pushenv [174]

:[173]
pushi.e 1
pop.v.b self.start
pushi.e 1
pop.v.b self.fade_in

:[174]
popenv [173]

:[175]
push.v self.icon
pushi.e 1000
cmp.i.v EQ
bf [178]

:[176]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [178]

:[177]
pushi.e 0
pop.v.b self.weird
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.icon
pushi.e 0
pop.v.i global.facing

:[178]
push.v self.victory
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
pushi.e 135
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [181]

:[180]
push.e 0

:[181]
bf [190]

:[182]
push.v self.con
pushi.e -2
cmp.i.v EQ
bf [185]

:[183]
push.v 82.x
pushi.e 220
cmp.i.v LTE
bf [185]

:[184]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_67_0"@37330
conv.s.v
push.s "\\E8* Kris^1, wait a second!/%"@37331
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e -3
pop.v.i self.con

:[185]
push.v self.con
pushi.e -3
cmp.i.v EQ
bf [187]

:[186]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 221
pop.v.i 82.x
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e -2
pop.v.i self.con

:[190]
push.v self.victory
pushi.e 1
cmp.i.v EQ
bf [282]

:[191]
push.v self.con
pushi.e -2
cmp.i.v EQ
bf [198]

:[192]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GT
bf [198]

:[193]
pushi.e 1182
pushenv [197]

:[194]
pushi.e 0
pop.v.b self.rotate
push.v self.controlled
pushi.e -9
pushenv [196]

:[195]
pushi.e 0
pop.v.i self.move

:[196]
popenv [195]
pushi.e 0
pop.v.i global.facing

:[197]
popenv [194]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[198]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [202]

:[199]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [202]

:[200]
pushi.e 1168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [202]

:[201]
pushi.e 1169
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [203]

:[202]
push.e 0

:[203]
bf [214]

:[204]
pushi.e 1
pop.v.i global.interact
push.v self.scarecount
pushi.e 0
cmp.i.v GT
bf [210]

:[205]
push.v 135.x
pop.v.v 276.x
push.v 135.y
pop.v.v 276.y
pushi.e 1
pop.v.b 276.visible
pushi.e 276
pushenv [207]

:[206]
pushi.e 1
conv.i.v
call.i gml_Script_scr_caterpillar_facing(argc=1)
popz.v

:[207]
popenv [206]
pushi.e 135
pushenv [209]

:[208]
call.i instance_destroy(argc=0)
popz.v

:[209]
popenv [208]

:[210]
push.v 276.x
pushi.e 518
cmp.i.v GTE
bf [212]

:[211]
push.v 276.x
pop.v.v self.walkpoint
b [213]

:[212]
pushi.e 518
pop.v.i self.walkpoint

:[213]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[214]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [216]

:[215]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [217]

:[216]
push.e 0

:[217]
bf [219]

:[218]
pushi.e -999
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 166
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 16
conv.i.v
pushi.e 166
conv.i.v
push.v self.walkpoint
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_134_0"@37332
conv.s.v
push.s "\\E0* Kris^1! You did it^1! We should be able to.../%"@37333
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_197_0"@37334
conv.s.v
push.s "\\E2* ..^1. huh?/"@37335
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_198_0"@37336
conv.s.v
push.s "\\E1* The forcefield's still up./%"@37337
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 12
conv.i.v
pushi.e 218
conv.i.v
push.v self.walkpoint
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 24
conv.i.v
pushi.e 218
conv.i.v
pushi.e 678
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_277_0"@37338
conv.s.v
push.s "\\E3* D-did we miss something? H-hello?/%"@37339
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[219]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [225]

:[220]
pushi.e 0
pop.v.b 276.visible
pushi.e 103
conv.i.v
pushi.e 218
conv.i.v
pushi.e 678
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.scaredNoelle
pushi.e 729
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.scaredNoelle
pushi.e -9
pushenv [222]

:[221]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[222]
popenv [221]
push.v self.noelle
pushi.e -9
pushenv [224]

:[223]
call.i instance_destroy(argc=0)
popz.v

:[224]
popenv [223]
pushi.e 0
pop.v.i global.interact
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[225]
push.v self.con
push.d 5.9
cmp.d.v EQ
bf [227]

:[226]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [228]

:[227]
push.e 0

:[228]
bf [230]

:[229]
pushi.e 221
pop.v.i 82.x
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 6
pop.v.i self.con

:[230]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [243]

:[231]
pushi.e 0
pop.v.i self.timer
push.v 82.x
pushi.e 220
cmp.i.v LTE
bf [233]

:[232]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_316_0"@37341
conv.s.v
push.s "\\E8* Kris^1, wait a second!/%"@37331
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.d 5.9
pop.v.d self.con

:[233]
pushi.e 1165
pushenv [242]

:[234]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [242]

:[235]
pushi.e 1182
pushenv [239]

:[236]
pushi.e 0
pop.v.b self.rotate
push.v self.controlled
pushi.e -9
pushenv [238]

:[237]
pushi.e 0
pop.v.i self.move

:[238]
popenv [237]

:[239]
popenv [236]
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 129
conv.i.v
push.v 1169.y
push.v 1169.x
call.i gml_Script_instance_create(argc=3)
pop.v.v other.endNoelle
pushi.e 1
push.v other.endNoelle
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 717
push.v other.endNoelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_index
push.v other.endNoelle
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v other.endNoelle
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v other.endNoelle
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
push.v other.endNoelle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v other.con
push.e 1
add.i.v
pop.v.v other.con
pushi.e 0
pop.v.i other.timer
pushi.e 1169
pushenv [241]

:[240]
call.i instance_destroy(argc=0)
popz.v

:[241]
popenv [240]

:[242]
popenv [234]

:[243]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [250]

:[244]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 45
cmp.i.v EQ
bf [250]

:[245]
push.v self.endNoelle
pushi.e -9
push.v [stacktop]self.x
push.v 82.x
sub.v.v
pushi.e 8
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.walkDist
push.v self.endNoelle
pushi.e -9
pushenv [247]

:[246]
push.v other.walkDist
push.v self.y
push.v 82.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[247]
popenv [246]
push.d 0.25
push.v self.endNoelle
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 1544
push.v self.endNoelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
push.v self.endNoelle
pushi.e -9
pushenv [249]

:[248]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[249]
popenv [248]

:[250]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [254]

:[251]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_380_0"@37342
conv.s.v
push.s "\\E8* Kris^1, I can't believe you made those mice--/%"@37343
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.d 8.1
pop.v.d self.con
push.v self.endNoelle
pushi.e -9
pushenv [253]

:[252]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[253]
popenv [252]

:[254]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [260]

:[255]
push.v self.endNoelle
pushi.e -9
push.v [stacktop]self.x
push.v 276.x
cmp.v.v EQ
bf [257]

:[256]
pushi.e 0
push.v self.endNoelle
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[257]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.walkDist
cmp.v.v GTE
bf [260]

:[258]
pushi.e 728
push.v self.endNoelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.endNoelle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.endNoelle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.timer
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [260]

:[259]
pushi.e 9
pop.v.i self.con

:[260]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [263]

:[261]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [263]

:[262]
pushi.e 724
push.v self.endNoelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[263]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [266]

:[264]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [266]

:[265]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_420_0"@37344
conv.s.v
push.s "\\E3* Huh?/%"@37345
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[266]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [268]

:[267]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [269]

:[268]
push.e 0

:[269]
bf [273]

:[270]
push.v self.endNoelle
pushi.e -9
push.v [stacktop]self.x
pop.v.v 276.x
push.v self.endNoelle
pushi.e -9
push.v [stacktop]self.y
pop.v.v 276.y
push.v self.endNoelle
pushi.e -9
pushenv [272]

:[271]
call.i instance_destroy(argc=0)
popz.v

:[272]
popenv [271]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[273]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [275]

:[274]
pushi.e -999
pop.v.i self.con
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_434_0"@37346
conv.s.v
push.s "\\E2* I..^1. I guess landing on the switch turned off the forcefield.../%"@37347
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice2_slash_Step_0_gml_457_0"@37348
conv.s.v
push.s "\\E4* Let's go^1, Kris./%"@37349
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 13
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "timer"@5833
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag

:[275]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [282]

:[276]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [278]

:[277]
pushi.e 20
conv.i.v
call.i gml_Script_scr_camerareset(argc=1)
popz.v

:[278]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [282]

:[279]
pushi.e 0
pop.v.i global.facing
pushi.e 276
pushenv [281]

:[280]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[281]
popenv [280]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 368
pop.v.v [array]self.flag
pushi.e 77
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i gml_Script_scr_tempsave(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[282]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [298]

:[283]
push.v 1169.x
pushi.e 370
cmp.i.v EQ
bf [289]

:[284]
push.v 1169.y
pushi.e 166
cmp.i.v EQ
bf [289]

:[285]
push.v 1169.con
pushi.e 0
cmp.i.v EQ
bf [289]

:[286]
push.v 1169.jostlecon
pushi.e 0
cmp.i.v EQ
bf [289]

:[287]
push.v self.scared
pushi.e 0
cmp.i.v EQ
bf [289]

:[288]
push.v 1169.jostletimer
pushi.e 5
cmp.i.v GT
b [290]

:[289]
push.e 0

:[290]
bf [298]

:[291]
push.v self.scarecount
push.e 1
add.i.v
pop.v.v self.scarecount
pushi.e 1
pop.v.i global.interact
pushi.e 1169
pushenv [297]

:[292]
pushi.e 135
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v other.scaredNoelle
push.v self.sprite_index
push.v other.scaredNoelle
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v other.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v other.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v other.scaredNoelle
pushi.e -9
pushenv [294]

:[293]
push.s "noelledark"@10169
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[294]
popenv [293]
push.v other.scaredNoelle
pushi.e -9
push.v [stacktop]self.ystart
push.v other.scaredNoelle
pushi.e -9
pop.v.v [stacktop]self.y
push.v other.scaredNoelle
pushi.e -9
pushenv [296]

:[295]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[296]
popenv [295]
call.i instance_destroy(argc=0)
popz.v

:[297]
popenv [292]
push.v self.scared
push.e 1
add.i.v
pop.v.v self.scared

:[298]
push.v self.scared
pushi.e 1
cmp.i.v EQ
bf [300]

:[299]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [301]

:[300]
push.e 0

:[301]
bf [307]

:[302]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.scarecount
pushi.e 1
cmp.i.v EQ
bf [304]

:[303]
push.s "obj_controller_city_mice2_slash_Step_0_gml_500_0"@37352
conv.s.v
push.s "\\E2* I..^1. I wish they wouldn't jump out at me like that!/%"@37353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[304]
push.v self.scarecount
pushi.e 1
cmp.i.v GT
bf [306]

:[305]
push.s "obj_controller_city_mice2_slash_Step_0_gml_546_0"@37354
conv.s.v
push.s "\\E3* (How many more times am I gonna get hit by mice...?)/%"@37355
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[306]
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.scared
push.e 1
add.i.v
pop.v.v self.scared

:[307]
push.v self.scared
pushi.e 2
cmp.i.v EQ
bf [end]

:[308]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[309]
push.v self.scared
push.e 1
add.i.v
pop.v.v self.scared
pushi.e 0
pop.v.i global.interact

:[end]