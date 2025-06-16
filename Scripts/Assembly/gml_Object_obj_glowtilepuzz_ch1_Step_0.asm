.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.curtotal
push.v self.funbuffer
pushi.e 1
sub.i.v
pop.v.v self.funbuffer
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.tiletotal
cmp.v.v LT
bf [5]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tileid
pushi.e -9
push.v [stacktop]self.stepped
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.curtotal
pushi.e 1
add.i.v
pop.v.v self.curtotal

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
push.v self.curtotal
push.v self.funtotal
cmp.v.v EQ
bf [7]

:[6]
push.v self.funbuffer
pushi.e -1
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [25]

:[9]
pushbltn.v builtin.room
pushi.e 336
cmp.i.v EQ
bf [17]

:[10]
pushi.e -1
push.v self.wonamt
conv.v.i
push.v [array]self.block
pushi.e -9
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e -1
push.v self.wonamt
conv.v.i
push.v [array]self.spike1
pushi.e -9
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.image_index

:[14]
popenv [13]
pushi.e -1
push.v self.wonamt
conv.v.i
push.v [array]self.spike2
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.image_index

:[16]
popenv [15]

:[17]
push.v self.wonamt
pushi.e 1
add.i.v
pop.v.v self.wonamt
pushi.e 433
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 7
pop.v.i self.funbuffer
push.v self.wonamt
push.v self.wonmax
cmp.v.v EQ
bf [25]

:[18]
pushbltn.v builtin.room
pushi.e 338
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.shakecon

:[20]
pushglb.v global.plot
push.v self.plotamt
cmp.v.v LT
bf [22]

:[21]
push.v self.plotamt
pop.v.v global.plot

:[22]
pushi.e 2
pop.v.i self.active
pushi.e 3609
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.funbuffer
pushi.e 1549
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.stepped
pushi.e -1
pop.v.i self.stepbuffer
pushi.e 3605
pop.v.i self.sprite_index

:[24]
popenv [23]

:[25]
push.v self.funbuffer
pushi.e 4
cmp.i.v EQ
bf [29]

:[26]
pushi.e 1549
pushenv [28]

:[27]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.stepped
pushi.e -1
pop.v.i self.stepbuffer
pushi.e 3605
pop.v.i self.sprite_index

:[28]
popenv [27]

:[29]
push.v self.funbuffer
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
push.v self.stepnoise
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 458
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.stepnoise

:[33]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [65]

:[34]
push.v self.failtimer
pushi.e 1
add.i.v
pop.v.v self.failtimer
push.v self.failtimer
push.v self.failmax
pushi.e 8
conv.i.d
div.d.v
div.v.v
pop.v.v self.image_index
push.v self.failtimer
push.v self.failmax
cmp.v.v GTE
bf [65]

:[35]
pushi.e 0
pop.v.i self.active
pushi.e 3609
pop.v.i self.sprite_index
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.failamt
pushi.e 1
add.i.v
pop.v.v self.failamt
push.v self.failamt
pushi.e 3
cmp.i.v GTE
bf [40]

:[36]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [40]

:[37]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [40]

:[38]
push.v 1494.atalk
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushbltn.v builtin.room
pushi.e 336
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1
pop.v.i self.talked
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_glowtilepuzz_slash_Step_0_gml_77_0"@40836
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_glowtilepuzz_slash_Step_0_gml_78_0"@40837
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_glowtilepuzz_slash_Step_0_gml_78_1"@40838
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
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
popz.v

:[43]
push.v self.failamt
pushi.e 3
cmp.i.v GTE
bf [47]

:[44]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [47]

:[45]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushbltn.v builtin.room
pushi.e 338
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [62]

:[49]
pushi.e 1
pop.v.i self.talked
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
not.b
bf [51]

:[50]
push.s "obj_glowtilepuzz_slash_Step_0_gml_91_0"@40839
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_glowtilepuzz_slash_Step_0_gml_92_0"@40840
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[51]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [53]

:[52]
push.v 1494.atalk
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.s "obj_glowtilepuzz_slash_Step_0_gml_98_0"@40841
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_glowtilepuzz_slash_Step_0_gml_99_0"@40842
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_glowtilepuzz_slash_Step_0_gml_101_0"@40843
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[56]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [58]

:[57]
push.v 1494.atalk
pushi.e 1
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_glowtilepuzz_slash_Step_0_gml_110_0"@40844
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_glowtilepuzz_slash_Step_0_gml_111_0"@40845
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_glowtilepuzz_slash_Step_0_gml_113_0"@40846
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_glowtilepuzz_slash_Step_0_gml_113_1"@40847
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[61]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[62]
pushi.e 1549
pushenv [64]

:[63]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.stepped
pushi.e -1
pop.v.i self.stepbuffer
pushi.e 3605
pop.v.i self.sprite_index

:[64]
popenv [63]

:[65]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 2
pop.v.i self.talked
pushi.e 0
pop.v.i global.interact

:[70]
push.v self.shakecon
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 1
pop.v.i global.interact
pushi.e 377
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
pushi.e 2
pop.v.i self.shakecon

:[75]
push.v self.shakecon
pushi.e 2
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1468
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.s "obj_glowtilepuzz_slash_Step_0_gml_148_0"@40848
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
popz.v
pushi.e 3
pop.v.i self.shakecon

:[80]
push.v self.shakecon
pushi.e 3
cmp.i.v EQ
bf [82]

:[81]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [end]

:[84]
pushi.e 0
pop.v.i global.interact
pushi.e 4
pop.v.i self.shakecon

:[end]