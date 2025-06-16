.localvar 2 arguments
.localvar 173 is_valid 7054
.localvar 9635 error_message 7055

:[0]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [106]

:[1]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.con
pushi.e 50
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [69]

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
push.v self.t
pushi.e -9
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.vspeed
pushi.e 892
pop.v.i self.sprite_index

:[11]
popenv [10]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[13]
push.v self.t
pushi.e -9
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[15]
popenv [14]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 4
pop.v.i self.con

:[16]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [22]

:[17]
push.v self.t
pushi.e -9
pushenv [19]

:[18]
push.d 0.25
pop.v.d self.image_speed
pushi.e 893
pop.v.i self.sprite_index

:[19]
popenv [18]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 6
pop.v.i self.con
push.v self.wallwindow
pushi.e -9
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.image_index

:[21]
popenv [20]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[22]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [26]

:[23]
push.v self.t
pushi.e -9
pushenv [25]

:[24]
pushi.e 0
pop.v.i self.image_speed

:[25]
popenv [24]
pushi.e 8
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[26]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [30]

:[27]
push.v self.t
pushi.e -9
pushenv [29]

:[28]
pushi.e 901
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed

:[29]
popenv [28]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 10
pop.v.i self.con

:[30]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [34]

:[31]
push.v self.t
pushi.e -9
pushenv [33]

:[32]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[33]
popenv [32]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 12
pop.v.i self.con

:[34]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [38]

:[35]
push.v self.t
pushi.e -9
pushenv [37]

:[36]
pushi.e 897
pop.v.i self.sprite_index

:[37]
popenv [36]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 14
pop.v.i self.con

:[38]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [42]

:[39]
pushi.e 0
pop.v.i global.fe
push.v self.t
pushi.e -9
pushenv [41]

:[40]
push.d 0.25
pop.v.d self.image_speed

:[41]
popenv [40]
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Step_0_gml_94_0"@15424
conv.s.v
push.s "* I will wait outside for you^1, alright?/%"@15425
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 20
pop.v.i self.con

:[42]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [44]

:[43]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [49]

:[46]
push.v self.t
pushi.e -9
pushenv [48]

:[47]
pushi.e 0
pop.v.i self.image_index
pushi.e 901
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[48]
popenv [47]
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 21
pop.v.i self.con

:[49]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [51]

:[50]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 23
pop.v.i self.con

:[51]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [59]

:[52]
pushi.e 82
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 660
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.hspeed

:[54]
popenv [53]
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [58]

:[55]
pushi.e 82
pushenv [57]

:[56]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 660
pop.v.i self.sprite_index
pushi.e -4
pop.v.i self.hspeed

:[57]
popenv [56]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[58]
pushi.e 25
pop.v.i self.con

:[59]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [64]

:[60]
pushi.e 3
pop.v.i global.facing
pushi.e 82
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[62]
popenv [61]
pushi.e 27
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [64]

:[63]
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[64]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [69]

:[65]
pushi.e 0
pop.v.i global.facing
pushi.e 82
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 661
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[67]
popenv [66]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushglb.v global.plot
pushi.e 1
cmp.i.v LT
bf [69]

:[68]
pushi.e 1
pop.v.i global.plot

:[69]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [71]

:[70]
push.v self.con
pushi.e 100
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [86]

:[73]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [75]

:[74]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [82]

:[77]
pushglb.v global.filechoice
pop.v.v self._remfilechoice
push.v global.filechoice
pushi.e 3
add.i.v
pop.v.v global.filechoice
call.i gml_Script_scr_save(argc=0)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
not.b
bf [79]

:[78]
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "auto"@9638
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.type
push.s "save_failed"@14502
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type

:[79]
push.v self._remfilechoice
pop.v.v global.filechoice
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
pushi.e -9
pushenv [81]

:[80]
push.d 0.01
pop.v.d self.fadespeed

:[81]
popenv [80]
pushi.e 51
pop.v.i self.con
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[82]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [84]

:[83]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[84]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [86]

:[85]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
push.v self.room_myroom_dark
call.i room_goto(argc=1)
popz.v

:[86]
push.v self.con
pushi.e 100
cmp.i.v GTE
bf [88]

:[87]
push.v self.con
pushi.e 150
cmp.i.v LT
b [89]

:[88]
push.e 0

:[89]
bf [106]

:[90]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [92]

:[91]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [93]

:[92]
push.e 0

:[93]
bf [97]

:[94]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
pushi.e -9
pushenv [96]

:[95]
push.d 0.02
pop.v.d self.fadespeed
pushi.e 10000
pop.v.i self.depth

:[96]
popenv [95]
pushi.e 101
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[97]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [99]

:[98]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 103
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[99]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [101]

:[100]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Step_0_gml_283_0"@15428
conv.s.v
push.s "* (But^1, when you opened your eyes...)/%"@15429
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 105
pop.v.i self.con

:[101]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [103]

:[102]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_293_0"@15430
conv.s.v
push.s "THE DARK"@15431
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 10
pop.v.i global.plot
call.i gml_Script_scr_become_dark(argc=0)
popz.v

:[106]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[107]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [109]

:[108]
pushi.e 0
pop.v.i self.talkedtimes
push.i 231204
setowner.e
pushi.e -5
pushi.e 39
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
conv.b.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[109]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [111]

:[110]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [123]

:[113]
push.s "obj_krisroom_slash_Step_0_gml_321_0"@15433
conv.s.v
push.s "Kris...? /%"@15434
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.talkedtimes
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
push.s "obj_krisroom_slash_Step_0_gml_322_0"@15435
conv.s.v
push.s "Kris, honey...&Are you awake...?^6 %%"@15436
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[115]
push.v self.talkedtimes
pushi.e 2
cmp.i.v EQ
bf [117]

:[116]
push.s "obj_krisroom_slash_Step_0_gml_323_0"@15437
conv.s.v
push.s "... w.... wait!^6 %%"@15438
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[117]
push.v self.talkedtimes
pushi.e 3
cmp.i.v EQ
bf [119]

:[118]
push.s "obj_krisroom_slash_Step_0_gml_324_0"@15439
conv.s.v
push.s "Is that a...^6 %%"@15440
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[119]
push.v self.talkedtimes
pushi.e 4
cmp.i.v EQ
bf [121]

:[120]
push.s "obj_krisroom_slash_Step_0_gml_325_0"@15441
conv.s.v
push.s "A knife!!?^6 %%"@15442
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[121]
pushi.e 64
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_writer_autocenter(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_writer_setspeed(argc=1)
popz.v
push.v self.talkedtimes
push.e 1
add.i.v
pop.v.v self.talkedtimes
pushi.e 5
pop.v.i self.con
push.v self.talkedtimes
pushi.e 5
cmp.i.v EQ
bf [123]

:[122]
pushi.e 6
pop.v.i self.con

:[123]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [125]

:[124]
pushi.e 3
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[125]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [127]

:[126]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.whitefade
push.d 0.01
push.v self.whitefade
pushi.e -9
pop.v.d [stacktop]self.fadespeed
push.i 16777215
push.v self.whitefade
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.s "obj_krisroom_slash_Step_0_gml_353_0"@15444
conv.s.v
push.s "NOOOOOOOO---!!! %%"@15445
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 64
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_writer_autocenter(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_writer_setspeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_writer_setshake(argc=1)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[130]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [132]

:[131]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [133]

:[132]
push.e 0

:[133]
bf [139]

:[134]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
push.v self.whitefade
pushi.e -9
pushenv [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
popenv [135]
pushi.e 129
pushenv [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
popenv [137]
pushi.e 1
pop.v.b self.show_border
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.tor
pushi.e 893
conv.i.v
pushi.e 207
conv.i.v
pushi.e 151
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tor_actor
push.s "toriel"@544
conv.s.v
push.v self.tor_actor
push.v self.tor
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 892
push.v self.tor_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 27.5
conv.d.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.d 12.5
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_fe(argc=1)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_388_0"@15447
conv.s.v
push.s "* Kris^1, did you eat all of the pie!?/%"@15448
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_393_0"@15449
conv.s.v
push.s "\\E3* It is YOUR knife in this empty tin, is it not!?/"@15450
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_394_0"@15451
conv.s.v
push.s "\\E8* Oh, Kris.../%"@15452
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_399_0"@15453
conv.s.v
push.s "\\E4* Am I going to have to lock the oven again?/%"@15454
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 2
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_406_0"@15455
conv.s.v
push.s "\\E1* Well^1, hurry out of bed^1. It is time for school./%"@15456
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 75
conv.i.v
pushi.e 2
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 9
pop.v.i self.con

:[139]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [141]

:[140]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
pushi.e 22
pop.v.i self.con

:[144]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [146]

:[145]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 23
pop.v.i self.con

:[146]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [154]

:[147]
pushi.e 82
pushenv [149]

:[148]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 660
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.hspeed

:[149]
popenv [148]
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [153]

:[150]
pushi.e 82
pushenv [152]

:[151]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 660
pop.v.i self.sprite_index
pushi.e -4
pop.v.i self.hspeed

:[152]
popenv [151]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[153]
pushi.e 25
pop.v.i self.con

:[154]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [159]

:[155]
pushi.e 3
pop.v.i global.facing
pushi.e 82
pushenv [157]

:[156]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[157]
popenv [156]
pushi.e 27
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [159]

:[158]
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[159]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [164]

:[160]
pushi.e 0
pop.v.i global.facing
pushi.e 82
pushenv [162]

:[161]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 661
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[162]
popenv [161]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushglb.v global.plot
pushi.e 1
cmp.i.v LT
bf [164]

:[163]
pushi.e 1
pop.v.i global.plot

:[164]
push.v self.con
pushi.e 100
cmp.i.v GTE
bf [166]

:[165]
push.v self.con
pushi.e 150
cmp.i.v LT
b [167]

:[166]
push.e 0

:[167]
bf [end]

:[168]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 38
pop.v.v [array]self.tempflag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [170]

:[169]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [171]

:[170]
push.e 0

:[171]
bf [181]

:[172]
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [174]

:[173]
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[174]
pushi.e 5
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [176]

:[175]
pushi.e 5
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v

:[176]
pushi.e 9
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [178]

:[177]
pushi.e 9
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v

:[178]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 302
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 432
pop.v.v [array]self.flag
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
pushi.e -9
pushenv [180]

:[179]
push.d 0.02
pop.v.d self.fadespeed
pushi.e 10000
pop.v.i self.depth

:[180]
popenv [179]
pushi.e 101
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[181]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [183]

:[182]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 103
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[183]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [185]

:[184]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Step_0_gml_283_0"@15428
conv.s.v
push.s "* (But^1, when you opened your eyes...)/%"@15429
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 105
pop.v.i self.con

:[185]
push.v self.con
pushi.e 105
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
bf [end]

:[189]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_293_0"@15430
conv.s.v
push.s "THE DARK"@15431
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 49
pop.v.i global.plot
call.i gml_Script_scr_become_dark(argc=0)
popz.v
pushi.e 84
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]