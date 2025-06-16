.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [1]

:[1]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [9]

:[6]
pushi.e 3700
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 1351
pushenv [8]

:[7]
pushi.e 5
pop.v.i self.onebuffer

:[8]
popenv [7]

:[9]
push.v self.con
pushi.e 5
cmp.i.v GTE
bf [end]

:[10]
push.v self.con
pushi.e 10
cmp.i.v EQ
bt [13]

:[11]
push.v self.con
pushi.e 30
cmp.i.v EQ
bt [13]

:[12]
push.v self.con
pushi.e 50
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [21]

:[15]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
bf [21]

:[16]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause_ch1(argc=1)
popz.v
pushi.e 3703
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.charcycle
pushi.e 0
pop.v.i self.charamt
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
pushi.e 1
pop.v.i self.charamt

:[18]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
pushi.e 2
pop.v.i self.charamt

:[20]
push.v self.charamt
pop.v.v self.charcycle

:[21]
push.v self.con
pushi.e 12
cmp.i.v EQ
bt [24]

:[22]
push.v self.con
pushi.e 32
cmp.i.v EQ
bt [24]

:[23]
push.v self.con
pushi.e 52
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.i self.hitmode
pushi.e 3701
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con

:[27]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [36]

:[28]
push.v self.char
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.visible

:[32]
popenv [31]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [34]

:[33]
pushi.e 1
pop.v.i self.visible

:[34]
popenv [33]
pushi.e 1
pop.v.i 1351.visible
pushi.e 13
pop.v.i self.con
push.v self.charcycle
pushi.e 1
sub.i.v
pop.v.v self.charcycle
push.v self.charcycle
pushi.e 0
cmp.i.v LT
bf [36]

:[35]
pushi.e 16
pop.v.i self.con

:[36]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [58]

:[37]
pushi.e -5
push.v self.charcycle
conv.v.i
push.v [array]self.char
pop.v.v self.chartype
push.v self.charcycle
pushi.e 0
cmp.i.v EQ
bf [43]

:[38]
pushi.e 1351
pushenv [40]

:[39]
pushi.e 0
pop.v.i self.visible

:[40]
popenv [39]
pushi.e 4200
conv.i.v
pushi.e 125
conv.i.v
pushi.e 390
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [42]

:[41]
push.i 400000
pop.v.i self.depth

:[42]
popenv [41]

:[43]
push.v self.charcycle
pushi.e 1
cmp.i.v EQ
bt [45]

:[44]
push.v self.charcycle
pushi.e 2
cmp.i.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [57]

:[47]
pushi.e -5
push.v self.charcycle
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
pop.v.i self.visible

:[49]
popenv [48]
push.v self.chartype
pushi.e 2
cmp.i.v EQ
bf [53]

:[50]
pushi.e 3559
conv.i.v
pushi.e 110
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [52]

:[51]
push.i 400000
pop.v.i self.depth

:[52]
popenv [51]

:[53]
push.v self.chartype
pushi.e 3
cmp.i.v EQ
bf [57]

:[54]
pushi.e 3866
conv.i.v
pushi.e 140
conv.i.v
pushi.e 390
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [56]

:[55]
push.i 400000
pop.v.i self.depth

:[56]
popenv [55]

:[57]
pushi.e 14
pop.v.i self.con
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[58]
push.v self.con
pushi.e 16
cmp.i.v EQ
bt [61]

:[59]
push.v self.con
pushi.e 36
cmp.i.v EQ
bt [61]

:[60]
push.v self.con
pushi.e 56
cmp.i.v EQ
b [62]

:[61]
push.e 1

:[62]
bf [64]

:[63]
pushi.e 0
pop.v.i self.hitmode
pushi.e 3700
pop.v.i self.sprite_index
push.d 0.05
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume_ch1(argc=1)
popz.v
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con

:[64]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [66]

:[65]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_npc_hammerguy_slash_Step_0_gml_108_0"@15468
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_109_0"@15470
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
pushi.e 18
pop.v.i self.con

:[66]
push.v self.con
pushi.e 18
cmp.i.v EQ
bt [69]

:[67]
push.v self.con
pushi.e 38
cmp.i.v EQ
bt [69]

:[68]
push.v self.con
pushi.e 58
cmp.i.v EQ
b [70]

:[69]
push.e 1

:[70]
bf [75]

:[71]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
bf [75]

:[72]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
pushi.e 1351
pushenv [74]

:[73]
pushi.e 10
pop.v.i self.onebuffer

:[74]
popenv [73]
pushi.e 0
pop.v.i self.con

:[75]
push.v self.hitmode
pushi.e 1
cmp.i.v EQ
bf [80]

:[76]
push.v self.image_index
pushi.e 4
cmp.i.v EQ
bf [78]

:[77]
pushi.e 374
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[78]
push.v self.image_index
pushi.e 10
cmp.i.v GTE
bf [80]

:[79]
pushi.e 0
pop.v.i self.image_index

:[80]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [84]

:[81]
pushi.e 3705
conv.i.v
pushi.e 160
conv.i.v
pushi.e 385
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [83]

:[82]
push.i 400000
pop.v.i self.depth

:[83]
popenv [82]
pushi.e 34
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[84]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [88]

:[85]
push.v self.char
pushi.e -9
pushenv [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
popenv [86]
pushi.e 36
pop.v.i self.con

:[88]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [90]

:[89]
pushi.e 3
conv.i.v
call.i gml_Script_scr_keyitemremove_ch1(argc=1)
popz.v
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_npc_hammerguy_slash_Step_0_gml_153_0"@15472
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_154_0"@15474
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_155_0"@15476
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
pop.v.v self.mydialoguer
pushi.e 38
pop.v.i self.con

:[90]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [94]

:[91]
pushi.e 3706
conv.i.v
pushi.e 170
conv.i.v
pushi.e 390
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [93]

:[92]
push.i 400000
pop.v.i self.depth

:[93]
popenv [92]
pushi.e 54
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[94]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [98]

:[95]
push.v self.char
pushi.e -9
pushenv [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [96]
pushi.e 56
pop.v.i self.con

:[98]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [end]

:[99]
pushi.e 4
conv.i.v
call.i gml_Script_scr_keyitemremove_ch1(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_keyitemremove_ch1(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_keyitemremove_ch1(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_keyitemget_ch1(argc=1)
popz.v
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_npc_hammerguy_slash_Step_0_gml_184_0"@15478
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_185_0"@15480
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_186_0"@15482
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_187_0"@15484
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_188_0"@15486
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
pushi.e 58
pop.v.i self.con

:[end]