.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [32]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [19]

:[5]
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 2
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.i self.abletotarget

:[11]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
b [12]

:[14]
b [16]

:[15]
pushi.e 3
pop.v.i self.target

:[16]
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 7
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_monster1_slash_Step_0_gml_25_0"@40786
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [18]

:[17]
push.s "obj_monster1_slash_Step_0_gml_26_0"@40787
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
pushi.e 1331
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mywriter
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[19]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [32]

:[23]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [25]

:[24]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.talkmax
pop.v.v self.talktimer

:[28]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [32]

:[29]
pushi.e 1331
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 2
pop.v.i global.mnfight

:[32]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [61]

:[33]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [43]

:[37]
pushi.e 1
pop.v.i self.actcon
push.s "obj_monster1_slash_Step_0_gml_75_0"@40788
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
pushi.e 1331
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.battlewriter
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [39]

:[38]
pushi.e 1328
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.myface

:[39]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.i 231526
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.mercymod
pushi.e 120
add.i.v
pop.i.v [array]self.mercymod

:[41]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [43]

:[42]
push.i 231251
setowner.e
push.s "obj_monster1_slash_Step_0_gml_82_0"@40789
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[43]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [56]

:[44]
push.v self.acttimer
pushi.e 0
cmp.i.v EQ
bf [47]

:[45]
push.s "obj_monster1_slash_Step_0_gml_91_0"@40790
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
pushi.e 1331
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 130
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.battlewriter
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [47]

:[46]
pushi.e 1328
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.myface

:[47]
push.v self.acttimer
pushi.e 20
cmp.i.v EQ
bf [53]

:[48]
push.i 231559
setowner.e
push.v self.myself
pushi.e -5
pushi.e 0
pop.v.v [array]self.chartarget
push.v self.myself
pushi.e -5
pushi.e 1
pop.v.v [array]self.chartarget
push.i 231580
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charspecial
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charspecial
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pushenv [50]

:[49]
pushi.e 2
pop.v.i self.state

:[50]
popenv [49]
pushi.e -5
pushi.e 1
push.v [array]self.charinstance
pushi.e -9
pushenv [52]

:[51]
pushi.e 2
pop.v.i self.state

:[52]
popenv [51]

:[53]
push.v self.acttimer
pushi.e 40
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i self.actcon

:[55]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer

:[56]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[61]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 800
add.i.v
cmp.v.v GT
bf [63]

:[62]
pushglb.v global.myfight
pushi.e 3
cmp.i.v NEQ
b [64]

:[63]
push.e 0

:[64]
bf [end]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[end]