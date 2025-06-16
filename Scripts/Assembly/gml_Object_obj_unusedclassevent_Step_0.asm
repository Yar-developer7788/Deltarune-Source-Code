.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i global.darkzone
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 29
pop.v.v [array]self.flag
pushi.e 10
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_16_0"@15190
conv.s.v
push.s "* Wh..^1. what happened!^2?&* I can't see anything!!/%"@15191
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
pushi.e 3
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
pushi.e 186
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[11]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [13]

:[12]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [15]

:[14]
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[15]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [17]

:[16]
pushi.e 67
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_52_0"@15192
conv.s.v
push.s "* Hey^1, WATCH IT!/%"@15193
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
pushi.e 12
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[17]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [19]

:[18]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 14
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[22]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [24]

:[23]
pushi.e 178
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [26]

:[25]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[26]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [30]

:[27]
push.s "The Return"@15194
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.lightsoff
pushi.e 982
conv.i.v
pushi.e 70
conv.i.v
pushi.e 146
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [29]

:[28]
push.i 100000
pop.v.i self.depth

:[29]
popenv [28]
pushi.e 24
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_94_0"@15195
conv.s.v
push.s "* H..^1. Huh...?/"@15196
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_95_0"@15197
conv.s.v
push.s "* The unused classroom...?/"@15198
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_96_0"@15199
conv.s.v
push.s "\\E3* How'd we get here...?/%"@15200
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 26
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[32]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [34]

:[33]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [39]

:[36]
push.v self.s
pushi.e -9
pushenv [38]

:[37]
push.d 0.1
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.vspeed

:[38]
popenv [37]
pushi.e 27
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[39]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [43]

:[40]
push.v self.s
pushi.e -9
pushenv [42]

:[41]
call.i gml_Script_scr_halt(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 29
pop.v.i self.con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i global.fe

:[43]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [47]

:[44]
push.v self.s
pushi.e -9
pushenv [46]

:[45]
pushi.e 978
pop.v.i self.sprite_index

:[46]
popenv [45]
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_123_0"@15201
conv.s.v
push.s "* ... Hey, Kris.../"@15202
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_124_0"@15203
conv.s.v
push.s "\\E1* What.../"@15204
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_125_0"@15205
conv.s.v
push.s "\\E0* What just happened...?/"@15206
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_126_0"@15207
conv.s.v
push.s "\\E3* Like^1, that wasn't a dream or anything^1, was it...?/%"@15208
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 31
pop.v.i self.con

:[47]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [49]

:[48]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 32
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[52]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [56]

:[53]
push.v self.s
pushi.e -9
pushenv [55]

:[54]
pushi.e 982
pop.v.i self.sprite_index

:[55]
popenv [54]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_141_0"@15209
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_142_0"@15210
conv.s.v
push.s "\\E3* Anyway, as I was SAYING,/"@15211
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_143_0"@15212
conv.s.v
push.s "\\E2* Let's just tell Alphys we couldn't find any chalk./%"@15213
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
popz.v
pushi.e 34
pop.v.i self.con

:[56]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [58]

:[57]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
push.v self.s
pushi.e -9
pushenv [62]

:[61]
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[62]
popenv [61]
pushi.e 35
pop.v.i self.con

:[63]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [68]

:[64]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 140
cmp.i.v GTE
bf [68]

:[65]
pushi.e 63
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.visible

:[67]
popenv [66]
pushi.e 37
pop.v.i self.con

:[68]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [72]

:[69]
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 250
cmp.i.v LT
bf [71]

:[70]
pushi.e 250
pop.v.i global.plot

:[71]
pushi.e 38
pop.v.i self.con

:[72]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [78]

:[73]
push.v 82.y
push.v 158.y
pushi.e 15
sub.i.v
cmp.v.v LTE
bf [75]

:[74]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 1
pop.v.i global.interact
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_unusedclassevent_slash_Step_0_gml_186_0"@15214
conv.s.v
push.s "* You gathered all the junk off the floor.../%"@15215
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fd
pushi.e 3
push.v self.fd
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[78]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [80]

:[79]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [92]

:[82]
pushi.e 150
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 302
pop.v.v [array]self.flag
pushi.e 74
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.trashball
pushi.e 22
push.v self.trashball
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.lightsoff
pushi.e 68
pushenv [85]

:[83]
push.v self.x
pushi.e 108
cmp.i.v EQ
bf [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [83]
pushi.e 133
pushenv [91]

:[86]
push.v self.x
pushi.e 80
cmp.i.v GTE
bf [88]

:[87]
push.v self.x
pushi.e 210
cmp.i.v LTE
b [89]

:[88]
push.e 0

:[89]
bf [91]

:[90]
call.i instance_destroy(argc=0)
popz.v

:[91]
popenv [86]

:[92]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [96]

:[93]
pushi.e 190
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 55
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[96]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_unusedclassevent_slash_Step_0_gml_225_0"@15218
conv.s.v
push.s "* ... and turned it into a giant dusty ball./%"@15219
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 57
pop.v.i self.con

:[98]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [100]

:[99]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [101]

:[100]
push.e 0

:[101]
bf [end]

:[102]
pushi.e 58
pop.v.i self.con
pushglb.v global.plot
pushi.e 9
cmp.i.v LT
bf [104]

:[103]
pushi.e 9
pop.v.i global.plot

:[104]
pushi.e 0
pop.v.i global.interact

:[end]