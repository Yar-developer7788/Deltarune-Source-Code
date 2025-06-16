.localvar 2 arguments
.localvar 10437 _n 16488
.localvar 32530 n_offset 16489

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
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.su
pushi.e 893
conv.i.v
pushi.e 220
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 819
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.no
pushi.e 893
conv.i.v
pushi.e 220
conv.i.v
pushi.e 230
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 724
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 670
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[3]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_52_0"@32428
conv.s.v
push.s "\\EL* Well^1, that wasn't too bad./"@32429
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_54_0"@32430
conv.s.v
push.s "\\E4* Y..^1. yeah./%"@32431
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_64_0"@32432
conv.s.v
push.s "\\E9* ..^1. sigh./%"@32433
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_71_0"@32434
conv.s.v
push.s "\\E0* ...?/"@32435
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
push.s "obj_ch2_scene23d_slash_Step_0_gml_73_0"@32436
conv.s.v
push.s "\\E6* If only I could dream like this every day.../%"@32437
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_83_0"@32438
conv.s.v
push.s "\\E0* Maybe.../"@32439
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_84_0"@32440
conv.s.v
push.s "\\EK* It..^1. doesn't have to be a dream. Y'know?/%"@32441
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_92_0"@32442
conv.s.v
push.s "\\E2* Susie...?/"@32443
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
push.s "obj_ch2_scene23d_slash_Step_0_gml_94_0"@32444
conv.s.v
push.s "\\EK* Maybe..^1. maybe someday we could.../%"@32445
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "release_berdly"@32426
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "berdly_descend.ogg"@32446
conv.s.v
push.s "initplay"@9839
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
push.s "pitch"@9842
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "berdly_theme.ogg"@30925
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_129_0"@32447
conv.s.v
push.s "\\E6* Noelle^1! My lady!^1! The Cavalry has arrived to rescue you!!/%"@32448
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
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_136_0"@32449
conv.s.v
push.s "\\EH* (Oh^1, the good part of the dream is over.)/%"@32450
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_147_0"@32451
conv.s.v
push.s "\\E5* It's fine!!^1! Berdly's gonna help!^1! We're allies!!/%"@32452
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "hide_berdly"@32427
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 230
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_159_0"@32453
conv.s.v
push.s "\\EJ* Yes!^1! Don't worry^1, Noelle!^1! I'm stupid now!!/"@32454
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_161_0"@32455
conv.s.v
push.s "\\E2* .../%"@22226
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.s "obj_ch2_scene23d_slash_Step_0_gml_170_0"@32456
conv.s.v
push.s "\\E5* (He's good!!!)/%"@32457
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
pushi.e 10
conv.i.v
pushi.e 246
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_189_0"@32458
conv.s.v
push.s "\\E2* Look^1, I gotta go save the day now^1, alright?/"@32459
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 23
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_191_0"@32460
conv.s.v
push.s "\\EN* H..^1. huh!? Umm..^1. good luck^1, Susie!!/%"@32461
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_199_0"@32462
conv.s.v
push.s "\\EL* Alright^1, nugget boy. it's up to you now./"@32463
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "E"@9481
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_201_0"@32464
conv.s.v
push.s "\\EE* Leave it to me^1, my dear Susan./"@32465
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_203_0"@32466
conv.s.v
push.s "\\EK* Yeah^1, whatever. May the smarts be with you./%"@32467
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 548
conv.i.v
pushi.e 534
conv.i.v
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
pushi.e 278
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 244
conv.i.v
pushi.e 263
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 256
conv.i.v
pushi.e 326
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdlyunhappy"@10173
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_233_0"@32468
conv.s.v
push.s "\\E0* Ah..^1. she left before I could.../"@32469
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_234_0"@32470
conv.s.v
push.s "\\E9* ..../%"@32471
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_242_0"@32472
conv.s.v
push.s "\\E9* Noelle. It's hard to say this./"@32473
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_243_0"@32474
conv.s.v
push.s "\\E5* You've done so much for me^1, and I.../"@32475
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_244_0"@32476
conv.s.v
push.s "\\E8* Noelle..^1. I'm sorry./%"@32477
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_252_0"@32478
conv.s.v
push.s "\\EF* Berdly...? You're..^1. actually apologizing?/%"@32479
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_259_0"@32480
conv.s.v
push.s "\\E9* ..^1. Thank you. I..^1. I understand^1, you know?/"@32481
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_260_0"@32482
conv.s.v
push.s "\\E2* You've always..^1. been nice to me when it's just the two of us./%"@32483
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_267_0"@32484
conv.s.v
push.s "\\E4* You just wanted to make a happy world for me./%"@32485
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_274_0"@32486
conv.s.v
push.s "\\EH* I'm..^1. glad you realized^1, um..^1. it sucked./%"@32487
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_282_0"@32488
conv.s.v
push.s "\\E3* Oh./%"@32489
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_290_0"@32490
conv.s.v
push.s "\\E2* Huh?/%"@32491
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdlydark"@10171
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_299_0"@32492
conv.s.v
push.s "\\EI* I mean^1, YES^1, I WAS^1, in a WAY^1,/"@32493
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_300_0"@32494
conv.s.v
push.s "\\E4* Apologizing for THAT^1, but./%"@32495
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_307_0"@32496
conv.s.v
push.s "\\E5* I also wanted to apologize./%"@32497
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 682
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_314_0"@32498
conv.s.v
push.s "\\EG* For leading you on./"@32499
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 16
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_316_0"@32500
conv.s.v
push.s "\\EG /"@32501
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 8
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_318_0"@32502
conv.s.v
push.s "\\E8* I know you only always helped me out because^1, well.../%"@32503
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 675
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 682
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_327_0"@32504
conv.s.v
push.s "\\EH* You had a crush on me^1, so.../%"@32505
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_338_0"@32506
conv.s.v
push.s "\\EI* WHAT?/%"@32507
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_346_0"@32508
conv.s.v
push.s "\\E3* O-oh^1, sorry^1! Please^1, don't be embarrassed!/%"@32509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_356_0"@32510
conv.s.v
push.s "\\E4* It's understandable. But^1, I..^1. I have to tell you I.../%"@32511
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 683
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_364_0"@32512
conv.s.v
push.s "\\E5* I really value your friendship^1, OK? So I.../"@32513
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_365_0"@32514
conv.s.v
push.s "\\EG* I..^1. felt I had to pretend to reciprocate those feelings.../%"@32515
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_374_0"@32516
conv.s.v
push.s "\\EI* WHAT? But I..^1. I don't -- I never --/%"@32517
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_382_0"@32518
conv.s.v
push.s "\\E5* Furthermore^1, I think I may have.../%"@32519
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_392_0"@32520
conv.s.v
push.s "\\EM* Discovered someone else for me./%"@32521
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_401_0"@32522
conv.s.v
push.s "\\EH* HUH????????????/%"@32523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 252
conv.i.v
pushi.e 302
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_410_0"@32524
conv.s.v
push.s "\\E5* Please don't be jealous./"@32525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "I"@9483
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_412_0"@32526
conv.s.v
push.s "\\EI* OF????????????????&???????????????/%"@32527
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_419_0"@32528
conv.s.v
push.s "\\E4* Susie/%"@32529
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 227
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -4
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [8]

:[4]
pushi.e 0
pop.v.i local._n

:[5]
pushloc.v local._n
pushi.e 12
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
conv.i.v
push.s "shakeobj"@9131
conv.s.v
pushi.e 19
pushloc.v local._n
pushi.e 16
mul.i.v
add.v.i
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 167
conv.i.v
push.s "soundplay"@4
conv.s.v
pushi.e 19
pushloc.v local._n
pushi.e 16
mul.i.v
add.v.i
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
b [5]

:[7]
b [15]

:[8]
pushi.e 0
pop.v.i local.n_offset
pushi.e 0
pop.v.i local._n

:[9]
pushloc.v local._n
pushi.e 11
cmp.i.v LT
bf [15]

:[10]
pushloc.v local._n
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i local.n_offset

:[12]
pushloc.v local._n
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e -3
pop.v.i local.n_offset

:[14]
pushi.e 0
conv.i.v
push.s "shakeobj"@9131
conv.s.v
pushi.e 19
pushloc.v local._n
pushi.e 12
mul.i.v
add.v.i
pushloc.v local.n_offset
add.v.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 167
conv.i.v
push.s "soundplay"@4
conv.s.v
pushi.e 19
pushloc.v local._n
pushi.e 12
mul.i.v
add.v.i
pushloc.v local.n_offset
add.v.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
b [9]

:[15]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23d_slash_Step_0_gml_433_0"@32531
conv.s.v
push.s "\\s0\\EK* WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2?%%"@32532
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [18]

:[17]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 319
pop.v.v [array]self.flag
pushi.e 203
conv.i.v
call.i room_goto(argc=1)
popz.v

:[21]
push.v self.release_berdly
conv.v.b
bf [23]

:[22]
pushi.e 0
pop.v.b self.release_berdly
pushi.e 1067
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_glide

:[23]
push.v self.hide_berdly
conv.v.b
bf [end]

:[24]
pushi.e 0
pop.v.b self.hide_berdly
push.v self.berdly_glide
pushi.e -9
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]

:[end]