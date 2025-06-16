.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 555
pop.v.i 82.x
pushi.e 133
pop.v.i 82.y
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 2
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 130
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 408
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 3
pop.v.i self.to
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.to_actor
push.s "toriel"@544
conv.s.v
push.v self.to_actor
push.v self.to
call.i gml_Script_scr_actor_setup(argc=3)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.con
pushi.e 0
conv.i.v
push.s "home.ogg"@33722
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 1
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 1
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_48_0"@33723
conv.s.v
push.s "* Feel free to come in./%"@33724
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
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_61_0"@33725
conv.s.v
push.s "\\EK* .../"@5000
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_63_0"@33726
conv.s.v
push.s "* Oh^1, excuse me. I am Kris's mother^1, Toriel.../"@33727
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_65_0"@33728
conv.s.v
push.s "\\EK* Y.. yes^1, Ma'am. I..^1. remember./"@33729
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_67_0"@33730
conv.s.v
push.s "\\E4* Oh^1, you do? And you are..^1. Susie^1, are you not?/"@33731
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "6"@3595
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_69_0"@33732
conv.s.v
push.s "\\E6* H..^1. huh? You^1, um..^1. remember my name^1, too...?/"@33733
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_71_0"@33734
conv.s.v
push.s "\\E2* Of course. Ms. Alphys is a good friend of mine./%"@33735
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 404
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_80_0"@33736
conv.s.v
push.s "\\E4* She often talks about you!/"@33737
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
push.s "obj_ch2_scene30b_slash_Step_0_gml_82_0"@33738
conv.s.v
push.s "\\EK* ..^1. umm^1, glad to hear it./%"@33739
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 407
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_93_0"@33740
conv.s.v
push.s "\\EH* (Kris^1, the hell is Alphys saying about me!?)/%"@33741
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_102_0"@33742
conv.s.v
push.s "\\E1* Susie^1, why don't you wash your hands over there.../%"@33743
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 408
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_117_0"@33744
conv.s.v
push.s "\\E4* Then we can make the pie together?/%"@33745
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_121_0"@33746
conv.s.v
push.s "\\E6* Make it..^1. together?/"@33747
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_122_0"@33748
conv.s.v
push.s "\\EC* Uhh..^1. but I don't know how to.../%"@33749
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.s "obj_ch2_scene30b_slash_Step_0_gml_130_0"@33750
conv.s.v
push.s "* Do not worry^1, I can teach you!/"@33751
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
push.s "obj_ch2_scene30b_slash_Step_0_gml_132_0"@33752
conv.s.v
push.s "\\EK* ..^1. OK./%"@33753
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 70
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_151_0"@33754
conv.s.v
push.s "\\E0* Kris^1, Susie seems like a nice girl./"@33755
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_152_0"@33756
conv.s.v
push.s "\\E1* I am very happy you are friends with her^1, but.../%"@33757
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.s "obj_ch2_scene30b_slash_Step_0_gml_160_0"@33758
conv.s.v
push.s "\\E1* .../%"@33759
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
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_167_0"@33760
conv.s.v
push.s "\\E1* Kris^1, I..^1. heard from Alphys^1, about her..^1. behavior./"@33761
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_168_0"@33762
conv.s.v
push.s "\\E8* If by any chance^1, she^1, er^1, influences you^1, er.../%"@33763
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 404
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_177_0"@33764
conv.s.v
push.s "\\E4* Leave the chalk alone^1, alright???/%"@33765
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
pushi.e 891
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 130
conv.i.v
pushi.e 350
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_194_0"@33766
conv.s.v
push.s "\\EK* Hands^1, uh..^1. washed./"@33767
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_196_0"@33768
conv.s.v
push.s "* Wonderful^1! Now we can.../%"@33769
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
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
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_205_0"@33770
conv.s.v
push.s "\\E4* Oh^1, Kris^1! How about YOU show Susie how to bake it?/"@33771
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_207_0"@33772
conv.s.v
push.s "\\E6* Kris!? You know how to make pie!?/%"@33773
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 405
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
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
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "punchcon"@21512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_224_0"@33774
conv.s.v
push.s "\\EH* The hell haven't you made ME any then^1, dumbass!!/"@33775
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_225_0"@33776
conv.s.v
push.s "* You pie-hoarding piece of -/%"@33777
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -1
conv.i.v
push.s "punchcon"@21512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 404
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 406
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 408
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_246_0"@33778
conv.s.v
push.s "\\EG* I mean^1, uhh..^1. 'scuse me^1, Ma'am./%"@33779
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
pushi.e 897
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_255_0"@33780
conv.s.v
push.s "* Susie^1, you can just call me Toriel outside of school./%"@33781
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
pushi.e 407
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_267_0"@33782
conv.s.v
push.s "\\EL* Oh okay sweet./%"@33783
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.to
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_281_0"@33784
conv.s.v
push.s "\\E4* ..^1. huh? Kris? Oh^1, YOU need to wash your hands too?/"@33785
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_282_0"@33786
conv.s.v
push.s "\\E1* Then^1, I suppose I shall teach Susie for now./"@33787
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_283_0"@33788
conv.s.v
push.s "\\E0* Susie and I will start getting ready to make the pie!/%"@33789
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 897
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_294_0"@33790
conv.s.v
push.s "\\E6* Uhhh^1, we will? Wait--!/%"@33791
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[4]
push.v self.punchcon
pushi.e 1
cmp.i.v EQ
bf [14]

:[5]
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v GTE
bf [7]

:[6]
push.v self.punchtimer
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e 1
pop.v.i self.punchtimer
push.v self.kr_actor
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [14]

:[12]
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
pop.v.i self.punchtimer

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 3
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[19]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 210
pop.v.i global.plot
pushi.e 1
push.v self.susienpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.torielnpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.b self.krisexplore
pushi.e 0
pop.v.i self.con

:[24]
push.v self.krisexplore
conv.v.b
bf [35]

:[25]
push.v 82.y
pushi.e 100
cmp.i.v LT
bf [27]

:[26]
push.v 82.x
pushi.e 170
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.b self.krisexplore
pushi.e 10
pop.v.i self.con
pushi.e 104
pop.v.i 82.y

:[30]
push.v 82.y
pushi.e 160
cmp.i.v LT
bf [32]

:[31]
push.v 82.x
pushi.e 568
cmp.i.v GT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.b self.krisexplore
pushi.e 11
pop.v.i self.con
pushi.e 568
pop.v.i 82.x

:[35]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [37]

:[36]
pushi.e 50
pop.v.i self.con
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_373_0"@33792
conv.s.v
push.s "* (Kris^1! This is not the time to sneak some chocolates!)/"@33793
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "P"@4770
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_375_0"@33794
conv.s.v
push.s "\\EP* (Kris^1, get me some at least.)/%"@33795
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[37]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [39]

:[38]
pushi.e 50
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_383_0"@33796
conv.s.v
push.s "\\EH* (The hell are you leaving me here with your mom!?)/"@33797
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene30b_slash_Step_0_gml_384_0"@33798
conv.s.v
push.s "\\EK* (Is this like a..^1. what's it called? An introvert thing?)/%"@33799
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[39]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [41]

:[40]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [42]

:[41]
push.e 0

:[42]
bf [end]

:[43]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.b self.krisexplore

:[end]