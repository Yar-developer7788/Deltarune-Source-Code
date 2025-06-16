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
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.con
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "noelle_ferriswheel.ogg"@32299
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 400
conv.i.v
pushi.e 320
conv.i.v
pushi.e -100
conv.i.v
push.s "x"@50
conv.s.v
push.v self.ferris_wheel
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
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
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1121
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[4]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [6]

:[5]
pushi.e 11
pop.v.i self.con
push.s "obj_ch2_scene23c_slash_Step_0_gml_40_0"@32300
conv.s.v
push.s "I guess I do like slime and blood..."@32301
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 3
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_43_0"@32302
conv.s.v
push.s "\\E6* .../"@5500
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_45_0"@32303
conv.s.v
push.s "\\EK* So^1, uh..^1. Ferris wheels^1, huh./"@32304
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_46_0"@32305
conv.s.v
push.s "\\E2* Kinda makes you wonder what car they were built for./"@32306
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_48_0"@32307
conv.s.v
push.s "\\E8* (It's..^1. it's different than riding one with Kris...)/"@32308
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_50_0"@32309
conv.s.v
push.s "\\E4* ..^1. the hell's wrong^1, you scared of heights?/"@32310
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "M"@9486
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_52_0"@32311
conv.s.v
push.s "\\EM* No^1! No^1, I..^1. I love heights^1! Haha!/"@32312
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_54_0"@32313
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_55_0"@32314
conv.s.v
push.s "\\E0* You're^1, uh^1, shaking./"@32315
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_57_0"@32316
conv.s.v
push.s "\\E3* Well^1, um^1, maybe^1, I'm a little scared^1, but..^1. I.../"@32317
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_58_0"@32318
conv.s.v
push.s "\\E8* To be honest^1, I..^1. I actually like..^1. scary things./"@32319
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_60_0"@32320
conv.s.v
push.s "\\E6* ..^1. what do you mean?/"@32321
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_62_0"@32322
conv.s.v
push.s "\\E3* When we were little^1, me and my sister would stay up.../"@32323
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_63_0"@32324
conv.s.v
push.s "\\E2* And go past our bedtime watching horror movies./"@32325
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_64_0"@32326
conv.s.v
push.s "\\E4* At first I cried^1, but now..^1. it's like..^1. watching them.../"@32327
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_65_0"@32328
conv.s.v
push.s "\\E8* Makes me feel..^1. comforted...?/"@32329
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_67_0"@32330
conv.s.v
push.s "\\EK* Comforted?\\f0/"@32331
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_69_0"@32332
conv.s.v
push.s "\\E4* It's scary^1, but I can just turn it off^1, right?/"@32333
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_70_0"@32334
conv.s.v
push.s "\\E3* Now it's mostly..^1. people^1, that are scary. Haha./"@32335
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_72_0"@32336
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_73_0"@32337
conv.s.v
push.s "\\EY* You can just say you mean me./"@32338
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_75_0"@32339
conv.s.v
push.s "\\E3* Haha..^1. umm..^1. well..^1. I guess y-you too^1, but.../"@32340
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_76_0"@32341
conv.s.v
push.s "\\E8* But that's..^1. what's..^1. NICE about you^1, y'know?/"@32342
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_78_0"@32343
conv.s.v
push.s "\\E5* Nice!? The hell does that mean???/"@32344
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_80_0"@32345
conv.s.v
push.s "\\E3* You're the..^1. good kind of scary./"@32346
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_81_0"@32347
conv.s.v
push.s "\\ES* You aren't afraid to... break the rules^1, y'know?/"@32348
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_82_0"@32349
conv.s.v
push.s "\\E9* ..^1. I wish I could do crazy stuff like you./%"@32350
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1123
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[6]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [8]

:[7]
pushi.e 21
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_94_0"@32351
conv.s.v
push.s "\\EK* So^1, um.../"@32352
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_95_0"@32353
conv.s.v
push.s "\\E1* If YOU could do something crazy right now^1,/"@32354
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_96_0"@32355
conv.s.v
push.s "\\E2* What would you do?/"@32356
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_98_0"@32357
conv.s.v
push.s "\\E2* U-umm..^1. Well^1, I..^1. I.../"@32358
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_99_0"@32359
conv.s.v
push.s "\\E8* I'd... I'd jump out the window!/"@32360
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "6"@3595
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_101_0"@32361
conv.s.v
push.s "\\E6* Huh?/"@30547
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 26
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_103_0"@32362
conv.s.v
push.s "\\EQ* It's a dream^1, right?/"@32363
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_104_0"@32364
conv.s.v
push.s "\\ES* I'd grow big angel wings^1,/"@32365
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_105_0"@32366
conv.s.v
push.s "\\E2* And fly as far as I can^1, gazing back at it all.../"@32367
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_106_0"@32368
conv.s.v
push.s "\\E4* The skyline shining like Holiday lights./"@32369
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_108_0"@32370
conv.s.v
push.s "\\EK* ... that's kinda..^1. beautiful?/"@32371
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_109_0"@32372
conv.s.v
push.s "\\E6* Wait^1, you wouldn't seriously jump out^1, would you!?/"@32373
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 27
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_111_0"@32374
conv.s.v
push.s "\\ER* Hahaha!^1! No promises!/"@32375
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_112_0"@32376
conv.s.v
push.s "\\E2* ..^1. Susie...?/"@32377
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_113_0"@32378
conv.s.v
push.s "\\E3* What do YOU think looking out there?/%"@32379
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1125
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[8]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [10]

:[9]
pushi.e 31
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_125_0"@32380
conv.s.v
push.s "\\EK* Uh..^1. seeing everything small^1, makes me feel like^1, um.../"@32381
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_126_0"@32382
conv.s.v
push.s "\\EH* If I was Susiezilla or something^1, I could wreck the whole city./"@32383
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_128_0"@32384
conv.s.v
push.s "\\E4* Hahahaha!!^1! Susie!!/"@32385
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_130_0"@32386
conv.s.v
push.s "\\E2* Heh^1, what!?/"@32387
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_132_0"@32388
conv.s.v
push.s "\\E8* ..^1. is being Susiezilla something you think about a lot?/%"@32389
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1127
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [12]

:[11]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_145_0"@32390
conv.s.v
push.s "\\EK* No I just made it up now./"@32391
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_147_0"@32392
conv.s.v
push.s "\\E6* ..^1. does your tail always do that when you lie?/"@32393
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_149_0"@32394
conv.s.v
push.s "\\EH* H..^1. hey!^1! Don't look at that!!/"@32395
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_150_0"@32396
conv.s.v
push.s "\\E5* I don't have a tail!^1! It's part of your dream!!/"@32397
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_152_0"@32398
conv.s.v
push.s "\\E4* Oh^1, right. S..^1. sorry./"@32399
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_153_0"@32400
conv.s.v
push.s "\\ER* Guess I'll just have to check in real life^1, too./"@32401
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_155_0"@32402
conv.s.v
push.s "\\EH* H-Hey!!^1! Don't!!!/"@32403
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_157_0"@32404
conv.s.v
push.s "\\E8* Hahaha!^1! Susie? Everything OK?/"@32405
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_159_0"@32406
conv.s.v
push.s "\\EH* LOOK^1, I just^1, uhhh -/"@32407
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_160_0"@32408
conv.s.v
push.s "\\EM* I just don't like people knowing about^1, it./"@32409
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_162_0"@32410
conv.s.v
push.s "\\E2* Umm^1, well.../"@32411
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_163_0"@32412
conv.s.v
push.s "\\E3* I think it's..^1. a nice tail./"@32413
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 22
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_165_0"@32414
conv.s.v
push.s "\\EM* ..^1. whatever./"@32415
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_167_0"@32416
conv.s.v
push.s "\\E4* (It's wagging...)/%"@32417
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 300
conv.i.v
pushi.e 840
conv.i.v
pushi.e 320
conv.i.v
push.s "x"@50
conv.s.v
push.v self.ferris_wheel
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_181_0"@32418
conv.s.v
push.s "\\E0* ..^1. you stopped shaking./"@32419
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_183_0"@32420
conv.s.v
push.s "\\E6* Guess I got comfortable./"@32421
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_185_0"@32422
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23c_slash_Step_0_gml_186_0"@32423
conv.s.v
push.s "\\EL* ..^1. me too./%"@32424
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[12]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [14]

:[13]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 0
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 319
pop.v.v [array]self.flag
pushi.e 210
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]