.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 398
cmp.i.v EQ
bf [110]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [24]

:[5]
pushi.e 0
pop.v.i self.cinstancecheck
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 125
cmp.i.v GTE
bf [11]

:[10]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 125
cmp.i.v GTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.cinstancecheck

:[14]
push.v 1351.x
pushi.e 125
cmp.i.v GTE
bf [16]

:[15]
push.v self.cinstancecheck
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [24]

:[18]
push.v self.flashobj
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [23]

:[22]
push.i 133643
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushi.e 1660
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.spikewall1
pushi.e 1660
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushi.e 2
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.spikewall2
pushi.e 2
push.v self.spikewall1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.spikewall2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 4282
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.darkfade
pushi.e 700
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 400
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 800000
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
pop.v.i self.fade
pushi.e 3
pop.v.i self.con

:[26]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [29]

:[27]
push.v self.fade
push.d 0.01
add.d.v
pop.v.v self.fade
push.v self.fade
push.v self.darkfade
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.fade
push.d 0.6
cmp.d.v GTE
bf [29]

:[28]
pushi.e 4
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[29]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [33]

:[30]
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.fun
push.v self.usprite
pop.v.v self.sprite_index

:[32]
popenv [31]
push.i 231251
setowner.e
push.s "obj_rurus_event_slash_Step_0_gml_58_0"@39147
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 42
pop.v.i global.typer
pushi.e 1331
conv.i.v
pushi.e 50
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[33]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_rurus_event_slash_Step_0_gml_71_0"@39148
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 7
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[38]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [40]

:[39]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.s "obj_rurus_event_slash_Step_0_gml_78_0"@39149
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 42
pop.v.i global.typer
pushi.e 1331
conv.i.v
pushi.e 50
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[43]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 361
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1374
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.appear
pushi.e 0
pop.v.i self.visible
pushi.e 14
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[48]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [52]

:[49]
pushi.e 1
pop.v.i self.visible
push.v self.appear
pushi.e -9
pushenv [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
popenv [50]
pushi.e 0
pop.v.i self.vspeed
pushi.e 16
pop.v.i self.con
pushi.e 21
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[52]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [57]

:[53]
push.v self.darkfade
pushi.e -9
pushenv [56]

:[54]
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [56]

:[55]
pushi.e 0
pop.v.i self.image_alpha

:[56]
popenv [54]

:[57]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [59]

:[58]
push.i 231459
setowner.e
push.s "ruruskaado.ogg"@20924
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 18
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_event_slash_Step_0_gml_121_0"@39150
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_122_0"@39151
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_123_0"@39152
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_124_0"@39153
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 18
pop.v.i self.con

:[59]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [61]

:[60]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [66]

:[63]
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.fade
pushi.e 19
pop.v.i self.con
push.v self.darkfade
pushi.e -9
pushenv [65]

:[64]
push.i 16777215
pop.v.i self.image_blend
pushi.e -200
pop.v.i self.depth

:[65]
popenv [64]

:[66]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [69]

:[67]
push.v self.fade
push.d 0.1
add.d.v
pop.v.v self.fade
push.v self.fade
push.v self.darkfade
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.darkfade
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [69]

:[68]
pushi.e 20
pop.v.i self.con
pushi.e 1548
conv.i.v
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block
pushi.e 0
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.event
pushi.e 1550
conv.i.v
pushi.e 240
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.tile

:[69]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [74]

:[70]
push.v self.fade
push.d 0.1
sub.d.v
pop.v.v self.fade
push.v self.fade
push.v self.darkfade
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.fade
pushi.e 0
cmp.i.v LTE
bf [74]

:[71]
push.v self.darkfade
pushi.e -9
pushenv [73]

:[72]
call.i instance_destroy(argc=0)
popz.v

:[73]
popenv [72]
pushi.e 21
pop.v.i self.con
push.s "obj_rurus_event_slash_Step_0_gml_164_0"@39154
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
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[74]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [76]

:[75]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [83]

:[78]
push.v self.floorwall
pushi.e -9
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]
pushi.e 1409
conv.i.v
pushi.e 160
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.interactable
pushi.e 4
push.v self.interactable
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.interactable
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i global.facing
pushi.e 1493
pushenv [82]

:[81]
pushi.e 0
pop.v.i self.fun

:[82]
popenv [81]
pushi.e 0
pop.v.i global.interact
pushi.e 25
pop.v.i self.con

:[83]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [98]

:[84]
push.v self.block
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 3737
cmp.i.v EQ
bf [86]

:[85]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [98]

:[88]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 375
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.spikewall1
pushi.e -9
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
push.v self.spikewall2
pushi.e -9
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]
push.v self.interactable
pushi.e -9
pushenv [94]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[94]
popenv [93]
pushi.e 0
pop.v.i self.i

:[95]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [97]

:[96]
push.i 133643
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [95]

:[97]
pushi.e 26
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[98]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [100]

:[99]
pushi.e 18
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 42
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_event_slash_Step_0_gml_208_0"@39155
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_209_0"@39156
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_210_0"@39157
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
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 28
pop.v.i self.con

:[100]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [102]

:[101]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushi.e -8
pop.v.i self.vspeed
pushi.e 29
pop.v.i self.con

:[105]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [107]

:[106]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 217
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v
pushi.e 30
pop.v.i self.con

:[110]
pushbltn.v builtin.room
pushi.e 402
cmp.i.v EQ
bf [end]

:[111]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [134]

:[115]
pushi.e 0
pop.v.i self.cinstancecheck
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [117]

:[116]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
b [118]

:[117]
push.e 0

:[118]
bf [124]

:[119]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 125
cmp.i.v GTE
bf [121]

:[120]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e 125
cmp.i.v GTE
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 1
pop.v.i self.cinstancecheck

:[124]
push.v 1351.x
pushi.e 125
cmp.i.v GTE
bf [126]

:[125]
push.v self.cinstancecheck
pushi.e 1
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [134]

:[128]
push.v self.flashobj
pushi.e -9
pushenv [130]

:[129]
call.i instance_destroy(argc=0)
popz.v

:[130]
popenv [129]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[131]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [133]

:[132]
push.i 133643
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [131]

:[133]
pushi.e 1660
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.spikewall1
pushi.e 1660
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
pushi.e 2
push.v [array]self.spike
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.spikewall2
pushi.e 2
push.v self.spikewall1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.spikewall2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[134]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [136]

:[135]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 361
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1374
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.appear
pushi.e 0
pop.v.i self.visible
pushi.e 14
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[139]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [143]

:[140]
pushi.e 1
pop.v.i self.visible
push.v self.appear
pushi.e -9
pushenv [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
pushi.e 0
pop.v.i self.vspeed
pushi.e 16
pop.v.i self.con
pushi.e 21
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[143]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [145]

:[144]
push.i 231459
setowner.e
push.s "ruruskaado.ogg"@20924
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 1.1
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
pushi.e 18
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_event_slash_Step_0_gml_295_0"@39158
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_296_0"@39159
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_297_0"@39160
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_298_0"@39161
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 18
pop.v.i self.con

:[145]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [147]

:[146]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [148]

:[147]
push.e 0

:[148]
bf [152]

:[149]
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.fade
pushi.e 19
pop.v.i self.con
pushi.e 4282
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.darkfade
pushi.e 700
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 400
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.darkfade
pushi.e -9
pushenv [151]

:[150]
push.i 16777215
pop.v.i self.image_blend
pushi.e -200
pop.v.i self.depth

:[151]
popenv [150]

:[152]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [155]

:[153]
push.v self.fade
push.d 0.1
add.d.v
pop.v.v self.fade
push.v self.fade
push.v self.darkfade
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.darkfade
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [155]

:[154]
pushi.e 20
pop.v.i self.con
pushi.e 1548
conv.i.v
pushi.e 240
conv.i.v
pushi.e 340
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block
pushi.e 0
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.event
pushi.e 1550
conv.i.v
pushi.e 240
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.tile

:[155]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [160]

:[156]
push.v self.fade
push.d 0.1
sub.d.v
pop.v.v self.fade
push.v self.fade
push.v self.darkfade
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.fade
pushi.e 0
cmp.i.v LTE
bf [160]

:[157]
push.v self.darkfade
pushi.e -9
pushenv [159]

:[158]
call.i instance_destroy(argc=0)
popz.v

:[159]
popenv [158]
pushi.e 21
pop.v.i self.con
push.s "obj_rurus_event_slash_Step_0_gml_341_0"@39162
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
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[160]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [162]

:[161]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [169]

:[164]
pushi.e 1409
conv.i.v
pushi.e 160
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.interactable
pushi.e 4
push.v self.interactable
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.interactable
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.floorwall
pushi.e -9
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
pushi.e 0
pop.v.i global.facing
pushi.e 1493
pushenv [168]

:[167]
pushi.e 0
pop.v.i self.fun

:[168]
popenv [167]
pushi.e 0
pop.v.i global.interact
pushi.e 25
pop.v.i self.con

:[169]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [184]

:[170]
push.v self.block
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 3737
cmp.i.v EQ
bf [172]

:[171]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [173]

:[172]
push.e 0

:[173]
bf [184]

:[174]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 375
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.interactable
pushi.e -9
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]
push.v self.spikewall1
pushi.e -9
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
push.v self.spikewall2
pushi.e -9
pushenv [180]

:[179]
call.i instance_destroy(argc=0)
popz.v

:[180]
popenv [179]
pushi.e 0
pop.v.i self.i

:[181]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [183]

:[182]
push.i 133643
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [181]

:[183]
pushi.e 26
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[184]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [186]

:[185]
pushi.e 18
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_event_slash_Step_0_gml_385_0"@39163
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_386_0"@39164
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_387_0"@39165
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_388_0"@39166
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_389_0"@39167
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_rurus_event_slash_Step_0_gml_390_0"@39168
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_rurus_event_slash_Step_0_gml_392_0"@39169
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 28
pop.v.i self.con

:[186]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [188]

:[187]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [189]

:[188]
push.e 0

:[189]
bf [191]

:[190]
pushi.e 18
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.s "obj_rurus_event_slash_Step_0_gml_404_0"@39170
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
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 12
pop.v.i self.hspeed
pushi.e 29
pop.v.i self.con

:[191]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [193]

:[192]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [194]

:[193]
push.e 0

:[194]
bf [end]

:[195]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 218
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v
pushi.e 30
pop.v.i self.con

:[end]