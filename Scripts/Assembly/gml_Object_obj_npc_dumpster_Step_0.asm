.localvar 2 arguments
.localvar 17731 ateMoss 7331
.localvar 4447 haveSusie 7332
.localvar 4458 haveNoelle 7333
.localvar 15767 sentenceEnd 7334
.localvar 164 text 7335

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e -1
pop.v.i self.con

:[12]
push.v self.moss_con
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushi.e 2
pop.v.i self.moss_con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.shine
pushi.e -1
cmp.i.v NEQ
bf [18]

:[17]
push.v self.shine
call.i instance_destroy(argc=1)
popz.v

:[18]
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 920
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_dumpster_slash_Step_0_gml_40_0"@17729
conv.s.v
push.s "\\s0* You found the \\cG[Moss]\\cW^8! %%"@17730
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 200
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
pushi.e 100
conv.i.v
push.i [function]gml_Script_snd_resume
conv.i.v
call.i gml_Script_scr_script_delayed(argc=3)
popz.v
pushi.e 133
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v

:[19]
push.v self.moss_con
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [42]

:[23]
pushi.e 4
pop.v.i self.moss_con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 106
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b local.ateMoss
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
pop.v.v local.haveSusie
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
pop.v.v local.haveNoelle
pushloc.v local.ateMoss
conv.v.b
bt [26]

:[24]
pushloc.v local.haveSusie
conv.v.b
bt [26]

:[25]
pushloc.v local.haveNoelle
conv.v.b
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
push.s "/"@4448
conv.s.v
b [30]

:[29]
push.s "/%"@4449
conv.s.v

:[30]
pop.v.v local.sentenceEnd
pushloc.v local.ateMoss
conv.v.b
bf [35]

:[31]
pushloc.v local.haveNoelle
conv.v.b
bf [33]

:[32]
push.s "/"@4448
conv.s.v
b [34]

:[33]
push.s "/%"@4449
conv.s.v

:[34]
pop.v.v local.sentenceEnd
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_dumpster_slash_Step_0_gml_63_0"@17732
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Your title was upgraded to [Moss Finder].~1"@17733
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[35]
pushloc.v local.haveSusie
conv.v.b
bf [37]

:[36]
pushi.e 10
pop.v.i self.con

:[37]
pushloc.v local.haveNoelle
conv.v.b
bf [42]

:[38]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 921
pop.v.v [array]self.flag
push.s "obj_npc_dumpster_slash_Step_0_gml_78_0"@17734
conv.s.v
push.s "\\E1* (Why do they look so pleased?)/%"@17735
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.text
pushloc.v local.ateMoss
conv.v.b
bf [40]

:[39]
pushi.e 1
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
pushloc.v local.text
call.i gml_Script_msgnext(argc=1)
popz.v
b [41]

:[40]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushloc.v local.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[41]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[42]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [44]

:[43]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [51]

:[46]
pushi.e -1
pop.v.i self.con
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [51]

:[47]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 922
pop.v.v [array]self.flag
pushi.e 1054
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [51]

:[48]
pushi.e 1054
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.con

:[50]
popenv [49]
push.v self.read
push.e 1
add.i.v
pop.v.v self.read
exit.i

:[51]
push.v self.moss_con
pushi.e 5
cmp.i.v EQ
bf [end]

:[52]
pushi.e 99
pop.v.i self.moss_con
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [end]

:[53]
pushi.e 133
conv.i.v
call.i instance_activate_object(argc=1)
popz.v

:[end]