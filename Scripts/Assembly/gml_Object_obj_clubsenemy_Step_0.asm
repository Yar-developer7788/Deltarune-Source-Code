.localvar 2 arguments
.localvar 22989 choice_amount 10244
.localvar 107 i 10245
.localvar 22990 prepend 10246
.localvar 22995 mercytotal 10247

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [57]

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
bf [16]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
pushi.e 50
pop.v.i global.typer
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_clubsenemy_slash_Step_0_gml_13_0"@22939
conv.s.v
push.s "Nice mouth"@22940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_14_0"@22942
conv.s.v
push.s "Anger mouth"@22943
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_15_0"@22945
conv.s.v
push.s "Smart Mouth"@22946
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text3
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_clubsenemy_slash_Step_0_gml_19_0"@22948
conv.s.v
push.s "Nice to&see you&again!"@22949
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_20_0"@22950
conv.s.v
push.s "This&time you&die!"@22951
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_21_0"@22952
conv.s.v
push.s "Please&ignore&them."@22953
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text3

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_clubsenemy_slash_Step_0_gml_26_0"@22954
conv.s.v
push.s "How well&do you&know us?"@22955
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_27_0"@22956
conv.s.v
push.s "YOU KNOW&NOTHING,&IDIOT!"@22957
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_28_0"@22958
conv.s.v
push.s "Sorry&about&this..."@22959
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text3

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_clubsenemy_slash_Step_0_gml_33_0"@22960
conv.s.v
push.s "Nice&dojo&today."@22961
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_34_0"@22962
conv.s.v
push.s "What?&It's just&awful!"@22963
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_35_0"@22964
conv.s.v
push.s "Please&stop, you&two..."@22965
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text3

:[13]
push.i 231251
setowner.e
push.v self.text1
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.v self.text2
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 125
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.v self.text3
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 125
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 392
pushenv [15]

:[14]
pushi.e 210
pop.v.i self.talkmax

:[15]
popenv [14]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.manual

:[16]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [25]

:[20]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [25]

:[21]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[23]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[25]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [57]

:[29]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [56]

:[30]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 30
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
push.d 0.7
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.ratio
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
b [35]

:[32]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 31
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.7
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.ratio
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
b [35]

:[34]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 33
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage

:[35]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 240
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=6)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.i 231921
setowner.e
push.s "obj_clubsenemy_slash_Step_0_gml_139_0"@22966
conv.s.v
push.s "* Clover flashes a trio of terrible smiles."@22967
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[37]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_clubsenemy_slash_Step_0_gml_140_0"@22968
conv.s.v
push.s "* Clover is bickering with herselves."@22969
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[39]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_clubsenemy_slash_Step_0_gml_141_0"@22970
conv.s.v
push.s "* Clover is whispering about cute boys."@22971
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[41]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_clubsenemy_slash_Step_0_gml_142_0"@22972
conv.s.v
push.s "* Clover is arguing about whose toothbrush is whose."@22973
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[43]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_clubsenemy_slash_Step_0_gml_143_0"@22974
conv.s.v
push.s "* Clover hums like an out-of-tune choir."@22975
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[45]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_clubsenemy_slash_Step_0_gml_144_0"@22976
conv.s.v
push.s "* Smells like clover and dew."@22977
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_clubsenemy_slash_Step_0_gml_145_0"@22978
conv.s.v
push.s "* Clover seems TIRED of discussing so much."@22979
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[49]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [51]

:[50]
push.s "obj_clubsenemy_slash_Step_0_gml_146_0"@22980
conv.s.v
push.s "* Clover starts to look wilted."@22981
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[51]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [53]

:[52]
push.i 231251
setowner.e
push.s "obj_clubsenemy_slash_Step_0_gml_147_0"@22982
conv.s.v
push.s "* Clover seems to be getting along with herselves."@22983
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[53]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.i 231921
setowner.e
push.s "obj_clubsenemy_slash_Step_0_gml_148_0"@22984
conv.s.v
push.s "* Clover's harmony was shattered by violence."@22985
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[55]
pushi.e 0
pop.v.i self.betray
b [57]

:[56]
pushi.e 150
pop.v.i global.turntimer

:[57]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[58]
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
bf [60]

:[59]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_clubsenemy_slash_Step_0_gml_168_0"@22986
conv.s.v
push.s "* CLOVER - AT 8 DF 2&* Two heads are better than one^1!&* Three..^1. maybe not./%"@22987
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[63]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 1
pop.v.i self.topic_con
pushi.e 90
pop.v.i self.topic_timer
push.v self.topic_timer
pop.v.v self.topic_timer_total
pushi.e 15
pop.v.i self.actcon

:[68]
push.v self.topic_con
pushi.e 1
cmp.i.v EQ
bf [82]

:[69]
pushi.e 2
pop.v.i self.topic_con
push.v self.topic_count
push.e 1
add.i.v
pop.v.v self.topic_count
push.v self.likes_list
call.i ds_list_shuffle(argc=1)
popz.v
push.v self.dislikes_list
call.i ds_list_shuffle(argc=1)
popz.v
pushi.e 3
pop.v.i local.choice_amount
pushi.e 0
pop.v.i local.i

:[70]
pushloc.v local.i
pushloc.v local.choice_amount
cmp.v.v LT
bf [78]

:[71]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bt [73]

:[72]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [74]

:[73]
push.e 1

:[74]
bf [76]

:[75]
push.s ""@157
conv.s.v
b [77]

:[76]
push.s "#"@6243
conv.s.v

:[77]
pop.v.v local.prepend
push.i 231305
setowner.e
pushloc.v local.prepend
pushloc.v local.i
push.v self.dislikes_list
call.i ds_list_find_value(argc=2)
add.v.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choicemsg
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [70]

:[78]
pushloc.v local.choice_amount
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.right_answer
pushi.e -5
push.v self.right_answer
conv.v.i
push.v [array]self.choicemsg
push.s "#"@6243
conv.s.v
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v NEQ
bf [80]

:[79]
push.s "#"@6243
conv.s.v
b [81]

:[80]
push.s ""@157
conv.s.v

:[81]
pop.v.v local.prepend
push.i 231305
setowner.e
pushloc.v local.prepend
pushi.e 0
conv.i.v
push.v self.likes_list
call.i ds_list_find_value(argc=2)
add.v.v
pushi.e -5
push.v self.right_answer
conv.v.i
pop.v.v [array]self.choicemsg
push.s "obj_clubsenemy_slash_Step_0_gml_233_0"@22991
conv.s.v
push.s "* Choose a topic that Clover likes!/%"@22992
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[82]
push.v self.topic_con
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
pushi.e 3
pop.v.i self.topic_con
push.s "\\C3 "@1161
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[87]
push.v self.topic_con
pushi.e 3
cmp.i.v EQ
bf [98]

:[88]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [90]

:[89]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 4
pop.v.i self.topic_con
b [98]

:[93]
push.v self.topic_timer
push.e 1
sub.i.v
pop.v.v self.topic_timer
push.v self.topic_timer
pushi.e 0
cmp.i.v LTE
bf [98]

:[94]
pushi.e 4
pop.v.i self.topic_con
pushi.e 1
pop.v.b self.topic_timeup
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [96]

:[95]
pushi.e 64
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[96]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [98]

:[97]
pushi.e 59
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[98]
push.v self.topic_con
pushi.e 4
cmp.i.v EQ
bf [101]

:[99]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [101]

:[100]
pushi.e 59
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [102]

:[101]
push.e 0

:[102]
bf [111]

:[103]
pushi.e 0
pop.v.b self.topic_start
pushi.e 0
pop.v.i self.topic_con
push.v self.topic_timeup
conv.v.b
bf [105]

:[104]
pushi.e 0
pop.v.b self.topic_timeup
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_clubsenemy_slash_Step_0_gml_286_0"@22993
conv.s.v
push.s "\\m1*		Time's up!&\\m2	TOO SLOW!&\\m3	(Sorry...)/%"@22994
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [110]

:[105]
pushglb.v global.choice
push.v self.right_answer
cmp.v.v EQ
bf [109]

:[106]
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [108]

:[107]
pushi.e 50
conv.i.v
pushi.e 20
conv.i.v
pushi.e 20
push.v self.turns
pushi.e 5
mul.i.v
add.v.i
call.i clamp(argc=3)
pop.v.v local.mercytotal
pushloc.v local.mercytotal
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[108]
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_clubsenemy_slash_Step_0_gml_293_0"@22996
conv.s.v
push.s "\\m1*		That's right^2!&\\m2	Not bad^2!&\\m3	(It's OK...^2)/%"@22997
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [110]

:[109]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_clubsenemy_slash_Step_0_gml_296_0_b"@22998
conv.s.v
push.s "\\m1*		No thanks!&\\m2	WRONG!&\\m3	(Is it that bad?)/%"@22999
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[110]
pushi.e 1
pop.v.i self.actcon
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[111]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [113]

:[112]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e 1
pop.v.i self.topic_con
pushi.e 300
pop.v.i self.topic_timer
push.v self.topic_timer
pop.v.v self.topic_timer_total
pushi.e 15
pop.v.i self.actcon

:[116]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
push.v self.argue
pushi.e 3
cmp.i.v GTE
bf [122]

:[121]
push.i 231984
setowner.e
push.s "obj_clubsenemy_slash_Step_0_gml_256_0"@23000
conv.s.v
push.s "(Tired)"@7993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus

:[122]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[123]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
pushi.e 5
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "obj_clubsenemy_slash_Step_0_gml_459_0"@23001
conv.s.v
push.s "* Susie stood there awkwardly!/%"@23002
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
pushi.e 20
pop.v.i self.actconsus

:[128]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
pushi.e 25
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "obj_clubsenemy_slash_Step_0_gml_469_0"@23003
conv.s.v
push.s "* Ralsei stood there cutely!/%"@23004
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
pushi.e 20
pop.v.i self.actconral

:[133]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [136]

:[134]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [136]

:[135]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [137]

:[136]
push.e 1

:[137]
bf [end]

:[138]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[139]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[end]