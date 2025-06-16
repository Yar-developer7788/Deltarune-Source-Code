.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1847
conv.i.v
pushi.e -170
conv.i.v
pushi.e 288
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.sneo
push.v self.sneo
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 221
conv.i.v
pushi.e 304
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 310
conv.i.v
pushi.e 215
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 303
conv.i.v
pushi.e 374
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[5]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_48_0"@34186
conv.s.v
push.s "* It seems after all I couldn't be anything more than a simple puppet./"@34187
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_49_0"@34188
conv.s.v
push.s "* But you three..^1. You're strong./"@34189
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_52_0"@34190
conv.s.v
push.s "* With a power like that.../"@34191
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_53_0"@34192
conv.s.v
push.s "* Maybe you three can break your own strings./"@34193
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_54_0"@34194
conv.s.v
push.s "* Let me become your strength./%"@34195
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 315
conv.i.v
push.s "x"@50
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 150
conv.i.v
push.s "y"@52
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 315
conv.i.v
pushi.e 315
conv.i.v
push.s "x"@50
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 45
conv.i.v
pushi.e 260
conv.i.v
pushi.e 150
conv.i.v
push.s "y"@52
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[7]
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_95_0"@34196
conv.s.v
push.s "* (You got ShadowCrystal.)/%"@34197
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
pop.v.i self.noroom
pushi.e -5
pushi.e 571
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
pushi.e 21
conv.i.v
call.i gml_Script_scr_weaponget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 468
pop.v.v [array]self.flag

:[10]
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_88_0"@34198
conv.s.v
push.s "* (You got PuppetScarf.)/%"@34199
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [14]

:[11]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 454
pop.v.v [array]self.flag
pushi.e 21
conv.i.v
call.i gml_Script_scr_armorget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 468
pop.v.v [array]self.flag

:[13]
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_82_0"@34200
conv.s.v
push.s "* (You got Dealmaker.)/%"@34201
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[14]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no one"@18574
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_122_0"@34202
conv.s.v
push.s "* (... but your inventory was full.)/%"@34203
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 163
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "spamton"@5523
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_129_0"@34204
conv.s.v
push.s "* ... Kris...^1?&* Kris!^1?&* KRIS!?!?!?/"@34205
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_130_0"@34206
conv.s.v
push.s "* YOU FILLED YOUR [Inventorium] WITH [Half-Pr1ce Sallamy] JUST TO KEEP ME OUT!?/"@34207
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_131_0"@34208
conv.s.v
push.s "* WHAT^2!&* THE^2!&* [^4Fifty Percent Off]!?/"@34209
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_132_0"@34210
conv.s.v
push.s "* YOU CAN CARRY LIKE 48 ITEMS!!!/"@34211
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_133_0"@34212
conv.s.v
push.s "* [Why] DID YOU DO THIS!^1?&* WHY!^1? [Y]!^1? [Yellow]!^1? [Gamma]!?/"@34213
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2a_slash_Step_0_gml_134_0"@34214
conv.s.v
push.s "* NOT [Cool] KRIS^1!&* I'LL BE IN MY [Trailer]!/%"@34215
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 150
conv.i.v
pushi.e 700
conv.i.v
pushi.e 315
conv.i.v
push.s "x"@50
conv.s.v
push.v self.sparkle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[16]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[17]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [19]

:[18]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[22]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [24]

:[23]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]