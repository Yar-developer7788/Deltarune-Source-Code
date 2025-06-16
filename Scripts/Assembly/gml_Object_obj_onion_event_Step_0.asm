.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 424
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e 1036
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 1036
pushenv [7]

:[6]
pushi.e 1
pop.v.b self.canrest

:[7]
popenv [6]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.onioncount
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.onioncount
pushi.e 1
sub.i.v
pop.v.v self.onioncount

:[10]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [24]

:[11]
push.v self.onioncount
pushi.e 200
cmp.i.v GTE
bf [14]

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [18]

:[16]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 258
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.onioncount
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[18]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [23]

:[19]
pushi.e 1036
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[20]
pushi.e 1036
pushenv [22]

:[21]
pushi.e 1
pop.v.b self.canrest

:[22]
popenv [21]
call.i instance_destroy(argc=0)
popz.v

:[23]
b [end]

:[24]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [26]

:[25]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [96]

:[28]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [95]

:[29]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact

:[31]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[32]
push.v self.onion
pushi.e -9
pushenv [34]

:[33]
pushi.e 1
pop.v.i self.on

:[34]
popenv [33]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[35]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [52]

:[36]
pushi.e 1
pop.v.i global.facing
push.v self.onion
pushi.e -9
pushenv [38]

:[37]
pushi.e 2
pop.v.i self.on

:[38]
popenv [37]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 19
conv.i.v
b [44]

:[43]
pushi.e 5
conv.i.v

:[44]
pop.v.v self.con
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [47]

:[46]
push.e 0

:[47]
bf [51]

:[48]
pushi.e 276
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.visible

:[50]
popenv [49]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[51]
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[52]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [57]

:[53]
pushi.e 0
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 195
conv.i.v
b [56]

:[55]
pushi.e 1030
conv.i.v

:[56]
pop.v.v global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con

:[57]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [59]

:[58]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [68]

:[61]
pushi.e 1
pop.v.i global.interact
pushi.e 4
push.v self.onion
pushi.e -9
pop.v.i [stacktop]self.on
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 29
conv.i.v
b [67]

:[66]
pushi.e 8
conv.i.v

:[67]
pop.v.v self.con
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[68]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [76]

:[69]
pushi.e 10
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 424
pop.v.v [array]self.flag
push.v self.onion
pushi.e -9
pushenv [71]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[71]
popenv [70]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1036
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[72]
pushi.e 1036
pushenv [74]

:[73]
pushi.e 1
pop.v.b self.canrest

:[74]
popenv [73]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [78]

:[77]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
pushi.e 21
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[81]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [83]

:[82]
pushi.e 22
pop.v.i self.con
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_onion_event_slash_Step_0_gml_110_0"@15406
conv.s.v
push.s "\\M3* Hey....^1. thought I told you..^1. to come alone.../"@15407
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_onion_event_slash_Step_0_gml_112_0"@15408
conv.s.v
push.s "* ..^1. you know what^1, hell if I'm getting involved in this./%"@15409
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 40
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[83]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [85]

:[84]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
pushi.e 0
pop.v.i self.customcon
pushi.e 6
pop.v.i self.con

:[88]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [90]

:[89]
pushi.e 33
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_actormoveparty(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_onion_event_slash_Step_0_gml_139_0"@15410
conv.s.v
push.s "* Hey Kris. So^1, uh.../"@15411
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_onion_event_slash_Step_0_gml_140_0"@15412
conv.s.v
push.s "\\EK* Do you do weird stuff like this every day after school?/%"@15413
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[90]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [92]

:[91]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 9
pop.v.i self.con

:[95]
b [end]

:[96]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [end]

:[97]
pushi.e 1036
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[98]
pushi.e 1036
pushenv [100]

:[99]
pushi.e 1
pop.v.b self.canrest

:[100]
popenv [99]
call.i instance_destroy(argc=0)
popz.v

:[end]