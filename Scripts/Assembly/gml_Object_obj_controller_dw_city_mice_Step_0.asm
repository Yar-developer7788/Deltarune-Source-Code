.localvar 2 arguments

:[0]
pushi.e 1163
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[1]
push.v 1163.introFinished
pushi.e 1
cmp.i.v EQ
bf [29]

:[2]
push.v self.victory
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.victoryCelebrated
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [29]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 1163
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 0
pop.v.i 1163.timer

:[8]
push.v self.noelleScared
pushi.e 0
cmp.i.v GT
bf [29]

:[9]
pushi.e 1
pop.v.i global.interact
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[10]
pushi.e 72
pop.v.i global.plot
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 135
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
push.v 135.x
pop.v.v 276.x
push.v 135.y
pop.v.v 276.y
pushi.e 135
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
b [18]

:[14]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[15]
push.v 1169.x
pop.v.v 276.x
push.v 1169.y
pop.v.v 276.y
pushi.e 1169
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[18]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1
pop.v.i self.con

:[19]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[20]
pushi.e -1
pop.v.i self.con
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 225
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 262
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 12
conv.i.v
pushi.e 262
conv.i.v
pushi.e 244
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.v 1163.earlywin
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_48_0"@37226
conv.s.v
push.s "\\E4* L-looks like that took care of it.../%"@37227
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
b [23]

:[22]
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_54_0"@37228
conv.s.v
push.s "\\E8* W-well^1, hopefully that won't happen again!/%"@37229
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v

:[23]
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 2
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[24]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i self.victoryCelebrated

:[29]
push.v self.victoryCelebrated
pushi.e 1
cmp.i.v EQ
bf [35]

:[30]
pushi.e 1163
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [32]

:[31]
pushi.e 29
pop.v.i 1163.timer

:[32]
pushi.e 1163
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[33]
pushi.e 6
pop.v.i 1163.introCon

:[34]
pushi.e 0
pop.v.i global.interact
push.v self.victoryCelebrated
push.e 1
add.i.v
pop.v.v self.victoryCelebrated

:[35]
push.v self.scaredAgain
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i global.interact
push.v self.scaredAgainCount
push.e 1
add.i.v
pop.v.v self.scaredAgainCount
push.v self.scaredAgain
push.e 1
add.i.v
pop.v.v self.scaredAgain
pushi.e 0
pop.v.i self.extTimer

:[37]
push.v self.scaredAgain
pushi.e 1
cmp.i.v EQ
bf [51]

:[38]
pushi.e 135
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[39]
pushi.e 717
pop.v.i 135.sprite_index

:[40]
pushi.e 1
pop.v.i global.interact
push.v self.extTimer
push.e 1
add.i.v
pop.v.v self.extTimer
push.v self.extTimer
pushi.e 60
cmp.i.v GT
bf [42]

:[41]
pushi.e 1168
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [51]

:[44]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_113_0"@37231
conv.s.v
push.s "\\E2* K-Kris^1! If the mice hit a wall^1, they'll come over here.../"@37232
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_114_0"@37233
conv.s.v
push.s "\\E4* (Try using those blocks to get them into the hole?)/%"@37234
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.scaredAgainCount
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_117_0"@37235
conv.s.v
push.s "\\EE* K-Kris!!/"@37236
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_118_0"@37237
conv.s.v
push.s "\\E8* Gosh^1, you did that on purpose^1, didn't you!?/"@37238
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_119_0"@37239
conv.s.v
push.s "\\E3* (It's like when they swapped my eggnog with mayo...)/%"@37240
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[46]
push.v self.scaredAgainCount
pushi.e 3
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_controller_dw_city_mice_slash_Step_0_gml_122_0"@37241
conv.s.v
push.s "\\E2* .../%"@22226
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[48]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 135
pushenv [50]

:[49]
pushi.e 3
pop.v.i self.dfacing

:[50]
popenv [49]
push.v self.scaredAgain
push.e 1
add.i.v
pop.v.v self.scaredAgain

:[51]
push.v self.scaredAgain
pushi.e 2
cmp.i.v EQ
bf [end]

:[52]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[53]
pushi.e 135
pushenv [55]

:[54]
pushi.e 0
pop.v.i self.dfacing

:[55]
popenv [54]
pushi.e 0
pop.v.i global.interact
push.v self.scaredAgain
push.e 1
add.i.v
pop.v.v self.scaredAgain

:[end]