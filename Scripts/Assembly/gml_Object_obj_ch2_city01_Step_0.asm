.localvar 2 arguments
.localvar 32533 savepoint 17109

:[0]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -100
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [5]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 4
pop.v.i self.qu
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 645
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 770
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 5
pop.v.i self.be
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 666
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 676
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.y
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_setxy(argc=2)
popz.v

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 222
conv.i.v
pushi.e 210
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 18
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.noellemarker
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_58_0"@34503
conv.s.v
push.s "\\EF* K-Kris!^1! What are you---/"@34504
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_60_0"@34505
conv.s.v
push.s "\\E1* Oh Noelle Sweetie/%"@34506
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 501
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 950000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_76_0"@34507
conv.s.v
push.s "\\EE* (Don't let her find me...)/%"@34508
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 173
conv.i.v
pushi.e 645
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "queen.ogg"@20919
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_85_0"@34509
conv.s.v
push.s "\\EI* Noelle Sweetie Darling Honey Where Are You/%"@34510
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_94_0"@34511
conv.s.v
push.s "\\EC* We're A Team Now Remember/"@34512
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_95_0"@34513
conv.s.v
push.s "* You Still Have To Be My Willing Minion/%"@34514
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 10
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_107_0"@34515
conv.s.v
push.s "\\ED* ..^1. Kris/"@34516
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_108_0"@34517
conv.s.v
push.s "\\E1* It Appears/"@34518
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_109_0"@34519
conv.s.v
push.s "\\EB* Our Comrades Have Pressed The Escape Key On Us/"@34520
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_110_0"@34521
conv.s.v
push.s "\\E5* ...^1. So It Has Come To This.../"@34522
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_111_0"@34523
conv.s.v
push.s "\\E5* In Order To Find Our Teams/"@34524
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_112_0"@34525
conv.s.v
push.s "\\E4* .../"@2911
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_113_0"@34526
conv.s.v
push.s "\\E9* We Must Form An Uneasy Truce.../%"@34527
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 25
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 505
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_120_0"@34528
conv.s.v
push.s "\\E6* Queen!^1! My splendid Queen!^1! Where are you!!/"@34529
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_122_0"@34530
conv.s.v
push.s "\\E8* Oh No Don't Let Him Find Me/%"@34531
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 173
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 503
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 20
conv.i.v
pushi.e 48
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 502
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 48
conv.i.v
pushi.e 215
conv.i.v
pushi.e 666
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 215
conv.i.v
pushi.e 535
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_146_0"@34532
conv.s.v
push.s "\\E0* Ah^1, Kris..^1. NOT the lifeform I was looking for./"@34533
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_147_0"@34534
conv.s.v
push.s "\\E3* ..^1. Hmm? Where's the rest of the C+ Squad?/"@34535
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_148_0"@34536
conv.s.v
push.s "\\E7* Don't tell me you got abandoned!? HA!!/"@34537
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_149_0"@34538
conv.s.v
push.s "\\E2* HAHA!^1! That's what you get for trusting Susie!^1! HA!!/%"@34539
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 163
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_157_0"@34540
conv.s.v
push.s "\\E3* H..^1. Huh? Noelle? Queen?/%"@34541
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 162
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_165_0"@34542
conv.s.v
push.s "\\EB* They're just..^1. busy retro gaming somewhere!!/%"@34543
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_176_0"@34544
conv.s.v
push.s "\\E6* I bet they're waiting for me on the player select screen!!/"@34545
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_177_0"@34546
conv.s.v
push.s "\\E2* Listening to strangely groovy music!^1! HAHA^1! HA!^1! HA!!/"@34547
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_178_0"@34548
conv.s.v
push.s "\\E8* .../%"@34549
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_186_0"@34550
conv.s.v
push.s "\\E9* ...Sigh./%"@34551
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_193_0"@34552
conv.s.v
push.s "\\EA* So it's come to this./"@34553
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_194_0"@34554
conv.s.v
push.s "\\E9* In order to find our respective teams.../"@34555
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_195_0"@34556
conv.s.v
push.s "\\E0* It APPEARS.../"@34557
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_196_0"@34558
conv.s.v
push.s "\\EJ* We must form an uneasy truce.../%"@34559
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 504
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_204_0"@34560
conv.s.v
push.s "\\E8* What The/"@34561
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_205_0"@34562
conv.s.v
push.s "\\EH* Who The Beep Said You Could Double Trucies/%"@34563
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_216_0"@34564
conv.s.v
push.s "\\E3* Huh? Did you hear something?/%"@34565
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 503
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_227_0"@34566
conv.s.v
push.s "\\EC* Honk Honk No It's Just The Sounds Of The City/"@34567
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "I"@9483
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_229_0"@34568
conv.s.v
push.s "\\EI* Oh okay./%"@34569
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
push.s "obj_ch2_city01_slash_Step_0_gml_237_0"@34570
conv.s.v
push.s "\\E7* Hmph. Well I'll be ahead. Don't be LATE!!!/%"@34571
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 215
conv.i.v
pushi.e 666
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
pushi.e 666
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 501
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
pushi.e 171
conv.i.v
pushi.e 470
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_258_0"@34572
conv.s.v
push.s "\\E1* Kris As Part Of Our Truce (The Better One)/"@34573
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_259_0"@34574
conv.s.v
push.s "\\ED* Keep Distracting Berdly And Find Noelle/"@34575
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_260_0"@34576
conv.s.v
push.s "\\E4* For You See.../%"@34577
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_269_0"@34578
conv.s.v
push.s "\\E5* Berdly..^1. He's.../%"@34579
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_279_0"@34580
conv.s.v
push.s "\\E1* OK There's Nothing Wrong With Him He's Just Annoying/%"@34581
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
pushi.e 14
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 11
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_289_0"@34582
conv.s.v
push.s "\\ED* Toodles/%"@34583
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 33
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 33
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 1065
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [11]

:[10]
pushi.e 21
pop.v.i self.con
pushi.e 0
conv.i.v
push.s "charjoined.ogg"@34584
conv.s.v
push.s "initplay"@9839
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_313_0"@34585
conv.s.v
push.s "* (Noelle joined the party!)/%"@34586
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[11]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [13]

:[12]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 50
pop.v.i self.con
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
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
pushi.e 70
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 127
conv.i.v
pushi.e 185
conv.i.v
pushi.e 360
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.savepoint
push.v self.alleyoverlay
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
pushloc.v local.savepoint
pushi.e -9
pop.v.v [stacktop]self.depth
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushi.e 1
pop.v.b self.noellejoin

:[21]
push.v self.noellejoin
conv.v.b
bf [end]

:[22]
push.v self.leaveleftattempt
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v 82.x
pushi.e 40
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 10
pop.v.i self.leavecon
pushi.e 1
pop.v.i self.leaveleftattempt

:[27]
push.v self.leaverightattempt
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v 82.x
pushi.e 520
cmp.i.v GT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1
pop.v.i self.leaverightattempt
pushi.e 20
pop.v.i self.leavecon

:[32]
push.v self.leavecon
pushi.e 10
cmp.i.v EQ
bf [36]

:[33]
pushi.e 30
pop.v.i self.leavecon
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v 82.x
pushi.e 4
add.i.v
pop.v.v 82.x
pushi.e 276
pushenv [35]

:[34]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[35]
popenv [34]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_375_0"@34587
conv.s.v
push.s "\\E2* K..^1. Kris...? Isn't that the wrong way...?/"@34588
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_376_0"@34589
conv.s.v
push.s "\\E8* (Somehow I'm already regretting this...)/%"@34590
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[36]
push.v self.leavecon
pushi.e 20
cmp.i.v EQ
bf [40]

:[37]
pushi.e 30
pop.v.i self.leavecon
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
push.v 82.x
pushi.e 4
sub.i.v
pop.v.v 82.x
pushi.e 276
pushenv [39]

:[38]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[39]
popenv [38]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_388_0"@34591
conv.s.v
push.s "\\ES* So^1, um^1, any idea where Susie is?/"@34592
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city01_slash_Step_0_gml_389_0"@34593
conv.s.v
push.s "\\EN* What!? WHAT!? I'm just asking!^1! It's a normal question!!/%"@34594
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[40]
push.v self.leavecon
pushi.e 30
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [end]

:[44]
pushi.e 0
pop.v.i self.leavecon
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]