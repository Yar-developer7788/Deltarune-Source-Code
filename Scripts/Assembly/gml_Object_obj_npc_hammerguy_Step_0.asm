.localvar 2 arguments
.localvar 15466 xpos 7074
.localvar 14550 ypos 7075
.localvar 15467 ral_sprite 7076

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
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [9]

:[6]
pushi.e 1185
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
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
bf [123]

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
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [21]

:[16]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
pushi.e 1187
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
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
bt [25]

:[22]
push.v self.con
pushi.e 32
cmp.i.v EQ
bt [25]

:[23]
push.v self.con
pushi.e 52
cmp.i.v EQ
bt [25]

:[24]
push.v self.con
pushi.e 72
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.i self.hitmode
pushi.e 1186
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con

:[28]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [37]

:[29]
push.v self.char
pushi.e -9
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [33]

:[32]
pushi.e 1
pop.v.i self.visible

:[33]
popenv [32]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.visible

:[35]
popenv [34]
pushi.e 1
pop.v.i 82.visible
pushi.e 13
pop.v.i self.con
push.v self.charcycle
pushi.e 1
sub.i.v
pop.v.v self.charcycle
push.v self.charcycle
pushi.e 0
cmp.i.v LT
bf [37]

:[36]
pushi.e 16
pop.v.i self.con

:[37]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [80]

:[38]
pushi.e -5
push.v self.charcycle
conv.v.i
push.v [array]self.char
pop.v.v self.chartype
push.v self.charcycle
pushi.e 0
cmp.i.v EQ
bf [50]

:[39]
pushi.e 82
pushenv [41]

:[40]
pushi.e 0
pop.v.i self.visible

:[41]
popenv [40]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 390
conv.i.v
b [44]

:[43]
push.v self.x
pushi.e 105
add.i.v

:[44]
pop.v.v local.xpos
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 125
conv.i.v
b [47]

:[46]
push.v self.y
pushi.e 30
add.i.v

:[47]
pop.v.v local.ypos
pushi.e 651
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [49]

:[48]
push.i 400000
pop.v.i self.depth

:[49]
popenv [48]

:[50]
push.v self.charcycle
pushi.e 1
cmp.i.v EQ
bt [52]

:[51]
push.v self.charcycle
pushi.e 2
cmp.i.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [79]

:[54]
pushi.e -5
push.v self.charcycle
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.visible

:[56]
popenv [55]
push.v self.chartype
pushi.e 2
cmp.i.v EQ
bf [66]

:[57]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushi.e 380
conv.i.v
b [60]

:[59]
push.v self.x
pushi.e 85
add.i.v

:[60]
pop.v.v local.xpos
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 110
conv.i.v
b [63]

:[62]
push.v self.y
pushi.e 15
add.i.v

:[63]
pop.v.v local.ypos
pushi.e 996
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [65]

:[64]
push.i 400000
pop.v.i self.depth

:[65]
popenv [64]

:[66]
push.v self.chartype
pushi.e 3
cmp.i.v EQ
bf [79]

:[67]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
pushi.e 390
conv.i.v
b [70]

:[69]
push.v self.x
pushi.e 90
add.i.v

:[70]
pop.v.v local.xpos
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 140
conv.i.v
b [73]

:[72]
push.v self.y
pushi.e 35
add.i.v

:[73]
pop.v.v local.ypos
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1497
conv.i.v
b [76]

:[75]
pushi.e 1509
conv.i.v

:[76]
pop.v.v local.ral_sprite
pushloc.v local.ral_sprite
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [78]

:[77]
push.i 400000
pop.v.i self.depth

:[78]
popenv [77]

:[79]
pushi.e 14
pop.v.i self.con
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[80]
push.v self.con
pushi.e 16
cmp.i.v EQ
bt [84]

:[81]
push.v self.con
pushi.e 36
cmp.i.v EQ
bt [84]

:[82]
push.v self.con
pushi.e 56
cmp.i.v EQ
bt [84]

:[83]
push.v self.con
pushi.e 76
cmp.i.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [87]

:[86]
pushi.e 0
pop.v.i self.hitmode
pushi.e 1185
pop.v.i self.sprite_index
push.d 0.05
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con

:[87]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [89]

:[88]
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
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_npc_hammerguy_slash_Step_0_gml_108_0"@15468
conv.s.v
push.s "* (Somehow^1, everyone's HP was restored.)/"@15469
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_109_0"@15470
conv.s.v
push.s "* Well^1, well^1! Don't you feel better after a nice massage^1? Huh-Hah!!/%"@15471
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 18
pop.v.i self.con

:[89]
push.v self.con
pushi.e 18
cmp.i.v EQ
bt [92]

:[90]
push.v self.con
pushi.e 38
cmp.i.v EQ
bt [92]

:[91]
push.v self.con
pushi.e 58
cmp.i.v EQ
b [93]

:[92]
push.e 1

:[93]
bf [98]

:[94]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [98]

:[95]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [97]

:[96]
pushi.e 10
pop.v.i self.onebuffer

:[97]
popenv [96]
pushi.e 0
pop.v.i self.con

:[98]
push.v self.hitmode
pushi.e 1
cmp.i.v EQ
bf [103]

:[99]
push.v self.image_index
pushi.e 4
cmp.i.v EQ
bf [101]

:[100]
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[101]
push.v self.image_index
pushi.e 10
cmp.i.v GTE
bf [103]

:[102]
pushi.e 0
pop.v.i self.image_index

:[103]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [107]

:[104]
pushi.e 1188
conv.i.v
pushi.e 160
conv.i.v
pushi.e 385
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [106]

:[105]
push.i 400000
pop.v.i self.depth

:[106]
popenv [105]
pushi.e 34
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[107]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [111]

:[108]
push.v self.char
pushi.e -9
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 36
pop.v.i self.con

:[111]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [113]

:[112]
pushi.e 3
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_npc_hammerguy_slash_Step_0_gml_153_0"@15472
conv.s.v
push.s "* (The Broken Cake was fixed beyond recognition.)/"@15473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_154_0"@15474
conv.s.v
push.s "* (The Broken Cake became the TOPCAKE.)/"@15475
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_155_0"@15476
conv.s.v
push.s "* This is truly a tremendous cake^1.&* Use its power wisely.../%"@15477
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 38
pop.v.i self.con

:[113]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [117]

:[114]
pushi.e 1189
conv.i.v
pushi.e 170
conv.i.v
pushi.e 390
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.char
push.v self.char
pushi.e -9
pushenv [116]

:[115]
push.i 400000
pop.v.i self.depth

:[116]
popenv [115]
pushi.e 54
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [121]

:[118]
push.v self.char
pushi.e -9
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
pushi.e 56
pop.v.i self.con

:[121]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [123]

:[122]
pushi.e 4
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_npc_hammerguy_slash_Step_0_gml_184_0"@15478
conv.s.v
push.s "* (The Broken Key parts were fixed beyond recognition.)/"@15479
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_185_0"@15480
conv.s.v
push.s "* (The Broken Key parts became the Prison Key.)/"@15481
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_186_0"@15482
conv.s.v
push.s "* .... Hmm^1,  this KEY has a terrible energy coming from it.../"@15483
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_187_0"@15484
conv.s.v
push.s "* Please understand that I only fixed it.../"@15485
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_hammerguy_slash_Step_0_gml_188_0"@15486
conv.s.v
push.s "* So that you will never have to use it./%"@15487
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 58
pop.v.i self.con

:[123]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [125]

:[124]
pushi.e 281
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [126]

:[125]
push.e 0

:[126]
bf [132]

:[127]
pushi.e 1
pop.v.i global.interact
push.v self.times_fused
push.e 1
add.i.v
pop.v.v self.times_fused
push.v self.times_fused
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_hammerguy_slash_Step_0_gml_216_0"@15488
conv.s.v
push.s "* Huh-hah^1! Let's feel my technique!/%"@2286
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
b [131]

:[129]
push.v self.times_fused
pushi.e 2
cmp.i.v GTE
bf [131]

:[130]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_hammerguy_slash_Step_0_gml_221_0"@15489
conv.s.v
push.s "* Let's pick up the pace./%"@15490
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[131]
pushi.e 71
pop.v.i self.con

:[132]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [134]

:[133]
pushi.e 1
pop.v.i global.interact

:[134]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [136]

:[135]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 72
pop.v.i self.con

:[139]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [144]

:[140]
pushi.e 75
pop.v.i self.con
push.i 68097
setowner.e
push.v self.times_fused
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
pushi.e 50
conv.i.v
b [143]

:[142]
pushi.e 18
conv.i.v

:[143]
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[144]
push.v self.con
pushi.e 77
cmp.i.v EQ
bf [146]

:[145]
pushi.e 78
pop.v.i self.con
push.s "obj_npc_hammerguy_slash_Step_0_gml_251_0"@15491
conv.s.v
push.v self.fusionResultName
push.s "* (You got ~1!)/%"@15492
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[146]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [148]

:[147]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [149]

:[148]
push.e 0

:[149]
bf [end]

:[150]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]