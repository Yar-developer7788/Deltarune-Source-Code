.localvar 2 arguments

:[0]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [17]

:[4]
push.v self.puzzle
pushi.e -9
pushi.e 0
push.v [array]self.suit
pushi.e 4
cmp.i.v EQ
bf [8]

:[5]
push.v self.puzzle
pushi.e -9
pushi.e 1
push.v [array]self.suit
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v self.puzzle
pushi.e -9
pushi.e 2
push.v [array]self.suit
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 234
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [17]

:[10]
push.v self.blockn
pushi.e -9
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 234
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.pcon
pushi.e -1
pushi.e 0
push.v [array]self.spiken
pushi.e -9
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.image_index

:[14]
popenv [13]
pushi.e -1
pushi.e 1
push.v [array]self.spiken
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.image_index

:[16]
popenv [15]

:[17]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.ptimer
pushi.e 447
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
pop.v.i self.pcon

:[19]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
bf [22]

:[20]
push.v self.ptimer
pushi.e 1
add.i.v
pop.v.v self.ptimer
push.v self.ptimer
pushi.e 20
cmp.i.v GTE
bf [22]

:[21]
pushi.e 0
pop.v.i self.ptimer
pushi.e 0
pop.v.i self.pcon
pushi.e 0
pop.v.i global.interact

:[22]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [34]

:[26]
push.v 1351.y
pushi.e 80
cmp.i.v LTE
bf [34]

:[27]
pushi.e 0
pop.v.i global.facing
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [29]

:[28]
pushi.e 1
pop.v.i self.fun
push.v self.dsprite
pop.v.v self.sprite_index

:[29]
popenv [28]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 22
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 3894
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.cmarker
push.v self.cmarker
pushi.e -9
pushenv [31]

:[30]
push.i 960000
pop.v.i self.depth

:[31]
popenv [30]
push.v self.cmarker
pushi.e -9
pushenv [33]

:[32]
pushi.e -8
pop.v.i self.vspeed

:[33]
popenv [32]

:[34]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [39]

:[35]
push.v self.cmarker
pushi.e -9
push.v [stacktop]self.y
pushi.e 280
cmp.i.v LTE
bf [39]

:[36]
push.v self.cmarker
pushi.e -9
pushenv [38]

:[37]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[38]
popenv [37]

:[39]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [45]

:[40]
push.v self.cmarker
pushi.e -9
pushenv [42]

:[41]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_cloverpuzzle_event_slash_Step_0_gml_78_0"@38560
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_cloverpuzzle_event_slash_Step_0_gml_79_0"@38561
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_cloverpuzzle_event_slash_Step_0_gml_80_0"@38562
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 236
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_cloverpuzzle_event_slash_Step_0_gml_85_0"@38563
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_cloverpuzzle_event_slash_Step_0_gml_86_0"@38564
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[44]
pushi.e 3
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[45]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [47]

:[46]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [48]

:[47]
push.e 0

:[48]
bf [end]

:[49]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [51]

:[50]
pushi.e 0
pop.v.i self.fun

:[51]
popenv [50]
pushglb.v global.plot
pushi.e 75
cmp.i.v LT
bf [53]

:[52]
pushi.e 75
pop.v.i global.plot

:[53]
pushi.e 1390
pushenv [55]

:[54]
pushi.e 3898
pop.v.i self.sprite_index
pushi.e 999
pop.v.i self.holecon
pushi.e 0
pop.v.i self.image_index

:[55]
popenv [54]
pushi.e 1489
conv.i.v
push.v self.cmarker
pushi.e -9
push.v [stacktop]self.y
push.v self.cmarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.cencounter
push.v self.cmarker
pushi.e -9
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
push.v self.cencounter
pushi.e -9
pushenv [59]

:[58]
pushi.e 0
pop.v.i global.interact
pushi.e 8
pop.v.i self.myencounter
pushi.e 3894
pop.v.i self.sprite_index
pushi.e 3894
pop.v.i self.touchsprite
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[59]
popenv [58]
pushi.e 4
pop.v.i self.con

:[end]