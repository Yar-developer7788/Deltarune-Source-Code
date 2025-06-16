.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
pushi.e 2
pop.v.i self.con
pushi.e 300
pop.v.i 82.x
pushi.e 226
pop.v.i 82.y
pushi.e 99
pushenv [6]

:[4]
push.v self.sprite_index
pushi.e 2851
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [4]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 170
conv.i.v
pushi.e 168
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cagebars
push.i 96830
push.v self.cagebars
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.cagebars
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 150
conv.i.v
pushi.e 437
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 2851
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "turnon"@21123
conv.s.v
push.v self.queen_monitor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_60_0"@31241
conv.s.v
push.s "* How Do You Like Your New Room Units/"@31242
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_61_0"@31243
conv.s.v
push.s "\\ED* As You Can See They Are Perfectly Suited To Your Interests/"@31244
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_62_0"@31245
conv.s.v
push.s "\\E1* (Which I Gleaned From Your Internet Search Results)/"@31246
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_63_0"@31247
conv.s.v
push.s "\\EC* I Estimate You Will Have No Desire To Leave/"@31248
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_64_0"@31249
conv.s.v
push.s "\\E1* Please Tantilize Yourself With Your Surroundings/"@31250
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_65_0"@31251
conv.s.v
push.s "\\E7* And Wait Patiently While I Dominate The World/"@31252
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_66_0"@31253
conv.s.v
push.s "\\EC* Toodles/%"@31254
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "turnoff"@21124
conv.s.v
push.v self.queen_monitor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_81_0"@31255
conv.s.v
push.s "\\EP* K..^1. Kris!? Hey!^1! Can you hear me!?/"@31256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_82_0"@31257
conv.s.v
push.s "\\E0* Looks like there's some way to communicate between rooms./%"@31258
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "turnon"@21123
conv.s.v
push.v self.queen_monitor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_93_0"@31259
conv.s.v
push.s "\\E1* Convenient Isn't It I Really Thought Of Everything/%"@31260
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "turnoff"@21124
conv.s.v
push.v self.queen_monitor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_103_0"@31261
conv.s.v
push.s "\\EH* Shut up!!/"@31262
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_104_0"@31263
conv.s.v
push.s "\\E1* Anyway^1, let's think of some way to get out of here!!/"@31264
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_105_0"@31265
conv.s.v
push.s "\\E0* Ralsei^1, you got any bright ideas...?/"@31266
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_106_0"@31267
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_107_0"@31268
conv.s.v
push.s "\\EC* Hey..^1. where the hell's Ralsei!?/%"@31269
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 199
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_133_0"@31270
conv.s.v
push.s "\\EC* Damn^1, that soft-yet-tender screaming -/"@31271
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_134_0"@31272
conv.s.v
push.s "\\EK* Kris^1, that's gotta be him!!/"@31273
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_135_0"@31274
conv.s.v
push.s "\\EN* Quick^1, we gotta think of some way to get out!!/"@31275
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_136_0"@31276
conv.s.v
push.s "\\EL* Anything you smuggled in that might help us!?/%"@31277
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
b [17]

:[16]
push.e 0

:[17]
bf [23]

:[18]
push.v self.lancertimer
push.e 1
add.i.v
pop.v.v self.lancertimer
push.v self.lancertimer
pushi.e 300
cmp.i.v GTE
bf [20]

:[19]
pushi.e 1
pop.v.i self.lancercon

:[20]
push.v self.lancertimer
pushi.e 450
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [23]

:[21]
push.v self.reminder
push.e 1
add.i.v
pop.v.v self.reminder
push.v self.reminder
pushi.e 3
cmp.i.v LTE
bf [23]

:[22]
pushi.e 7
pop.v.i self.con

:[23]
push.v self.lancercon
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [35]

:[27]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkinterval
mod.v.v
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v self.lancertalking
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.v self.talktimer
pop.v.v self.talkstart
pushi.e 1
pop.v.b self.lancertalking

:[32]
push.v self.lancertalking
conv.v.b
bf [35]

:[33]
pushi.e 30
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.talktimer
push.v self.talkstart
pushi.e 5
add.i.v
cmp.v.v GTE
bf [35]

:[34]
pushi.e 0
pop.v.b self.lancertalking
pushi.e 240
conv.i.v
pushi.e 150
conv.i.v
pushi.e 90
conv.i.v
call.i choose(argc=3)
pop.v.v self.talkinterval

:[35]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [37]

:[36]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [38]

:[37]
push.e 0

:[38]
bf [46]

:[39]
pushi.e 3
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.reminder
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_220_0"@31278
conv.s.v
push.s "\\E6* Hey^1, Kris..^1. do you hear something...?/"@31279
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_221_0"@31280
conv.s.v
push.s "\\E1* Sounds like it's coming from your..^1. pocket?/"@31281
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_222_0"@31282
conv.s.v
push.s "\\E0* Your phone going off or something?/%"@31283
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[41]
push.v self.reminder
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_234_0"@31284
conv.s.v
push.s "\\EK* Hey^1, Kris..^1. uh.../"@31285
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_235_0"@31286
conv.s.v
push.s "\\EC* Does your phone usually^1, uh..^1. yell...?/%"@31287
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[43]
push.v self.reminder
pushi.e 3
cmp.i.v EQ
bf [45]

:[44]
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_247_0"@31288
conv.s.v
push.s "\\EC* Hey^1, Kris^1, pick up your damn phone./"@31289
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_248_0"@31290
conv.s.v
push.s "\\EK* Isn't it with your KEYs or whatever?/%"@31291
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[45]
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[46]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [48]

:[47]
pushi.e 11
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e -1
pop.v.i self.lancercon
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 150
conv.i.v
pushi.e 437
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 2851
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.la
pushi.e 893
conv.i.v
pushi.e 252
conv.i.v
pushi.e 319
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_actor
push.s "lancer"@4751
conv.s.v
push.v self.la_actor
push.v self.la
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 26
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.cagebars
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[48]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [50]

:[49]
pushi.e 12
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 2
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 1286
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 307
conv.i.v
pushi.e 281
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "lancer.ogg"@20915
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_307_0"@31292
conv.s.v
push.s "\\E1* Missed me???/"@31293
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_308_0"@31294
conv.s.v
push.s "\\E3* Because I missed you!^1! Ha ha ha!!/%"@31295
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_316_0"@31296
conv.s.v
push.s "\\E7* Lancer!? That you!? I thought you ditched us!/%"@31297
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_329_0"@31298
conv.s.v
push.s "\\E3* No!^1! I love ditches but I would never ditch you!!/%"@31299
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_336_0"@31300
conv.s.v
push.s "\\E8* I was simply relaxing in Kris's spacious Pants Hole./%"@31301
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_343_0"@31302
conv.s.v
push.s "\\EK* Uhh^1, \"pocket.\"/%"@31303
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 253
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 11
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_357_0"@31304
conv.s.v
push.s "\\E1* Yes!^1! And I saw it all!!/"@31305
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_358_0"@31306
conv.s.v
push.s "\\E3* Pants. Lint. Various Items./%"@31307
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_365_0"@31308
conv.s.v
push.s "\\E2* A wild Mom put you in some Shock Cages./%"@31309
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_372_0"@31310
conv.s.v
push.s "\\EK* Hahah^1, yeah. We're trapped^1, so^1, uh.../"@31311
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_373_0"@31312
conv.s.v
push.s "\\E7* Hey^1, wait didja see us on the roller coaster!?/%"@31313
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 239
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_386_0"@31314
conv.s.v
push.s "\\E3* Yes!!^1! It was amazing!^1! My first coaster ride!!!/%"@31315
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_393_0"@31316
conv.s.v
push.s "\\E2* Ha ha!^1! I love getting nauseous with friends!!/%"@31317
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 188
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 66
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_420_0"@31318
conv.s.v
push.s "\\EK* Hey you should probably^1, uh^1, free us./%"@31319
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_432_0"@31320
conv.s.v
push.s "\\E3* Oh right!^1! Yes!!/%"@31321
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_439_0"@31322
conv.s.v
push.s "\\E1* You can always rely on a friendly Me.../"@31323
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_440_0"@31324
conv.s.v
push.s "\\E3* To make you free!!!/%"@31325
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
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 10
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "monitor_on"@31237
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 47
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_460_0"@31326
conv.s.v
push.s "\\E2* Haha!^1! I have no idea how to use this!!/%"@31327
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 79
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 168
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_470_0"@31328
conv.s.v
push.s "\\E3* \"Request..^1. new item for room\"?? That sounds good./%"@31329
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "lancer_typing_start"@31235
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_479_0"@31330
conv.s.v
push.s "* Item request: Shovel./%"@31331
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "lancer_typing_stop"@31236
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "lancer_typing_start"@31235
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_487_0"@31332
conv.s.v
push.s "\\E3* Quantity: Let's say..^1. 999./%"@31333
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "lancer_typing_stop"@31236
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
pushi.e 143
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 1291
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 144
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "overload"@23332
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "open_capsule"@31238
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 47
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_512_0"@31334
conv.s.v
push.s "\\E1* Hoho!^1! It worked!!/%"@31335
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 285
conv.i.v
pushi.e 198
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 284
conv.i.v
pushi.e 282
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene17b_slash_Step_0_gml_523_0"@31336
conv.s.v
push.s "\\E1* Let's go^1, blue person whose name I know!/%"@31337
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.talktube
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[50]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [52]

:[51]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [53]

:[52]
push.e 0

:[53]
bf [57]

:[54]
pushi.e 50
pop.v.i self.con
push.v self.cage_collider
pushi.e -9
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[57]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [59]

:[58]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 100
pop.v.i global.plot

:[62]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.v 82.x
pushi.e 260
cmp.i.v LTE
b [65]

:[64]
push.e 0

:[65]
bt [67]

:[66]
push.v 82.x
pushi.e 360
cmp.i.v GTE
b [68]

:[67]
push.e 1

:[68]
bf [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
push.v self.lancer_typing_start
conv.v.b
bf [75]

:[71]
pushi.e 0
pop.v.b self.lancer_typing_start
pushi.e 958
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [75]

:[72]
pushi.e 958
pushenv [74]

:[73]
pushi.e 1
pop.v.b self.typing

:[74]
popenv [73]

:[75]
push.v self.lancer_typing_stop
conv.v.b
bf [80]

:[76]
pushi.e 0
pop.v.b self.lancer_typing_stop
pushi.e 958
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [80]

:[77]
pushi.e 958
pushenv [79]

:[78]
pushi.e 0
pop.v.b self.typing

:[79]
popenv [78]

:[80]
push.v self.monitor_on
conv.v.b
bf [85]

:[81]
pushi.e 0
pop.v.b self.monitor_on
pushi.e 958
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [85]

:[82]
pushi.e 958
pushenv [84]

:[83]
pushi.e 1
pop.v.b self.monitor_on

:[84]
popenv [83]

:[85]
push.v self.overload
conv.v.b
bf [90]

:[86]
pushi.e 0
pop.v.b self.overload
pushi.e 958
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [90]

:[87]
pushi.e 958
pushenv [89]

:[88]
pushi.e 1
pop.v.b self.overload

:[89]
popenv [88]

:[90]
push.v self.open_capsule
conv.v.b
bf [end]

:[91]
push.v self.cagetop
pushi.e -9
pushenv [93]

:[92]
push.d 0.25
pop.v.d self.image_speed

:[93]
popenv [92]
push.v self.cagebars
pushi.e -9
pushenv [95]

:[94]
push.d 0.25
pop.v.d self.image_speed

:[95]
popenv [94]
push.v self.cagetop
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [end]

:[96]
pushi.e 0
pop.v.b self.open_capsule
push.v self.cagetop
pushi.e -9
pushenv [98]

:[97]
pushi.e 0
pop.v.i self.image_speed
pushi.e -1
pop.v.i self.gravity

:[98]
popenv [97]
push.v self.cagebars
pushi.e -9
pushenv [100]

:[99]
pushi.e 0
pop.v.i self.image_speed

:[100]
popenv [99]

:[end]