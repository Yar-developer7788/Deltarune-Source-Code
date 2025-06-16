.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
push.v 82.x
pushi.e 130
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.con

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
push.v 82.x
pushi.e 140
cmp.i.v GT
bf [9]

:[7]
pushglb.v global.interact
pushi.e 0
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
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.to
pushi.e 893
conv.i.v
pushi.e 250
conv.i.v
pushi.e 365
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.to_actor
push.s "toriel"@544
conv.s.v
push.v self.to_actor
push.v self.to
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 892
push.v self.to_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.as
pushi.e 893
conv.i.v
pushi.e 250
conv.i.v
pushi.e 360
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.as_actor
push.s "asgore"@9293
conv.s.v
push.v self.as_actor
push.v self.as
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1064
push.v self.as_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.sa
pushi.e 893
conv.i.v
push.v self.sans
pushi.e -9
push.v [stacktop]self.y
push.v self.sans
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sa_actor
push.s "sans"@429
conv.s.v
push.v self.sa_actor
push.v self.sa
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1079
push.v self.sa_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.sa_actor
pushi.e -9
pop.v.i [stacktop]self.auto_depth
push.v self.counter
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.sa_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.sans
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.con

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
pushi.e 2
pop.v.i self.con
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 145
conv.i.v
pushi.e 370
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 45
conv.i.v
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_55_0"@15685
conv.s.v
push.s "\\E5* hey hey. forget something?/"@15686
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_57_0"@15687
conv.s.v
push.s "\\E1* Why^1, er^1, yes. I think I left my eggs on the counter./"@15688
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_59_0"@15689
conv.s.v
push.s "\\E2* guess your memory's not what it's \"cracked\" up to be./"@15690
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_61_0"@15691
conv.s.v
push.s "\\E0* Hee hee hee.../"@15692
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_62_0"@15693
conv.s.v
push.s "\\E4* There is really egg on my face now^1, is there not?/"@15694
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_64_0"@15695
conv.s.v
push.s "\\E5* eh. you're egg-scused./"@15696
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_66_0"@15697
conv.s.v
push.s "\\E4* Now it sounds as if you are egging me on./"@15698
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_68_0"@15699
conv.s.v
push.s "\\E5* egg on or egg off^1, i eggspect a lot from you./"@15700
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_70_0"@15701
conv.s.v
push.s "\\E4* Well^1, I am eggceptional. Hee hee.../%"@15702
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.sa
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1081
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.as
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_82_0"@15703
conv.s.v
push.s "\\E4* And don't forget me^1, your eggs-husband./%"@15704
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sa
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1082
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_94_0"@15705
conv.s.v
push.s "\\E1* Err^1, hello^1, Asgore./"@15706
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_96_0"@15707
conv.s.v
push.s "\\E0* Tori^1, I didn't expect to see you here^1, but^1, I.../"@15708
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_97_0"@15709
conv.s.v
push.s "\\E6* I have some extra flowers^1, and I was wondering if.../"@15710
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_99_0"@15711
conv.s.v
push.s "\\E1* Oh^1, I was just about to go^1, actually./"@15712
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_101_0"@15713
conv.s.v
push.s "\\E5* Ah^1, haha^1, oh^1! Sure^1! Home is where the heart is^1! Haha!/%"@15714
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.as
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.as
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_124_0"@15715
conv.s.v
push.s "\\E3* Umm^1, so^1, when Asriel comes home.../%"@15716
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_131_0"@15717
conv.s.v
push.s "\\E1* Yes^1, we should all discuss that together soon./"@15718
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_133_0"@15719
conv.s.v
push.s "\\E6* Onkey donkey^1! Say hi to Kris for me!/"@15720
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_135_0"@15721
conv.s.v
push.s "\\E1* Of course. Have a nice day./%"@15722
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.sa
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1079
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.as
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_153_0"@15723
conv.s.v
push.s "\\E2* .../"@15724
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_154_0"@15725
conv.s.v
push.s "\\E2* You know what I want^1, bone man./"@15726
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_156_0"@15727
conv.s.v
push.s "\\E1* ..^1. yep./"@15728
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_157_0"@15729
conv.s.v
push.s "\\E2* free pickles./"@15730
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_159_0"@15731
conv.s.v
push.s "\\E5* Why^1, thank you!/"@15732
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_160_0"@15733
conv.s.v
push.s "\\E2* .../"@15724
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_161_0"@15734
conv.s.v
push.s "\\E2* Can I ask?/"@15735
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_162_0"@15736
conv.s.v
push.s "\\E2* What kind of flowers^1, do you think^1,/"@15737
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_163_0"@15738
conv.s.v
push.s "\\E3* Would make her remember how she felt before?/"@15739
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_165_0"@15740
conv.s.v
push.s "\\E2* uhh.../"@15741
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_166_0"@15742
conv.s.v
push.s "\\E0* maybe you should talk to your plants about that./"@15743
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_168_0"@15744
conv.s.v
push.s "\\E5* Haha^1! Don't worry. They're the first ones I asked!/"@15745
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_169_0"@15746
conv.s.v
push.s "\\E3* They're such good listeners^1, you know. Flowers./"@15747
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_171_0"@15748
conv.s.v
push.s "\\E5* well^1, yeah. nothin' like a captive audience./"@15749
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_173_0"@15750
conv.s.v
push.s "\\E0* Yes^1, haha. I even keep them in glass./"@15751
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_175_0"@15752
conv.s.v
push.s "\\E2* uh..^1. like that movie./"@15753
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_177_0"@15754
conv.s.v
push.s "\\E2* Yes. It's..^1. It's very similar to that movie./"@15755
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_179_0"@15756
conv.s.v
push.s "\\E0* ..^1. well^1, have a good one./"@15757
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "6"@3595
conv.s.v
push.s "asgore"@9293
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_181_0"@15758
conv.s.v
push.s "\\E6* Haha^1! I'm trying!/%"@15759
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.as
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 50
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v 82.y
pushi.e 150
cmp.i.v GT
bf [15]

:[14]
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v

:[15]
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_199_0"@15760
conv.s.v
push.s "\\EK* .../"@5000
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_200_0"@15761
conv.s.v
push.s "\\EK* Hey^1, Kris^1, uhh.../"@15762
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_npc_conbini_slash_Step_0_gml_201_0"@15763
conv.s.v
push.s "\\EK* Uhhh...^1. nevermind./%"@15764
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 3
pop.v.i self.con
pushi.e 1
push.v self.sans
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 308
pop.v.v [array]self.flag

:[21]
push.v self.interacting
conv.v.b
bf [23]

:[22]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [end]

:[25]
pushi.e 0
pop.v.b self.interacting
pushi.e 0
pop.v.i global.interact

:[end]