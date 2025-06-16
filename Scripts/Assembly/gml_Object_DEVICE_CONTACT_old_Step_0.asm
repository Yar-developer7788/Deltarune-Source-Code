.localvar 2 arguments

:[0]
push.v self.EVENT
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 666
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_5_0"@29048
conv.s.v
push.s " ^9 ^8 %"@29049
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_6_0"@29050
conv.s.v
push.s " ARE YOU^6& THERE^6?\\M1 ^6 %"@29051
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_7_0"@29052
conv.s.v
push.s "^6 \\M0ARE WE^6&CONNECTED^6?\\M1 ^6 ^6 %%"@29053
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_8_0"@29054
conv.s.v
push.s "\\M0..."@29055
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.EVENT
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 110
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[2]
push.v self.EVENT
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 255
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 880
conv.i.v
pushi.e 120
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.SOUL
push.d 0.5
push.v self.SOUL
pushi.e -9
pop.v.d [stacktop]self.momentum
pushi.e 2
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[7]
push.v self.EVENT
pushi.e 3
cmp.i.v EQ
bf [10]

:[8]
pushi.e 1
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 4
pop.v.i self.EVENT
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [10]

:[9]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[10]
push.v self.EVENT
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_33_0"@29057
conv.s.v
push.s "\\M0EXCELLENT^4.\\M1 ^6 %"@29058
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_34_0"@29059
conv.s.v
push.s "^6  \\M0TRULY^4&EXCELLENT^4.\\M1 ^6 %"@29060
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_35_0"@29061
conv.s.v
push.s "\\M2 \\M0  NOW^4.\\M1 ^7 %"@29062
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_36_0"@29063
conv.s.v
push.s "\\M0  WE MAY^5&  BEGIN^4.\\M1 ^6 %%"@29064
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 110
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
push.d 5.1
pop.v.d self.EVENT

:[12]
push.v self.EVENT
push.d 5.1
cmp.d.v EQ
bf [15]

:[13]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
push.v self.FADED
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 1
pop.v.i self.FADED

:[19]
push.v self.EVENT
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
push.i 231459
setowner.e
push.s "AUDIO_ANOTHERHIM.ogg"@29065
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.02
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.d 0.02
pop.v.d self.PITCH
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
popz.v
pushi.e 8
pop.v.i self.EVENT

:[21]
push.v self.EVENT
push.d 6.2
cmp.d.v EQ
bf [23]

:[22]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 1
pop.v.i self.OBMADE
pushi.e 7
pop.v.i self.EVENT

:[26]
push.v self.EVENT
push.d 5.1
cmp.d.v EQ
bf [28]

:[27]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 255
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.HEARTMADE
push.v self.SOUL
pushi.e -9
dup.i 4
push.v [stacktop]self.t
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.t
push.d -0.5
push.v self.SOUL
pushi.e -9
pop.v.d [stacktop]self.momentum
push.d 5.2
pop.v.d self.EVENT
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[31]
push.v self.EVENT
pushi.e 8
cmp.i.v EQ
bf [36]

:[32]
push.v self.PITCH
push.d 0.96
cmp.d.v LT
bf [34]

:[33]
push.v self.PITCH
push.d 0.02
add.d.v
pop.v.v self.PITCH
b [35]

:[34]
pushi.e 9
pop.v.i self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[35]
push.v self.PITCH
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[36]
push.v self.EVENT
pushi.e 10
cmp.i.v EQ
bf [38]

:[37]
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_107_0"@29067
conv.s.v
push.s "\\M0FIRST^4.\\M1 ^6 %"@29068
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_111_0"@29069
conv.s.v
push.s "\\M0YOU MUST CREATE^6&A VESSEL^4.\\M1 ^6 %%"@29070
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 16
pop.v.i self.EVENT

:[38]
push.v self.EVENT
pushi.e 15
cmp.i.v EQ
bf [42]

:[39]
pushi.e 64
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]

:[42]
push.v self.EVENT
pushi.e 16
cmp.i.v EQ
bf [44]

:[43]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_CONTACT_slash_Step_0_gml_125_0"@29071
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_126_0"@29073
conv.s.v
push.s "SELECT THE HEAD&THAT YOU PREFER."@29074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 75
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 17
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[47]
push.v self.EVENT
pushi.e 18
cmp.i.v EQ
bf [49]

:[48]
pushi.e 19
pop.v.i self.EVENT
pushi.e 885
conv.i.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.GM

:[49]
push.v self.EVENT
pushi.e 19
cmp.i.v EQ
bf [53]

:[50]
push.v self.GM
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [52]

:[51]
push.d 19.1
pop.v.d self.EVENT

:[52]
pushi.e 24
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[53]
push.v self.EVENT
push.d 20.1
cmp.d.v EQ
bf [57]

:[54]
pushi.e 64
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_148_0"@29076
conv.s.v
push.s "^1 %"@29077
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_149_0"@29078
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_150_0"@29079
conv.s.v
push.s "SELECT THE TORSO&THAT YOU PREFER."@29080
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 75
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 21
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[57]
push.v self.EVENT
pushi.e 22
cmp.i.v EQ
bf [59]

:[58]
pushi.e 885
conv.i.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.GM
pushi.e 1
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.s
pushi.e 2
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.STEP
pushi.e 23
pop.v.i self.EVENT

:[59]
push.v self.EVENT
pushi.e 23
cmp.i.v EQ
bf [63]

:[60]
push.v self.GM
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [62]

:[61]
push.d 23.1
pop.v.d self.EVENT

:[62]
pushi.e 24
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[63]
push.v self.EVENT
push.d 24.1
cmp.d.v EQ
bf [67]

:[64]
pushi.e 64
pushenv [66]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[66]
popenv [65]
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_173_0"@29082
conv.s.v
push.s "^1 \\M0 %"@29083
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_174_0"@29084
conv.s.v
push.s "SELECT THE LEGS&THAT YOU PREFER."@29085
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 75
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 25
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[67]
push.v self.EVENT
pushi.e 26
cmp.i.v EQ
bf [69]

:[68]
pushi.e 885
conv.i.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.GM
pushi.e 2
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.s
pushi.e 3
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.STEP
pushi.e 27
pop.v.i self.EVENT

:[69]
push.v self.EVENT
pushi.e 27
cmp.i.v EQ
bf [73]

:[70]
push.v self.GM
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [72]

:[71]
pushi.e 28
pop.v.i self.EVENT

:[72]
pushi.e 24
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[73]
push.v self.EVENT
pushi.e 29
cmp.i.v EQ
bf [77]

:[74]
pushi.e 667
pop.v.i global.typer
pushi.e 64
pushenv [76]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
popenv [75]
pushi.e 885
conv.i.v
pushi.e 90
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.GM
pushi.e 1
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.CANCEL
pushi.e -1
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.FINISH
pushi.e -1
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.s
pushi.e 3
push.v self.GM
pushi.e -9
pop.v.i [stacktop]self.STEP
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_205_0"@29086
conv.s.v
push.s "\\M0THIS^3 IS YOUR BODY^3.\\M1 ^5 %"@29087
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_206_0"@29088
conv.s.v
push.s "\\M0 ^1 %"@29089
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_207_0"@29090
conv.s.v
push.s "DO YOU ACCEPT IT?"@29091
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 30
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 110
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[77]
push.v self.EVENT
pushi.e 31
cmp.i.v EQ
bf [79]

:[78]
pushi.e 881
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.choice
pushi.e 32
pop.v.i self.EVENT

:[79]
push.v self.EVENT
pushi.e 32
cmp.i.v EQ
bf [88]

:[80]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bt [82]

:[81]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
b [83]

:[82]
push.e 1

:[83]
bf [88]

:[84]
pushi.e 33
pop.v.i self.EVENT
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [88]

:[85]
push.v self.GM
pushi.e -9
pushenv [87]

:[86]
pushi.e 1
pop.v.i self.FINISH

:[87]
popenv [86]
pushi.e 15
pop.v.i self.EVENT
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[88]
push.v self.EVENT
pushi.e 33
cmp.i.v EQ
bf [90]

:[89]
pushi.e 34
pop.v.i self.EVENT
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[90]
push.v self.EVENT
pushi.e 35
cmp.i.v EQ
bf [94]

:[91]
pushi.e 64
pushenv [93]

:[92]
call.i instance_destroy(argc=0)
popz.v

:[93]
popenv [92]
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_240_0"@29092
conv.s.v
push.s "\\M0   EXCELLENT^3.\\M1 ^5 %"@29093
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_241_0"@29094
conv.s.v
push.s "\\M0YOU HAVE CREATED^3&A WONDERFUL FORM^3.\\M1 ^5 %"@29095
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_242_0"@29096
conv.s.v
push.s "\\M0       NOW^3.\\M1 ^5 %"@29097
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_243_0"@29098
conv.s.v
push.s "\\M0LET US SHAPE ITS&MIND^3 AS YOUR OWN.^3 \\M1 ^5 %%"@29099
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 36
pop.v.i self.EVENT

:[94]
push.v self.EVENT
pushi.e 36
cmp.i.v EQ
bf [96]

:[95]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 0
pop.v.i self.GMSINE
pushi.e 37
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_258_0"@29101
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_259_0"@29102
conv.s.v
push.s "WHAT IS ITS&FAVORITE FOOD?"@29103
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[99]
push.v self.EVENT
pushi.e 37
cmp.i.v EQ
bf [101]

:[100]
push.v self.GMSINE
pushi.e 1
add.i.v
pop.v.v self.GMSINE
push.v self.GM
pushi.e -9
dup.i 4
push.v [stacktop]self.initx
push.v self.GMSINE
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.i.v [stacktop]self.initx

:[101]
push.v self.EVENT
pushi.e 38
cmp.i.v EQ
bf [108]

:[102]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 39
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [107]

:[103]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[104]
push.v self.i
pushi.e 6
cmp.i.v LTE
bf [106]

:[105]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [104]

:[106]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_288_0"@29105
conv.s.v
push.s "SWEET"@29106
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_289_0"@29107
conv.s.v
push.s "SOFT"@29108
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_290_0"@29109
conv.s.v
push.s "SOUR"@29110
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_291_0"@29111
conv.s.v
push.s "SALTY"@29112
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 3
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_292_0"@29113
conv.s.v
push.s "PAIN"@29114
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 4
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_293_0"@29115
conv.s.v
push.s "COLD"@29116
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 5
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 5
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[107]
popenv [103]

:[108]
push.v self.EVENT
pushi.e 39
cmp.i.v EQ
bf [111]

:[109]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [111]

:[110]
push.i 231204
setowner.e
pushglb.v global.choice
pushi.e -5
pushi.e 903
pop.v.v [array]self.flag
pushi.e 40
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[111]
push.v self.EVENT
pushi.e 41
cmp.i.v EQ
bf [115]

:[112]
pushi.e 64
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 42
pop.v.i self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_323_0"@29117
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_324_0"@29118
conv.s.v
push.s "YOUR FAVORITE&BLOOD TYPE?"@29119
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[115]
push.v self.EVENT
pushi.e 43
cmp.i.v EQ
bf [122]

:[116]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 44
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [121]

:[117]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[118]
push.v self.i
pushi.e 5
cmp.i.v LTE
bf [120]

:[119]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [118]

:[120]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_343_0"@29120
conv.s.v
push.s "A"@1192
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_344_0"@29121
conv.s.v
push.s "AB"@29122
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_345_0"@29123
conv.s.v
push.s "B"@3500
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_346_0"@29124
conv.s.v
push.s "C"@9479
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 3
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_347_0"@29125
conv.s.v
push.s "D"@9480
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 4
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 4
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[121]
popenv [117]

:[122]
push.v self.EVENT
pushi.e 44
cmp.i.v EQ
bf [125]

:[123]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [125]

:[124]
push.i 231204
setowner.e
pushglb.v global.choice
pushi.e -5
pushi.e 904
pop.v.v [array]self.flag
pushi.e 45
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[125]
push.v self.EVENT
pushi.e 46
cmp.i.v EQ
bf [129]

:[126]
pushi.e 64
pushenv [128]

:[127]
call.i instance_destroy(argc=0)
popz.v

:[128]
popenv [127]
pushi.e 47
pop.v.i self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_381_0"@29126
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_382_0"@29127
conv.s.v
push.s "WHAT COLOR DOES&IT LIKE MOST?"@29128
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[129]
push.v self.EVENT
pushi.e 48
cmp.i.v EQ
bf [136]

:[130]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 49
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [135]

:[131]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[132]
push.v self.i
pushi.e 3
cmp.i.v LTE
bf [134]

:[133]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [132]

:[134]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_401_0"@29129
conv.s.v
push.s "RED"@29130
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_402_0"@29131
conv.s.v
push.s "BLUE"@29132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_403_0"@29133
conv.s.v
push.s "GREEN"@29134
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_404_0"@29135
conv.s.v
push.s "CYAN"@29136
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 3
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 3
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[135]
popenv [131]

:[136]
push.v self.EVENT
pushi.e 49
cmp.i.v EQ
bf [139]

:[137]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [139]

:[138]
push.i 231204
setowner.e
pushglb.v global.choice
pushi.e -5
pushi.e 905
pop.v.v [array]self.flag
push.d 50.5
pop.v.d self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[139]
push.v self.EVENT
push.d 51.5
cmp.d.v EQ
bf [143]

:[140]
pushi.e 64
pushenv [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
push.d 52.5
pop.v.d self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_438_0"@29137
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_439_0"@29138
conv.s.v
push.s "PLEASE GIVE IT&A GIFT."@29139
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[143]
push.v self.EVENT
push.d 53.5
cmp.d.v EQ
bf [150]

:[144]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
push.d 54.5
pop.v.d self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [149]

:[145]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[146]
push.v self.i
pushi.e 4
cmp.i.v LTE
bf [148]

:[147]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [146]

:[148]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_459_0"@29140
conv.s.v
push.s "KINDNESS"@29141
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_460_0"@29142
conv.s.v
push.s "MIND"@29143
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_461_0"@29144
conv.s.v
push.s "AMBITION"@29145
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_462_0"@29146
conv.s.v
push.s "BRAVERY"@29147
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 3
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_463_0"@29148
conv.s.v
push.s "VOICE"@29149
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 4
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 4
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[149]
popenv [145]

:[150]
push.v self.EVENT
push.d 54.5
cmp.d.v EQ
bf [153]

:[151]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [153]

:[152]
push.i 231204
setowner.e
pushi.e 1
pushglb.v global.choice
sub.v.i
pushi.e -5
pushi.e 909
pop.v.v [array]self.flag
pushi.e 50
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[153]
push.v self.EVENT
pushi.e 51
cmp.i.v EQ
bf [157]

:[154]
pushi.e 64
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 52
pop.v.i self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_497_0"@29150
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_498_0"@29151
conv.s.v
push.s "HOW DO YOU FEEL&ABOUT YOUR CREATION?&(IT WILL NOT HEAR.)"@29152
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[157]
push.v self.EVENT
pushi.e 53
cmp.i.v EQ
bf [164]

:[158]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 54
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [163]

:[159]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[160]
push.v self.i
pushi.e 3
cmp.i.v LTE
bf [162]

:[161]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [160]

:[162]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_518_0"@29153
conv.s.v
push.s "LOVE"@29154
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_519_0"@29155
conv.s.v
push.s "HOPE"@29156
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_520_0"@29157
conv.s.v
push.s "DISGUST"@29158
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_521_0"@29159
conv.s.v
push.s "FEAR"@28756
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 3
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 3
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[163]
popenv [159]

:[164]
push.v self.EVENT
pushi.e 54
cmp.i.v EQ
bf [167]

:[165]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [167]

:[166]
push.i 231204
setowner.e
pushglb.v global.choice
pushi.e -5
pushi.e 906
pop.v.v [array]self.flag
push.d 54.1
pop.v.d self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[167]
push.v self.EVENT
push.d 55.1
cmp.d.v EQ
bf [171]

:[168]
pushi.e 64
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
pushi.e 56
pop.v.i self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_555_0"@29160
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_556_0"@29161
conv.s.v
push.s "HAVE YOU ANSWERED&HONESTLY?"@29162
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 30
conv.i.v
pushi.e 65
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[171]
push.v self.EVENT
pushi.e 57
cmp.i.v EQ
bf [178]

:[172]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 58
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [177]

:[173]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[174]
push.v self.i
pushi.e 1
cmp.i.v LTE
bf [176]

:[175]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [174]

:[176]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_575_0"@29163
conv.s.v
push.s "YES"@28922
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_576_0"@29164
conv.s.v
push.s "NO"@28920
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 1
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[177]
popenv [173]

:[178]
push.v self.EVENT
pushi.e 58
cmp.i.v EQ
bf [181]

:[179]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [181]

:[180]
push.i 231204
setowner.e
pushglb.v global.choice
pushi.e -5
pushi.e 907
pop.v.v [array]self.flag
pushi.e 59
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[181]
push.v self.EVENT
pushi.e 60
cmp.i.v EQ
bf [185]

:[182]
pushi.e 64
pushenv [184]

:[183]
call.i instance_destroy(argc=0)
popz.v

:[184]
popenv [183]
pushi.e 61
pop.v.i self.EVENT
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_611_0"@29165
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_612_0"@29166
conv.s.v
push.s "YOU ACKNOWLEDGE&THE POSSIBILITY OF&PAIN AND SEIZURE."@29167
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[185]
push.v self.EVENT
pushi.e 62
cmp.i.v EQ
bf [192]

:[186]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 63
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [191]

:[187]
pushi.e 2
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.i

:[188]
push.v self.i
pushi.e 1
cmp.i.v LTE
bf [190]

:[189]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 16
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [188]

:[190]
push.i 167420
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_631_0"@29168
conv.s.v
push.s "YES"@28922
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_632_0"@29169
conv.s.v
push.s "NO"@28920
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
pushi.e 0
pop.v.i self.CURX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 1
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[191]
popenv [187]

:[192]
push.v self.EVENT
pushi.e 63
cmp.i.v EQ
bf [195]

:[193]
pushglb.v global.choice
pushi.e -1
cmp.i.v GT
bf [195]

:[194]
push.i 231204
setowner.e
pushglb.v global.choice
pushi.e -5
pushi.e 908
pop.v.v [array]self.flag
pushi.e 64
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[195]
push.v self.EVENT
pushi.e 65
cmp.i.v EQ
bf [200]

:[196]
pushi.e 64
pushenv [198]

:[197]
call.i instance_destroy(argc=0)
popz.v

:[198]
popenv [197]
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_664_0"@29170
conv.s.v
push.s "\\M0UNDERSTOOD^3.\\M1 ^5 %%"@29171
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 90
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
push.d 65.5
pop.v.d self.EVENT
push.i 68097
setowner.e
pushi.e 32
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 885
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [200]

:[199]
push.v self.GM
pushi.e -9
push.v [stacktop]self.initx
pop.v.v self.gmx
push.v self.GM
pushi.e -9
push.v [stacktop]self.inity
pop.v.v self.gmy

:[200]
push.v self.EVENT
push.d 65.5
cmp.d.v EQ
bf [206]

:[201]
pushi.e 885
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [206]

:[202]
push.v self.GM
pushi.e -9
push.v [stacktop]self.initx
push.v self.gmx
pushi.e 24
sub.i.v
cmp.v.v GT
bf [204]

:[203]
push.v self.GM
pushi.e -9
dup.i 4
push.v [stacktop]self.initx
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.initx

:[204]
push.v self.GM
pushi.e -9
push.v [stacktop]self.inity
push.v self.gmy
pushi.e 56
add.i.v
cmp.v.v LT
bf [206]

:[205]
push.v self.GM
pushi.e -9
dup.i 4
push.v [stacktop]self.inity
pushi.e 2
add.i.v
pop.i.v [stacktop]self.inity

:[206]
push.v self.EVENT
push.d 66.5
cmp.d.v EQ
bf [208]

:[207]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [209]

:[208]
push.e 0

:[209]
bf [217]

:[210]
pushi.e 64
pushenv [212]

:[211]
call.i instance_destroy(argc=0)
popz.v

:[212]
popenv [211]
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_697_0"@29175
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_698_0"@29176
conv.s.v
push.s "NAME YOUR VESSEL."@29177
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 20
conv.i.v
pushi.e 68
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 67
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [214]

:[213]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[214]
popenv [213]
push.v self.CHOICE
pushi.e -9
pushenv [216]

:[215]
pushi.e 9
pop.v.i self.STRINGMAX

:[216]
popenv [215]

:[217]
push.v self.EVENT
pushi.e 67
cmp.i.v EQ
bf [223]

:[218]
push.v self.CHOICE
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [222]

:[219]
push.v self.CHOICE
pushi.e -9
push.v [stacktop]self.NAMESTRING
pop.v.v global.name
pushglb.v global.name
push.s "GASTER"@29038
cmp.s.v EQ
bf [221]

:[220]
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[221]
b [223]

:[222]
pushi.e 68
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[223]
push.v self.EVENT
pushi.e 69
cmp.i.v EQ
bf [232]

:[224]
pushi.e 64
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
pushi.e 0
pop.v.i self.FOUND
pushglb.v global.name
pop.v.v self.FN
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_729_0"@29178
conv.s.v
pushglb.v global.name
push.s "\\M0WE CALLED IT^4&\"~1.\"^6 \\M1 ^5 %"@29179
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_730_0"@29180
conv.s.v
push.s "\\M0AND WHAT ABOUT^3&THE CREATOR^3?\\M1 ^5 %%"@29181
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.FOUND
pushi.e 1
cmp.i.v EQ
bt [228]

:[227]
push.v self.FOUND
pushi.e 2
cmp.i.v EQ
b [229]

:[228]
push.e 1

:[229]
bf [231]

:[230]
push.s "DEVICE_CONTACT_slash_Step_0_gml_734_0"@29182
conv.s.v
pushglb.v global.name
push.s "\\M0\"~1.\"^6 \\M1 ^5 %"@29183
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_735_0"@29184
conv.s.v
push.s "\\M0AN INTERESTING&COINCIDENCE^3.\\M1 ^5 %"@29185
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_736_0"@29186
conv.s.v
push.s "\\M0AND WHAT ABOUT^3&THE CREATOR^3?\\M1 ^5 %%"@29181
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[231]
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 70
pop.v.i self.EVENT

:[232]
push.v self.EVENT
pushi.e 70
cmp.i.v EQ
bf [234]

:[233]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [235]

:[234]
push.e 0

:[235]
bf [241]

:[236]
pushi.e 64
pushenv [238]

:[237]
call.i instance_destroy(argc=0)
popz.v

:[238]
popenv [237]
push.s "DEVICE_CONTACT_slash_Step_0_gml_755_0"@29187
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_756_0"@29188
conv.s.v
push.s "YOUR OWN NAME."@29189
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 20
conv.i.v
pushi.e 88
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 71
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [240]

:[239]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[240]
popenv [239]

:[241]
push.v self.EVENT
pushi.e 71
cmp.i.v EQ
bf [247]

:[242]
push.v self.CHOICE
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [246]

:[243]
push.v self.CHOICE
pushi.e -9
push.v [stacktop]self.NAMESTRING
pop.v.v global.truename
pushglb.v global.truename
push.s "GASTER"@29038
cmp.s.v EQ
bf [245]

:[244]
call.i game_end(argc=0)
popz.v

:[245]
b [247]

:[246]
pushi.e 72
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[247]
push.v self.EVENT
pushi.e 73
cmp.i.v EQ
bf [257]

:[248]
pushi.e 64
pushenv [250]

:[249]
call.i instance_destroy(argc=0)
popz.v

:[250]
popenv [249]
pushi.e 0
pop.v.i self.FOUND
pushglb.v global.truename
pop.v.v self.FN
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_785_0"@29190
conv.s.v
pushglb.v global.truename
push.s "\\M0\"~1.\"^6 \\M1 ^5 %"@29183
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_786_0"@29191
conv.s.v
push.s "\\M0EXCELLENT^3.\\M1 ^5 %"@29192
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_787_0"@29193
conv.s.v
push.s "\\M0TRULY^3 &EXCELLENT^3.\\M1 ^5 %%"@29194
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.FOUND
pushi.e 1
cmp.i.v EQ
bf [252]

:[251]
push.s "DEVICE_CONTACT_slash_Step_0_gml_790_0"@29195
conv.s.v
push.s "\\M0HOW INTERESTING.\\M1 ^5 %%"@29196
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[252]
push.v self.FOUND
pushi.e 2
cmp.i.v EQ
bf [254]

:[253]
push.s "DEVICE_CONTACT_slash_Step_0_gml_794_0"@29197
conv.s.v
push.s "\\M0YOU ARE ABOUT TO&MEET SOMEON^3E \\M1 ^5 %"@29198
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_795_0"@29199
conv.s.v
push.s "\\M0VERY^1, VERY^4&WONDERFUL^3. \\M1 ^5 %%"@29200
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[254]
pushglb.v global.name
pushglb.v global.truename
cmp.v.v EQ
bf [256]

:[255]
push.s "DEVICE_CONTACT_slash_Step_0_gml_800_0"@29201
conv.s.v
push.s "\\M0OF COURSE^5&OF COURSE.\\M1 ^5 %"@29202
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_801_0"@29203
conv.s.v
push.s "\\M0OF COURSE^5 THEY&ARE THE SAME^4.\\M1 ^5 %%"@29204
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[256]
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 74
pop.v.i self.EVENT

:[257]
push.v self.EVENT
pushi.e 74
cmp.i.v EQ
bf [259]

:[258]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [260]

:[259]
push.e 0

:[260]
bf [262]

:[261]
push.i 231115
setowner.e
pushglb.v global.name
pushi.e -5
pushi.e 0
pop.v.v [array]self.othername
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_816_0"@29205
conv.s.v
pushglb.v global.truename
push.s "\\M0\"~1.\"^5 \\M1 ^5 %"@29206
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_817_0"@29207
conv.s.v
push.s "\\M0THANK YOU^5&FOR YOUR TIME^4. \\M1 ^5 %"@29208
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_818_0"@29209
conv.s.v
push.s "\\M0YOUR ANSWERS^3 \\M1 ^5 %"@29210
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_819_0"@29211
conv.s.v
push.s "\\M0YOUR WONDERFUL^5&CREATION^6 %%"@29212
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 75
pop.v.i self.EVENT

:[262]
push.v self.EVENT
pushi.e 75
cmp.i.v EQ
bf [264]

:[263]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [265]

:[264]
push.e 0

:[265]
bf [271]

:[266]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 33
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 885
pushenv [268]

:[267]
call.i instance_destroy(argc=0)
popz.v

:[268]
popenv [267]
pushi.e 887
pushenv [270]

:[269]
call.i instance_destroy(argc=0)
popz.v

:[270]
popenv [269]
pushi.e 0
pop.v.i self.OBMADE
pushi.e 76
pop.v.i self.EVENT
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[271]
push.v self.EVENT
pushi.e 77
cmp.i.v EQ
bf [273]

:[272]
pushi.e 2
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_839_0"@29213
conv.s.v
push.s "  Will now b^3e&  discarded^6.%"@29214
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_840_0"@29215
conv.s.v
push.s "No one can choose&who they are&in this world^5.%%"@29216
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 78
pop.v.i self.EVENT

:[273]
push.v self.EVENT
pushi.e 78
cmp.i.v EQ
bf [275]

:[274]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [276]

:[275]
push.e 0

:[276]
bf [278]

:[277]
pushi.e 2
pop.v.i global.typer
push.i 231459
setowner.e
push.s "w.ogg"@29217
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pop.v.v self.loop1
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pop.v.v self.loop2
pushi.e 0
conv.i.v
push.v self.loop1
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v self.loop2
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.p
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_854_0"@29220
conv.s.v
push.s "You^5r& &nam^5e& & is "@29221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 145
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 98
pop.v.i self.EVENT
pushi.e 1
pop.v.i self.WHITEFADE
push.d 0.008
pop.v.d self.FADEUP
push.d -0.1
pop.v.d self.FADEFACTOR
pushi.e -20
pop.v.i self.depth

:[278]
push.v self.EVENT
pushi.e 99
cmp.i.v EQ
bf [280]

:[279]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v

:[280]
push.v self.EVENT
pushi.e 98
cmp.i.v EQ
bf [283]

:[281]
push.v self.p
push.d 0.008
add.d.v
pop.v.v self.p
push.v self.p
push.v self.loop1
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.v self.p
push.d 1.2
mul.d.v
push.v self.loop2
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.v self.p
push.d 1.5
cmp.d.v GTE
bf [283]

:[282]
pushi.e 99
pop.v.i self.EVENT
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[283]
push.v self.EVENT
pushi.e 100
cmp.i.v EQ
bf [285]

:[284]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [286]

:[285]
push.e 0

:[286]
bf [288]

:[287]
push.i 231459
setowner.e
push.s "w.ogg"@29217
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
popz.v
pushi.e 101
pop.v.i self.EVENT
pushi.e 999
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_889_0"@29222
conv.s.v
push.s "Kris...^6! %"@29223
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_890_0"@29224
conv.s.v
push.s "Wake up^6! %"@29225
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_891_0"@29226
conv.s.v
push.s "KRIS...!^6 "@29227
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.i 68097
setowner.e
pushi.e 350
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 64
conv.i.v
pushi.e 90
conv.i.v
pushi.e 125
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[288]
push.v self.EVENT
pushi.e 102
cmp.i.v EQ
bf [290]

:[289]
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v

:[290]
push.v self.EVENT
pushi.e 900
cmp.i.v EQ
bf [292]

:[291]
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_CONTACT_slash_Step_0_gml_928_0"@29228
conv.s.v
push.s "\\M0 FIRST^3.\\M1 ^6 %"@29229
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_929_0"@29230
conv.s.v
push.s "\\M0 %"@29072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "DEVICE_CONTACT_slash_Step_0_gml_930_0"@29231
conv.s.v
push.s "^2 ARE YOU&PHOTOSENSITIVE? ^6 ^6 "@29232
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 50
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e 919
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[292]
push.v self.EVENT
pushi.e 920
cmp.i.v EQ
bf [294]

:[293]
pushi.e 881
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.choice
pushi.e 930
pop.v.i self.EVENT

:[294]
push.v self.EVENT
pushi.e 930
cmp.i.v EQ
bf [301]

:[295]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bt [297]

:[296]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
b [298]

:[297]
push.e 1

:[298]
bf [300]

:[299]
pushi.e 940
pop.v.i self.EVENT

:[300]
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[301]
push.v self.HEARTMADE
pushi.e 1
cmp.i.v EQ
bf [303]

:[302]
push.v self.HSINER
pushi.e 1
add.i.v
pop.v.v self.HSINER
push.v self.SOUL
pushi.e -9
push.v [stacktop]self.ystart
push.v self.HSINER
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.SOUL
pushi.e -9
pop.v.v [stacktop]self.y

:[303]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [307]

:[304]
pushi.e 64
pushenv [306]

:[305]
pushi.e 1
pop.v.i self.specfade

:[306]
popenv [305]

:[307]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [314]

:[308]
pushi.e 64
pushenv [310]

:[309]
push.v self.specfade
push.d 0.025
sub.d.v
pop.v.v self.specfade

:[310]
popenv [309]
push.v self.EVENT
pushi.e 16
cmp.i.v GTE
bf [314]

:[311]
pushi.e 64
pushenv [313]

:[312]
push.v self.specfade
push.d 0.01
sub.d.v
pop.v.v self.specfade

:[313]
popenv [312]

:[314]
push.v self.OBMADE
pushi.e 1
cmp.i.v EQ
bf [319]

:[315]
push.v self.OB_DEPTH
pushi.e 1
add.i.v
pop.v.v self.OB_DEPTH
push.v self.obacktimer
push.v self.OBM
add.v.v
pop.v.v self.obacktimer
push.v self.obacktimer
pushi.e 20
cmp.i.v GTE
bf [319]

:[316]
pushi.e 887
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.DV
pushi.e 5
push.v self.OB_DEPTH
add.v.i
push.v self.DV
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.01
push.v self.OBM
mul.v.d
push.v self.DV
pushi.e -9
pop.v.v [stacktop]self.OBSPEED
push.v self.OB_DEPTH
push.i 60000
cmp.i.v GTE
bf [318]

:[317]
pushi.e 0
pop.v.i self.OB_DEPTH

:[318]
pushi.e 0
pop.v.i self.obacktimer

:[319]
push.v self.SKIPBUFFER
pushi.e 1
sub.i.v
pop.v.v self.SKIPBUFFER
push.v self.ALREADY
pushi.e 1
cmp.i.v EQ
bf [338]

:[320]
call.i gml_Script_button2_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [323]

:[321]
push.v self.SKIPBUFFER
pushi.e 0
cmp.i.v LT
bf [323]

:[322]
push.v self.EVENT
pushi.e 75
cmp.i.v LTE
b [324]

:[323]
push.e 0

:[324]
bf [338]

:[325]
pushi.e 64
pushenv [334]

:[326]
push.v self.pos
push.v self.length
pushi.e 3
sub.i.v
cmp.v.v LT
bf [328]

:[327]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[328]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 10
cmp.i.v GTE
bf [330]

:[329]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[330]
push.v self.specfade
push.d 0.9
cmp.d.v LTE
bf [332]

:[331]
push.v self.specfade
push.d 0.1
sub.d.v
pop.v.v self.specfade

:[332]
push.v self.rate
pushi.e 1
cmp.i.v LTE
bf [334]

:[333]
pushi.e 1
pop.v.i self.rate

:[334]
popenv [326]
push.v self.EVENT
pushi.e 15
cmp.i.v GTE
bf [337]

:[335]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 6
cmp.i.v GTE
bf [337]

:[336]
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[337]
pushi.e 1
pop.v.i self.SKIPBUFFER

:[338]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[339]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[340]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]