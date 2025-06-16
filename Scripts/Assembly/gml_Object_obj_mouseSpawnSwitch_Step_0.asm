.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [2]

:[1]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [11]

:[7]
pushi.e 1
pop.v.i self.pressed
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.attempt
pushi.e 1
cmp.i.v GTE
bf [10]

:[8]
pushi.e 1167
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i 1167.mousecreate
pushi.e 15
pop.v.i 1167.gentimer
pushi.e 1
pop.v.i global.interact

:[10]
pushi.e 0
pop.v.i self.timer
push.v self.attempt
push.e 1
add.i.v
pop.v.v self.attempt

:[11]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [13]

:[12]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushglb.v global.plot
pushi.e 72
cmp.i.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.pressed
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[19]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [24]

:[20]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
bf [24]

:[21]
pushi.e 135
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [24]

:[22]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [24]

:[23]
push.v 1162.con
pushi.e 0
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.i self.pressed
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[27]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [30]

:[28]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
pushi.e 1
pop.v.i self.pressed
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1167
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[33]
pushi.e 1
pop.v.i 1167.mousecreate
pushi.e 15
pop.v.i 1167.gentimer
pushi.e 1
pop.v.i global.interact

:[34]
pushi.e 0
pop.v.i self.timer

:[35]
push.v self.pressed
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[37]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [41]

:[38]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [41]

:[39]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [41]

:[40]
push.v self.pressed
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 0
pop.v.i self.pressed

:[44]
push.v self.pressed
pop.v.v self.image_index
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [48]

:[45]
push.v self.attempt
pushi.e 1
cmp.i.v EQ
bf [48]

:[46]
pushi.e 1162
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [48]

:[47]
push.v 1162.victory
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 1
pop.v.i self.tIntroCon
pushi.e 1
pop.v.i global.interact
push.v self.attempt
push.e 1
add.i.v
pop.v.v self.attempt

:[51]
push.v self.introCon
pushi.e 0
cmp.i.v EQ
bt [56]

:[52]
push.v self.introCon
pushi.e 1
cmp.i.v EQ
bt [56]

:[53]
push.v self.introCon
pushi.e 2
cmp.i.v EQ
bt [56]

:[54]
push.v self.introCon
pushi.e 3
cmp.i.v EQ
bt [56]

:[55]
push.v self.introCon
pushi.e 4
cmp.i.v EQ
b [57]

:[56]
push.e 1

:[57]
bf [59]

:[58]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i global.interact

:[59]
push.v self.tIntroCon
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 2
pop.v.i self.tIntroCon
pushi.e 2691
conv.i.v
pushi.e 180
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fakemouse
pushi.e 0
push.v self.fakemouse
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 2685
conv.i.v
push.v 1167.y
push.v 1167.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fakedoor
pushi.e 5
push.v self.fakedoor
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
conv.i.v
pushi.e 1167
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.realdoor
push.i 232289
setowner.e
push.v self.fakemouse
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
push.v self.fakedoor
push.v self.cutscene_master
pushi.e -9
pushi.e 1
pop.v.v [array]self.save_object
push.v self.realdoor
push.v self.cutscene_master
pushi.e -9
pushi.e 2
pop.v.v [array]self.save_object

:[61]
push.v self.tIntroCon
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
pushi.e 999
pop.v.i self.tIntroCon
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 270
conv.i.v
pushi.e 160
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 260
conv.i.v
pushi.e 196
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.fakedoor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.fakemouse
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 177
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_123_0"@37254
conv.s.v
push.s "\\E2* A m-m-m-m-m.../"@37255
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_124_0"@37256
conv.s.v
push.s "\\EE* Mouse!?/%"@37257
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "desIndex"@14181
conv.s.v
push.v self.realdoor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "mousecreate"@37249
conv.s.v
push.v self.realdoor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
push.s "gentimer"@37250
conv.s.v
push.v self.realdoor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.fakemouse
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.fakedoor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "tIntroCon"@37248
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[63]
push.v self.tIntroCon
pushi.e 5
cmp.i.v EQ
bf [71]

:[64]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [66]

:[65]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [71]

:[68]
pushi.e 0
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v 276.x
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v 276.y
pushi.e 276
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.fun
pushi.e 717
pop.v.i self.sprite_index

:[70]
popenv [69]
pushi.e 6
pop.v.i self.tIntroCon
pushi.e 0
pop.v.i self.mousetimer

:[71]
push.v self.tIntroCon
pushi.e 6
cmp.i.v EQ
bf [87]

:[72]
push.v self.mousetimer
push.e 1
add.i.v
pop.v.v self.mousetimer
push.v 1162.victory
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1168
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 90
pop.v.i self.mousetimer

:[77]
push.v self.mousetimer
pushi.e 90
cmp.i.v GTE
bf [87]

:[78]
pushi.e 10
pop.v.i self.tIntroCon
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [83]

:[79]
push.v 1162.victory
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_171_0"@37258
conv.s.v
push.s "\\E3* S..^1. sorry^1, Kris^1, could you..^1. d-deal with them somehow?/"@37259
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_172_0"@37260
conv.s.v
push.s "\\E4* Maybe if you can get them in the other mouse hole?/%"@37261
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
push.s "introCon"@5805
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "introFinished"@37224
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
b [82]

:[81]
pushi.e 1
pop.v.i self.earlywin
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 4
conv.i.v
push.s "introCon"@5805
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "introFinished"@37224
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[82]
b [84]

:[83]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_189_0"@37262
conv.s.v
push.s "\\E2* H-huh^1?&* Nothing happened.../%"@37263
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
pushi.e 200
pop.v.i self.tIntroCon

:[84]
pushi.e 276
pushenv [86]

:[85]
pushi.e 0
pop.v.i self.fun
pushi.e 719
pop.v.i self.sprite_index

:[86]
popenv [85]

:[87]
push.v self.introCon
pushi.e 0
cmp.i.v EQ
bf [98]

:[88]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [92]

:[89]
pushi.e 276
pushenv [91]

:[90]
pushi.e 1
pop.v.i self.fun
pushi.e 717
pop.v.i self.sprite_index

:[91]
popenv [90]

:[92]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [98]

:[93]
push.v 1169.x
push.v 1169.targetx
cmp.v.v EQ
bf [95]

:[94]
push.v 1169.y
push.v 1169.targety
cmp.v.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[98]
push.v self.introCon
pushi.e 1
cmp.i.v EQ
bf [101]

:[99]
pushi.e 2723
pop.v.i 1169.sprite_index
pushi.e 3
pop.v.i 1169.image_index
push.v self.introconTimer
push.e 1
add.i.v
pop.v.v self.introconTimer
push.v self.introconTimer
pushi.e 30
cmp.i.v EQ
bf [101]

:[100]
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[101]
push.v self.introCon
pushi.e 2
cmp.i.v EQ
bf [105]

:[102]
pushi.e 2723
conv.i.v
push.v 1169.y
push.v 1169.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fakenoelle
pushi.e 1169
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 0
pop.v.i self.noelleWaitTimer
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[105]
push.v self.introCon
pushi.e 3
cmp.i.v EQ
bf [114]

:[106]
push.v self.fakenoelle
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 11
cmp.i.v GTE
bt [108]

:[107]
push.v self.tIntroCon
pushi.e 10
cmp.i.v GTE
b [109]

:[108]
push.e 1

:[109]
bf [113]

:[110]
push.v self.noelleWaitTimer
push.e 1
add.i.v
pop.v.v self.noelleWaitTimer
push.v self.noelleWaitTimer
pushi.e 5
cmp.i.v GTE
bf [112]

:[111]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_275_0"@37266
conv.s.v
push.s "\\EE* M-m-m-m-mouse!!/"@37267
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_276_0"@37268
conv.s.v
push.s "\\E2* S..^1. sorry^1, Kris^1, could you..^1. d-deal with them somehow?/"@37269
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_277_0"@37270
conv.s.v
push.s "\\E4* Maybe^1, make a mouseless path I can walk through...?/%"@37271
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 4
pop.v.i self.introCon

:[112]
b [114]

:[113]
push.v self.fakenoelle
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.5
add.d.v
pop.i.v [stacktop]self.image_index

:[114]
push.v self.introCon
pushi.e 4
cmp.i.v EQ
bf [117]

:[115]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [117]

:[116]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [118]

:[117]
push.e 0

:[118]
bf [130]

:[119]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [125]

:[120]
pushi.e 135
conv.i.v
push.v 1169.y
push.v 1169.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelleFacing
pushi.e 718
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.noelleFacing
pushi.e -9
push.v [stacktop]self.ystart
push.v self.noelleFacing
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.noelleFacing
pushi.e -9
pushenv [122]

:[121]
push.s "noelledark"@10169
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[122]
popenv [121]
pushi.e 1169
pushenv [124]

:[123]
call.i instance_destroy(argc=0)
popz.v

:[124]
popenv [123]

:[125]
pushi.e 319
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [129]

:[126]
pushi.e 319
pushenv [128]

:[127]
pushi.e 1
pop.v.b self.start
pushi.e 1
pop.v.b self.fade_in

:[128]
popenv [127]

:[129]
pushi.e 29
pop.v.i self.timer
pushi.e 0
pop.v.i global.interact
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[130]
push.v self.introCon
pushi.e 4
cmp.i.v EQ
bf [139]

:[131]
push.v self.noelleFacing
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [135]

:[132]
push.v self.noelleFacing
push.v self.noelleFacing
pushi.e -9
push.v [stacktop]self.y
push.v self.noelleFacing
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelleFacing
push.v 1169.sprite_index
push.v self.noelleFacing
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noelleFacing
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.noelleFacing
pushi.e -9
pushenv [134]

:[133]
push.s "noelledark"@10169
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[134]
popenv [133]
push.v self.noelleFacing
pushi.e -9
push.v [stacktop]self.ystart
push.v self.noelleFacing
pushi.e -9
pop.v.v [stacktop]self.y

:[135]
push.v self.noelleFacing
pushi.e -9
pushenv [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
popenv [136]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [139]

:[138]
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[139]
push.v self.introCon
pushi.e 5
cmp.i.v EQ
bf [141]

:[140]
pushi.e 29
pop.v.i self.timer
pushi.e 0
pop.v.i global.interact
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[141]
push.v self.introCon
pushi.e 6
cmp.i.v EQ
bf [161]

:[142]
pushglb.v global.plot
pushi.e 72
cmp.i.v GTE
bf [144]

:[143]
pushi.e 99
pop.v.i self.introCon
b [148]

:[144]
push.v 82.y
push.v self.leaveTrigger
cmp.v.v GTE
bf [146]

:[145]
pushi.e 7
pop.v.i self.introCon
b [148]

:[146]
push.v 82.y
pushi.e 80
cmp.i.v LT
bf [148]

:[147]
pushi.e 9
pop.v.i self.introCon

:[148]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
push.v self.timer
pushi.e 60
cmp.i.v GT
b [151]

:[150]
push.e 0

:[151]
bf [161]

:[152]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [154]

:[153]
pushi.e 1168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [155]

:[154]
push.e 0

:[155]
bf [161]

:[156]
push.v 1162.scaredAgain
pushi.e 99
cmp.i.v EQ
bt [158]

:[157]
push.v 1162.scaredAgain
pushi.e 3
cmp.i.v EQ
b [159]

:[158]
push.e 1

:[159]
bf [161]

:[160]
pushi.e 0
pop.v.i global.interact

:[161]
push.v self.introCon
pushi.e 7
cmp.i.v EQ
bf [173]

:[162]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.leaveAttempt
pushi.e 0
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_352_0"@37272
conv.s.v
push.s "\\E4* H-hey^1, Kris? You can't leave yet^1, y'know!/"@37273
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_353_0"@37274
conv.s.v
push.s "\\E3* You need to deal with the mice^1, first./"@37275
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_354_0"@37276
conv.s.v
push.s "\\E4* You can do it^1, Kris^1! I believe in you!/%"@37277
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[164]
push.v self.leaveAttempt
pushi.e 1
cmp.i.v EQ
bf [166]

:[165]
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_358_0"@37278
conv.s.v
push.s "\\E3* Kris^1, you^1, um..^1. aren't gonna leave me here^1, are you?/"@37279
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_359_0"@37280
conv.s.v
push.s "\\E2* Th-think about all the p-pencils I gave you!/"@37281
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_360_0"@37282
conv.s.v
push.s "\\E2* The..^1. the peppermint cookies I shared with you!/%"@37283
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[166]
push.v self.leaveAttempt
pushi.e 2
cmp.i.v EQ
bf [168]

:[167]
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_364_0"@37284
conv.s.v
push.s "\\E8* .../"@631
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_365_0"@37285
conv.s.v
push.s "\\E8* I'll do your homework for you./%"@37286
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[168]
push.v self.leaveAttempt
pushi.e 3
cmp.i.v EQ
bf [170]

:[169]
pushi.e 127
pop.v.i self.introCon

:[170]
push.v self.leaveAttempt
pushi.e 3
cmp.i.v NEQ
bf [172]

:[171]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d

:[172]
push.v self.leaveAttempt
push.e 1
add.i.v
pop.v.v self.leaveAttempt
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[173]
push.v self.introCon
pushi.e 8
cmp.i.v EQ
bf [175]

:[174]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [176]

:[175]
push.e 0

:[176]
bf [180]

:[177]
pushi.e 2
pop.v.i global.facing
push.v self.leaveTrigger
pushi.e 1
sub.i.v
pop.v.v 82.y
push.v self.leaveTrigger
pushi.e 8
add.i.v
pop.v.v self.leaveTrigger
push.v self.backeddown
pushi.e 1
cmp.i.v EQ
bf [179]

:[178]
pushi.e 392
pop.v.i self.leaveTrigger
pushi.e 3
pop.v.i self.leaveAttempt
pushi.e 0
pop.v.i self.backeddown

:[179]
pushi.e 0
pop.v.i global.interact
pushi.e 6
pop.v.i self.introCon

:[180]
push.v self.introCon
pushi.e 9
cmp.i.v EQ
bf [187]

:[181]
pushi.e 1
pop.v.i global.interact
pushi.e 135
pushenv [183]

:[182]
pushi.e 2
pop.v.i self.dfacing

:[183]
popenv [182]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.leaveUpAttempt
pushi.e 0
cmp.i.v EQ
bf [185]

:[184]
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_395_0"@37287
conv.s.v
push.s "\\E4* Oh^1, merry Krismaaaas--!/"@37288
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_396_0"@37289
conv.s.v
push.s "\\E8* That's where we came from!/%"@37290
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [186]

:[185]
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_400_0"@37291
conv.s.v
push.s "\\E4* Kris^1, are you afraid of mice^1, too? Fahahaha!/%"@37292
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[186]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.leaveUpAttempt
push.e 1
add.i.v
pop.v.v self.leaveUpAttempt
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[187]
push.v self.introCon
pushi.e 10
cmp.i.v EQ
bf [189]

:[188]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [190]

:[189]
push.e 0

:[190]
bf [194]

:[191]
pushi.e 81
pop.v.i 82.y
pushi.e 135
pushenv [193]

:[192]
pushi.e 0
pop.v.i self.dfacing

:[193]
popenv [192]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 6
pop.v.i self.introCon

:[194]
push.v self.introCon
pushi.e 128
cmp.i.v EQ
bf [196]

:[195]
pushi.e 1202
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[196]
push.v self.introCon
pushi.e 131
cmp.i.v EQ
bf [198]

:[197]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [199]

:[198]
push.e 0

:[199]
bf [203]

:[200]
pushi.e 1
pop.v.i global.interact
push.v 135.x
pop.v.v 276.x
push.v 135.y
pop.v.v 276.y
pushi.e 135
pushenv [202]

:[201]
call.i instance_destroy(argc=0)
popz.v

:[202]
popenv [201]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 1162
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.hole
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[203]
push.v self.introCon
pushi.e 132
cmp.i.v EQ
bf [205]

:[204]
pushi.e 1
pop.v.i global.interact
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 718
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 250
conv.i.v
pushi.e 485
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1543
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 256
conv.i.v
pushi.e 483
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 256
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_454_0"@37293
conv.s.v
push.s "\\E4* Ph..^1. phew.../"@37294
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_455_0"@37295
conv.s.v
push.s "\\E8* (We'd better not have to do something like that again...)/%"@37296
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 330
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_mouseSpawnSwitch_slash_Step_0_gml_506_0"@37297
conv.s.v
push.s "\\E3* (Seriously, when did Kris get so bossy?)/%"@37298
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
pushi.e 133
pop.v.i self.introCon

:[205]
push.v self.introCon
pushi.e 133
cmp.i.v EQ
bf [208]

:[206]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [208]

:[207]
push.v self.cutscene_master
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [209]

:[208]
push.e 0

:[209]
bf [213]

:[210]
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
bf [212]

:[211]
pushi.e 72
pop.v.i global.plot

:[212]
pushi.e 0
pop.v.i global.interact
push.v self.introCon
push.e 1
add.i.v
pop.v.v self.introCon

:[213]
push.v self.tIntroCon
pushi.e 200
cmp.i.v EQ
bf [215]

:[214]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [216]

:[215]
push.e 0

:[216]
bf [end]

:[217]
pushi.e 276
pushenv [219]

:[218]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[219]
popenv [218]
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
bf [221]

:[220]
pushi.e 72
pop.v.i global.plot

:[221]
pushi.e 201
pop.v.i self.tIntroCon

:[end]