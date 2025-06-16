.localvar 2 arguments
.localvar 19955 susx 17353
.localvar 19956 susy 17354
.localvar 21156 susid 17355

:[0]
push.v 110.talked
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[2]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 304
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 276
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.fun
pushi.e 0
pop.v.i self.image_index

:[8]
popenv [7]

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3
pop.v.i self.con
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_21_0"@35976
conv.s.v
push.s "\\E2* Here^1, Kris^1, Susie^1, have a cake!!!/%"@35977
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 10
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 128
conv.i.v
pushi.e 250
conv.i.v
pushi.e 620
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2275
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3120
conv.i.v
pushi.e 250
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cake
push.v self.explosion
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.cake
pushi.e -9
pop.v.v [stacktop]self.depth

:[16]
push.v self.con
pushi.e 3
cmp.i.v GTE
bf [21]

:[17]
push.v self.cake
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [21]

:[18]
push.v self.con
pushi.e 11
cmp.i.v LT
bf [20]

:[19]
pushi.e 300
conv.i.v
pushi.e -100
conv.i.v
push.v self.cake
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
call.i clamp(argc=3)
push.v self.cake
pushi.e -9
pop.v.v [stacktop]self.y
b [21]

:[20]
push.v self.cake
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 20
add.i.v
pop.i.v [stacktop]self.y

:[21]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [37]

:[22]
pushi.e 0
pop.v.i local.susx
pushi.e 0
pop.v.i local.susy
pushi.e 276
pushenv [25]

:[23]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [25]

:[24]
push.v self.x
pop.v.v local.susx
push.v self.y
pop.v.v local.susy

:[25]
popenv [23]
pushloc.v local.susx
push.v self.cake
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 0
pop.v.i local.susid
push.v self.cake
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.susy
pushi.e 40
sub.i.v
cmp.v.v GT
bf [30]

:[26]
pushi.e 276
pushenv [29]

:[27]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.ignoredepth
pushi.e 832
pop.v.i self.sprite_index

:[29]
popenv [27]

:[30]
push.v self.cake
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.susy
pushi.e 80
sub.i.v
cmp.v.v GT
bf [35]

:[31]
pushi.e 276
pushenv [34]

:[32]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [34]

:[33]
push.v self.id
pop.v.v local.susid
push.d 0.25
pop.v.d self.image_speed

:[34]
popenv [32]

:[35]
push.v self.cake
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.susy
cmp.v.v GT
bf [37]

:[36]
pushi.e 12
pop.v.i self.con
push.v self.cake
call.i instance_destroy(argc=1)
popz.v
push.d 1.2
conv.d.v
pushi.e 254
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 858
conv.i.v
pushloc.v local.susy
pushloc.v local.susx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healanim
pushloc.v local.susid
push.v self.healanim
pushi.e -9
pop.v.v [stacktop]self.target

:[37]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [39]

:[38]
pushi.e 13
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[39]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [44]

:[40]
pushi.e 15
pop.v.i self.con
pushi.e 276
pushenv [43]

:[41]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [43]

:[42]
pushi.e 0
pop.v.i self.ignoredepth
push.v self.dsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[43]
popenv [41]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 2
pop.v.i global.fe
push.s "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_128_0"@35978
conv.s.v
push.s "\\E2* Hmm^1, a little thick on the frosting./"@35979
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 30
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_130_0"@35980
conv.s.v
push.s "\\EU* ..^1. Th..^1. that was for sharing!/"@35981
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_132_0"@35982
conv.s.v
push.s "\\E2* Hey^1, anyone was free to make an interception./%"@35983
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[44]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [46]

:[45]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [end]

:[48]
pushi.e 276
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.fun

:[50]
popenv [49]
push.v self.healanim
call.i instance_destroy(argc=1)
popz.v
pushi.e -5
pushi.e 304
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 304
pop.v.v [array]self.flag

:[52]
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]