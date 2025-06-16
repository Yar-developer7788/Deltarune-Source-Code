.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [183]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.d 1.5
pop.v.d self.con

:[3]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [5]

:[4]
push.i 231459
setowner.e
push.s "mus_school.ogg"@14979
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_18_0"@14980
conv.s.v
push.s "\\E0* So^1, does everyone have a.../%"@14981
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
pushi.e 3
pop.v.i self.con

:[5]
push.v self.con
pushi.e 3
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
bf [14]

:[9]
pushi.e 64
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.door
pushi.e -9
pushenv [11]

:[10]
pushi.e 1
pop.v.i self.image_index

:[11]
popenv [10]
pushi.e 4
pop.v.i self.con
push.v self.alphys
pushi.e -9
pushenv [13]

:[12]
pushi.e 923
pop.v.i self.sprite_index

:[13]
popenv [12]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [18]

:[15]
pushi.e 82
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.fun
pushi.e 661
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed

:[17]
popenv [16]
pushi.e 6
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[18]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [24]

:[19]
pushi.e 82
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed

:[21]
popenv [20]
push.v self.door
pushi.e -9
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.image_index

:[23]
popenv [22]
pushi.e 63
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [26]

:[25]
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_64_0"@14982
conv.s.v
push.s "\\E3* Oh... K-Kris...^1!&* We thought you weren't coming today!/"@14983
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_65_0"@14984
conv.s.v
push.s "\\E0* We're doing group projects this month.../"@14985
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_66_0"@14986
conv.s.v
push.s "\\E6* Uhhhh..^1. so^1, walk around and find a partner^1, ok?/%"@14987
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 10
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[26]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [28]

:[27]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [39]

:[30]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
popz.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 133
conv.i.v
pushi.e 51
conv.i.v
pushi.e 244
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door_readable
push.v self.alphys
pop.v.v self.alphys2
pushi.e 135
conv.i.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.y
push.v self.alphys
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.alphys
push.v self.alphys2
pushi.e -9
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]
pushi.e 68
conv.i.v
pushi.e 52
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorsolid
push.v self.doorsolid
pushi.e -9
pushenv [34]

:[33]
pushi.e 2
pop.v.i self.image_xscale

:[34]
popenv [33]
push.v self.door
pushi.e -9
pushenv [36]

:[35]
push.i 500000
pop.v.i self.depth

:[36]
popenv [35]
pushi.e 82
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.fun

:[38]
popenv [37]
pushi.e 2
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 11
pop.v.i self.con

:[39]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [41]

:[40]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 1
pop.v.i global.interact
pushi.e 21
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
pop.v.i global.interact

:[46]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [48]

:[47]
pushi.e 13
pop.v.i global.typer
pushi.e 12
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 2
pop.v.i global.facing
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_111_0"@14991
conv.s.v
push.s "* Hey^1! What^1? No^1!&* I do NOT approve this^1!&* ABORT!!/"@14992
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_112_0"@14993
conv.s.v
push.s "\\TN\\FN\\E2* What^1? B-but Kris doesn't have a.../"@14994
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_113_0"@14995
conv.s.v
push.s "\\Ta\\Fa\\E1* Noelle^1, what were you saying?/"@14996
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_114_0"@14997
conv.s.v
push.s "\\TB\\FB\\E6* She was just saying we're FINE being alone!/"@14998
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_115_0"@14999
conv.s.v
push.s "\\Tn\\FN\\E3* A-actually^1, I just wanted to know if.../"@15000
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_116_0"@15001
conv.s.v
push.s "\\Ta\\Fa\\E6* Noelle^1, can you PLEASE SPEAK UP?/%"@15002
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 23
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[48]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [50]

:[49]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [59]

:[52]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_snd_stop_all(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
push.v self.door
pushi.e -9
pushenv [54]

:[53]
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 917
pop.v.i self.sprite_index
pushi.e 5000
pop.v.i self.depth

:[54]
popenv [53]
pushi.e 982
conv.i.v
pushi.e 24
conv.i.v
pushi.e 237
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sus
push.v self.sus
pushi.e -9
pushenv [56]

:[55]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[56]
popenv [55]
pushi.e 24
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.doorsolid
pushi.e -9
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]

:[59]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [65]

:[60]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.alphys
pop.v.v self.alphys2
pushi.e 925
conv.i.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.y
push.v self.alphys
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.alphys
push.v self.alphys
pushi.e -9
pushenv [62]

:[61]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[62]
popenv [61]
push.v self.alphys2
pushi.e -9
pushenv [64]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[64]
popenv [63]
pushi.e 26
pop.v.i self.con
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[65]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [69]

:[66]
push.v self.door
pushi.e -9
pushenv [68]

:[67]
pushi.e 0
pop.v.i self.image_speed
push.i 500000
pop.v.i self.depth

:[68]
popenv [67]
pushi.e 32
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[69]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [71]

:[70]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [76]

:[73]
push.v self.sus
pushi.e -9
pushenv [75]

:[74]
push.d 0.1
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.vspeed

:[75]
popenv [74]
pushi.e 30
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[76]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [80]

:[77]
push.v self.sus
pushi.e -9
pushenv [79]

:[78]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[79]
popenv [78]
pushi.e 34
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[80]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [82]

:[81]
pushi.e 2
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 22
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_194_0"@15003
conv.s.v
push.s "* H..^1.&* Hi^1, SUSIE./%"@15004
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
pushi.e 28
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[82]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [84]

:[83]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 10
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_207_0"@15005
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_208_0"@15006
conv.s.v
push.s "* ... am I late?/"@15007
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_209_0"@15008
conv.s.v
push.s "\\Ta\\Fa\\E4* Ohh^1, n-no^1!&* You're fine^1!&* W-we were just^1, uh.../"@15009
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_210_0"@15010
conv.s.v
push.s "\\E5* Ch-choosing partners for the next group project^1, and.../"@15011
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_211_0"@15012
conv.s.v
push.s "\\E6* Ummm^1, Susie^1, you're with Kris!/"@15013
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_213_0"@15014
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_214_0"@15015
conv.s.v
push.s "* ... great./%"@15016
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 36
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[84]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [86]

:[85]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [91]

:[88]
pushi.e 37
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.alphys
pushi.e -9
pushenv [90]

:[89]
pushi.e 919
pop.v.i self.sprite_index

:[90]
popenv [89]

:[91]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [93]

:[92]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_234_0"@15017
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_235_0"@15018
conv.s.v
push.s "\\E6* N-now that everyone's here^1, I'll write the assignment!/%"@15019
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
popz.v
pushi.e 39
pop.v.i self.con

:[93]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [95]

:[94]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [100]

:[97]
push.v self.alphys
pushi.e -9
pushenv [99]

:[98]
pushi.e 923
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[99]
popenv [98]
pushi.e 40
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[100]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [104]

:[101]
push.v self.alphys
pushi.e -9
pushenv [103]

:[102]
pushi.e 920
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed

:[103]
popenv [102]
pushi.e 42
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[104]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [106]

:[105]
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_267_0"@15020
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 44
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[106]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [108]

:[107]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [113]

:[110]
pushi.e 45
pop.v.i self.con
push.v self.alphys
pushi.e -9
pushenv [112]

:[111]
pushi.e 921
pop.v.i self.sprite_index

:[112]
popenv [111]
pushi.e 46
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[113]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [117]

:[114]
push.v self.alphys
pushi.e -9
pushenv [116]

:[115]
pushi.e 923
pop.v.i self.sprite_index

:[116]
popenv [115]
pushi.e 48
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [121]

:[118]
push.v self.alphys
pushi.e -9
pushenv [120]

:[119]
pushi.e 919
pop.v.i self.sprite_index

:[120]
popenv [119]
pushi.e 50
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[121]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [123]

:[122]
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_298_0"@15021
conv.s.v
push.s "* Uh..^1.&* H-has anyone seen the chalk?/"@15022
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_299_0"@15023
conv.s.v
push.s "\\E4* This is the third time it's gone missing^1, and.../"@15024
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_300_0"@15025
conv.s.v
push.s "\\E9* Y-you all know I can't start class without some!/%"@15026
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_302_0"@15027
conv.s.v
push.s "\\FN\\TN\\E1* Ummm^1, there might be a box in the supply closet.../"@15028
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_303_0"@15029
conv.s.v
push.s "\\E0* Do you want me to - %"@15030
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_304_0"@15031
conv.s.v
push.s "\\Ta\\Fa\\E6* G-good idea^1, Noelle^1!&* Susie^1, s-since you came in last.../"@15032
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_305_0"@15033
conv.s.v
push.s "\\E7* Can you go get that for me...?/"@15034
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_306_0"@15035
conv.s.v
push.s "\\FS\\TS\\E0* .../"@15036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_307_0"@15037
conv.s.v
push.s "* ... whatever./%%"@15038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.d 51.1
pop.v.d self.con

:[123]
push.v self.con
push.d 51.1
cmp.d.v EQ
bf [125]

:[124]
call.i gml_Script_d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [130]

:[127]
push.v self.alphys
pushi.e -9
pushenv [129]

:[128]
pushi.e 919
pop.v.i self.sprite_index

:[129]
popenv [128]
push.d 50.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[130]
push.v self.con
push.d 51.2
cmp.d.v EQ
bf [134]

:[131]
push.v self.alphys
pushi.e -9
pushenv [133]

:[132]
pushi.e 919
pop.v.i self.sprite_index

:[133]
popenv [132]
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_323_0"@15039
conv.s.v
push.s "* H-how about this^1?&* If no one speaks up.../"@15040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_324_0"@15041
conv.s.v
push.s "* E-everyone gets in trouble!/%"@15042
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.d 51.3
pop.v.d self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[134]
push.v self.con
push.d 51.3
cmp.d.v EQ
bf [136]

:[135]
call.i gml_Script_d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [141]

:[138]
push.v self.alphys
pushi.e -9
pushenv [140]

:[139]
pushi.e 923
pop.v.i self.sprite_index

:[140]
popenv [139]
push.d 50.4
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[141]
push.v self.con
push.d 51.4
cmp.d.v EQ
bf [145]

:[142]
push.v self.alphys
pushi.e -9
pushenv [144]

:[143]
pushi.e 919
pop.v.i self.sprite_index

:[144]
popenv [143]
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_340_0"@15043
conv.s.v
push.s "* A..^1. Anyone^1?&* P..^1. please?/"@15044
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_341_0"@15045
conv.s.v
push.s "\\FN\\TN\\E1* Hey^1, there might be a box in the supply closet.../"@15046
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_342_0"@15047
conv.s.v
push.s "\\E0* Miss Alphys^1, why don't Susie and I.../"@15048
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_343_0"@15049
conv.s.v
push.s "\\Ta\\Fa\\E6* G-good idea^1, Noelle^1!&* Susie^1, s-since you came in last.../"@15032
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_344_0"@15050
conv.s.v
push.s "\\E7* Why don't you go get it for me...?/"@15051
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_345_0"@15052
conv.s.v
push.s "\\FS\\TS\\E0* .../"@15036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_346_0"@15053
conv.s.v
push.s "* ... whatever./%%"@15038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 52
pop.v.i self.con

:[145]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [151]

:[146]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [151]

:[147]
push.v 64.msgno
pushi.e 4
cmp.i.v EQ
bf [151]

:[148]
push.v self.alphys
pushi.e -9
pushenv [150]

:[149]
pushi.e 923
pop.v.i self.sprite_index

:[150]
popenv [149]

:[151]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [153]

:[152]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [158]

:[155]
push.v self.sus
pushi.e -9
pushenv [157]

:[156]
pushi.e -1
pop.v.i self.vspeed
pushi.e 980
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[157]
popenv [156]
pushi.e 53
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[158]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [164]

:[159]
push.v self.sus
pushi.e -9
pushenv [161]

:[160]
call.i instance_destroy(argc=0)
popz.v

:[161]
popenv [160]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.door
pushi.e -9
pushenv [163]

:[162]
pushi.e 0
pop.v.i self.image_index

:[163]
popenv [162]
pushi.e 55
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[164]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [170]

:[165]
push.v self.sus
pushi.e -9
pushenv [167]

:[166]
call.i instance_destroy(argc=0)
popz.v

:[167]
popenv [166]
push.v self.alphys
pushi.e -9
pushenv [169]

:[168]
pushi.e 919
pop.v.i self.sprite_index

:[169]
popenv [168]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 4
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_classscene_slash_Step_0_gml_398_0"@15054
conv.s.v
push.s "\\E4* And K... Kris..^1.&* Can you go with her and make sure she.../"@15055
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_399_0"@15056
conv.s.v
push.s "\\E9* Um^1, actually gets it^1?&* And^1, um^1, stays out of trouble...?/"@15057
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_classscene_slash_Step_0_gml_400_0"@15058
conv.s.v
push.s "\\E6* Thanks Kris^1!&* See you later!/%"@15059
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
pushi.e 57
pop.v.i self.con

:[170]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [172]

:[171]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [173]

:[172]
push.e 0

:[173]
bf [183]

:[174]
push.v self.door_readable
pushi.e -9
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]
pushi.e 144
conv.i.v
pushi.e 51
conv.i.v
pushi.e 242
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorb
pushi.e 3
pop.v.i global.plot
pushi.e 0
pop.v.i global.facing
push.v self.alphys
pop.v.v self.alphys2
pushi.e 135
conv.i.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.y
push.v self.alphys
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.alphys
pushi.e 135
pushenv [178]

:[177]
pushi.e 0
pop.v.i self.talked

:[178]
popenv [177]
push.v self.alphys2
pushi.e -9
pushenv [180]

:[179]
call.i instance_destroy(argc=0)
popz.v

:[180]
popenv [179]
push.v self.doorsolid
pushi.e -9
pushenv [182]

:[181]
call.i instance_destroy(argc=0)
popz.v

:[182]
popenv [181]
pushi.e 0
pop.v.i global.interact
pushi.e 58
pop.v.i self.con

:[183]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[184]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [188]

:[185]
pushi.e 980
conv.i.v
pushi.e 170
conv.i.v
pushi.e 145
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.susie_fake
push.v self.susie_fake
pushi.e -9
pushenv [187]

:[186]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[187]
popenv [186]
pushi.e 130
push.v self.alphys
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 46
push.v self.alphys
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 919
push.v self.alphys
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.d 1.5
pop.v.d self.con

:[188]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [190]

:[189]
push.i 231459
setowner.e
push.s "mus_school.ogg"@14979
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 3
pop.v.i self.con

:[190]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [192]

:[191]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [199]

:[194]
pushi.e 64
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.door
pushi.e -9
pushenv [196]

:[195]
pushi.e 1
pop.v.i self.image_index

:[196]
popenv [195]
pushi.e 4
pop.v.i self.con
push.v self.alphys
pushi.e -9
pushenv [198]

:[197]
pushi.e 923
pop.v.i self.sprite_index

:[198]
popenv [197]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[199]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [203]

:[200]
pushi.e 82
pushenv [202]

:[201]
pushi.e 1
pop.v.i self.fun
pushi.e 661
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed

:[202]
popenv [201]
pushi.e 6
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[203]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [209]

:[204]
pushi.e 82
pushenv [206]

:[205]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed

:[206]
popenv [205]
push.v self.door
pushi.e -9
pushenv [208]

:[207]
pushi.e 0
pop.v.i self.image_index

:[208]
popenv [207]
pushi.e 63
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[209]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [216]

:[210]
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_493_0"@15061
conv.s.v
push.s "\\E0* Kris^1, there you are!/"@15062
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_494_0"@15063
conv.s.v
push.s "\\EA* (Even Susie showed up before you^1, eheh...)/%"@15064
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i self.alttalk
pushi.e -5
pushi.e 201
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [212]

:[211]
pushi.e -5
pushi.e 269
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [213]

:[212]
push.e 0

:[213]
bf [215]

:[214]
pushi.e 1
pop.v.i self.alttalk
push.s "obj_classscene_slash_Step_0_gml_500_0"@15066
conv.s.v
push.s "\\E3* (Kris^1! You're okay!!)/"@15067
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_501_0"@15068
conv.s.v
push.s "\\E9* (I was really worried after you disappeared yesterday...)/"@15069
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_502_0"@15070
conv.s.v
push.s "\\E0* (I guess we can talk about that after class.)/%"@15071
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[215]
pushi.e 10
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[216]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [218]

:[217]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [219]

:[218]
push.e 0

:[219]
bf [229]

:[220]
push.i 231459
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
call.i gml_Script_scr_cutscene_make(argc=0)
popz.v
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.susie_fake
pushi.e -9
push.v [stacktop]self.y
push.v self.susie_fake
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 980
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.susie_fake
pushi.e -9
pushenv [222]

:[221]
pushi.e 0
pop.v.i self.visible

:[222]
popenv [221]
pushi.e 2
pop.v.i self.al
pushi.e 893
conv.i.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.y
push.v self.alphys
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.al_actor
push.s "alphys"@555
conv.s.v
push.v self.al_actor
push.v self.al
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 919
push.v self.al_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.alphys
pushi.e -9
pushenv [224]

:[223]
pushi.e 0
pop.v.i self.visible

:[224]
popenv [223]
pushi.e 3
pop.v.i self.no
pushi.e 893
conv.i.v
push.v self.noelle_npc
pushi.e -9
push.v [stacktop]self.y
push.v self.noelle_npc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 752
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232203
setowner.e
pushi.e 13
conv.i.v
push.v self.no_actor
pushi.e -9
pushi.e 0
pop.v.v [array]self.specialsprite
push.v self.noelle_npc
pushi.e -9
pushenv [226]

:[225]
pushi.e 0
pop.v.i self.visible

:[226]
popenv [225]
pushi.e 4
pop.v.i self.be
pushi.e 893
conv.i.v
push.v self.berdly_npc
pushi.e -9
push.v [stacktop]self.y
push.v self.berdly_npc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 707
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 12
conv.i.v
push.v self.be_actor
pushi.e -9
pushi.e 0
pop.v.v [array]self.specialsprite
push.v self.berdly_npc
pushi.e -9
pushenv [228]

:[227]
pushi.e 0
pop.v.i self.visible

:[228]
popenv [227]
pushi.e 11
pop.v.i self.con
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 22
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 13
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_566_0"@15076
conv.s.v
push.s "\\E2* (Hey^1, Kris!)/"@15077
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_567_0"@15078
conv.s.v
push.s "\\E0* (..^1. if I knew you were gonna be late...)/"@15079
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_568_0"@15080
conv.s.v
push.s "\\E3* (I wouldna showed up on time.)/%"@15081
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_574_0"@15082
conv.s.v
push.s "\\E9* Susie^1, please don't kick your desk./"@15083
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_575_0"@15084
conv.s.v
push.s "\\E4* Treat school property^1, like you'd treat people./%"@15085
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_579_0"@15086
conv.s.v
push.s "\\E0* ..../"@15087
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_580_0"@15088
conv.s.v
push.s "\\E1* Okay./"@15089
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_581_0"@15090
conv.s.v
push.s "\\E2* Next time I'll aim for the vitals./%"@15091
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 66
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 860
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.al
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 922
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 924
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_602_0"@15092
conv.s.v
push.s "\\E9* Th..^1. That's not what I.../%"@15093
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_606_0"@15094
conv.s.v
push.s "\\E5* In any case^1, good morning^1, Class!/"@15095
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_607_0"@15096
conv.s.v
push.s "\\E7* We have a lot to go over today.../"@15097
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_608_0"@15098
conv.s.v
push.s "\\E6* First^1, we're starting the reading from page 142!/"@15099
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_609_0"@15100
conv.s.v
push.s "\\E4* Any..^1. any volunteers?/%"@15101
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_616_0"@15102
conv.s.v
push.s "\\E2* Umm^1, I..^1. I guess I could read the.../%"@15103
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 751
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.d 1.6
conv.d.v
pushi.e 1
conv.i.v
pushi.e 219
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_626_0"@15104
conv.s.v
push.s "\\E1* Ah^1, trouble yourself not^1, Noelle!/"@15105
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_627_0"@15106
conv.s.v
push.s "\\E2* I will valiantly take this blow of humiliation!!/"@15107
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_629_0"@15108
conv.s.v
push.s "\\E3* Umm^1, t-that's OK^1, I can.../%"@15109
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 84
conv.i.v
pushi.e 139
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 752
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_643_0"@15110
conv.s.v
push.s "\\E0* A-HEM./"@15111
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_644_0"@15112
conv.s.v
push.s "\\E1* \"Page 142.\"/"@15113
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_645_0"@15114
conv.s.v
push.s "\\E3* \"It was the best of times^1, it was the worst of times^1,\"/"@15115
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_646_0"@15116
conv.s.v
push.s "\\E4* \"Times-a pretty good. Times-a pretty bad.\"/"@15117
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_647_0"@15118
conv.s.v
push.s "\\E2* \"Mediocre times. Iffy times. So-so times...\"/%"@15119
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
push.s "none"@562
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_653_0"@15120
conv.s.v
push.s "* Listening to this^1, your eyes began to close automatically.../%"@15121
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v

:[229]
push.v self.customconb
pushi.e 1
cmp.i.v EQ
bf [236]

:[230]
push.v self.customtimer
push.e 1
add.i.v
pop.v.v self.customtimer
push.v self.customtimer
pushi.e 30
cmp.i.v GTE
bf [236]

:[231]
pushi.e 0
pop.v.i self.customtimer
pushi.e 2
pop.v.i self.customconb
pushi.e 0
pop.v.i self.customcon
pushi.e 893
pushenv [233]

:[232]
pushi.e 0
pop.v.i self.image_speed

:[233]
popenv [232]
pushi.e 135
pushenv [235]

:[234]
pushi.e 0
pop.v.i self.image_speed

:[235]
popenv [234]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[236]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [238]

:[237]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [239]

:[238]
push.e 0

:[239]
bf [254]

:[240]
pushi.e 893
pushenv [242]

:[241]
pushi.e 0
pop.v.i self.visible

:[242]
popenv [241]
pushi.e 135
pushenv [244]

:[243]
call.i instance_destroy(argc=0)
popz.v

:[244]
popenv [243]
pushi.e 70
pushenv [246]

:[245]
call.i instance_destroy(argc=0)
popz.v

:[246]
popenv [245]
pushi.e 893
pushenv [249]

:[247]
push.v self.name
push.s "alphys"@555
cmp.s.v EQ
bf [249]

:[248]
pushi.e 1
pop.v.i self.visible
push.v self.rsprite
pop.v.v self.sprite_index

:[249]
popenv [247]
pushi.e 190
pushenv [251]

:[250]
call.i instance_destroy(argc=0)
popz.v

:[251]
popenv [250]
pushi.e 82
pushenv [253]

:[252]
pushi.e 0
pop.v.i self.fun
push.v self.y
pushi.e 8
add.i.v
pop.v.v self.y

:[253]
popenv [252]
pushi.e 0
pop.v.i self.conwait
pushi.e 13
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i global.facing

:[254]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [256]

:[255]
pushi.e 2
pop.v.i global.facing

:[256]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [258]

:[257]
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_715_0"@15124
conv.s.v
push.s "\\E7* Have a nice day^1, everyone!/"@15125
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_716_0"@15126
conv.s.v
push.s "\\E9* And P-PLEASE^1! Remember your group projects!/%"@15127
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 15
pop.v.i self.con

:[258]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [260]

:[259]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [261]

:[260]
push.e 0

:[261]
bf [265]

:[262]
push.v self.al_actor
pushi.e -9
pushenv [264]

:[263]
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_scr_emote(argc=2)
popz.v

:[264]
popenv [263]
push.s "d"@6706
conv.s.v
push.v self.al_actor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[265]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [270]

:[266]
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_739_0"@15128
conv.s.v
push.s "\\E1* Oh^1, um..^1. Kris? Are..^1. you okay?/"@15129
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_classscene_slash_Step_0_gml_740_0"@15130
conv.s.v
push.s "\\E5* You were^1, um^1, s-sleeping all class.../"@15131
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_741_0"@15132
conv.s.v
push.s "\\E0* D-don't worry^1! I'm not mad^1! J..^1. just concerned!/"@15133
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_742_0"@15134
conv.s.v
push.s "\\EA* (Usually you only sleep through the start.)/"@15135
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.alttalk
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_classscene_slash_Step_0_gml_747_0"@15136
conv.s.v
push.s "\\E3* ... Kris..^1. Where did you and Susie go yesterday?/"@15137
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_748_0"@15138
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_749_0"@15139
conv.s.v
push.s "\\EA* .../"@15140
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_750_0"@15141
conv.s.v
push.s "\\E5* Um^1, if you don't want to tell me^1, that's okay./"@15142
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_751_0"@15143
conv.s.v
push.s "\\E9* I was just really..^1. worried about you./"@15144
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_752_0"@15145
conv.s.v
push.s "\\E6* If... If Susie causes you any trouble^1, then.../"@15146
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_753_0"@15147
conv.s.v
push.s "\\E8* Okay^1, I..^1. I can't really do anything. Eheh./"@15148
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_classscene_slash_Step_0_gml_754_0"@15149
conv.s.v
push.s "\\E0* But... I'm looking out for you^1, okay?/%"@15150
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [269]

:[268]
push.s "obj_classscene_slash_Step_0_gml_758_0"@15151
conv.s.v
push.s "\\E0* Good luck and rest well tonight^1, okay?/%"@15152
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[269]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 18
pop.v.i self.con

:[270]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [272]

:[271]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [273]

:[272]
push.e 0

:[273]
bf [end]

:[274]
pushi.e 135
conv.i.v
push.v self.alphys
pushi.e -9
push.v [stacktop]self.y
push.v self.alphys
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.alphys_npc
push.v self.alphys_npc
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.alphys_npc
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
pop.i.v [stacktop]self.y
pushi.e 82
pushenv [276]

:[275]
pushi.e 0
pop.v.i self.fun

:[276]
popenv [275]
pushi.e 893
pushenv [278]

:[277]
call.i instance_destroy(argc=0)
popz.v

:[278]
popenv [277]
pushi.e 0
pop.v.i global.facing
pushglb.v global.plot
pushi.e 5
cmp.i.v LT
bf [280]

:[279]
pushi.e 5
pop.v.i global.plot

:[280]
pushi.e 20
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 144
conv.i.v
pushi.e 51
conv.i.v
pushi.e 242
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorb
push.v self.doorb
pushi.e -9
pushenv [282]

:[281]
pushi.e 0
pop.v.i self.doorFacing
pushi.e 1
pop.v.i self.doorPreset

:[282]
popenv [281]
push.v self.door
pushi.e -9
pushenv [284]

:[283]
push.i 900000
pop.v.i self.depth

:[284]
popenv [283]

:[end]