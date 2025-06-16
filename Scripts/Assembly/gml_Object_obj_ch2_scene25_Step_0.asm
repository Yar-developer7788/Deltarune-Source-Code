.localvar 2 arguments
.localvar 32605 queen_marker 16506
.localvar 32606 new_berdly 16507
.localvar 32196 battle_end 16508
.localvar 6113 small_text 16509
.localvar 32533 savepoint 16510

:[0]
push.v 82.x
pushi.e 650
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
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
push.v self.su_actor
pushi.e -9
pushenv [6]

:[5]
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[6]
popenv [5]
push.v self.ra_actor
pushi.e -9
pushenv [8]

:[7]
push.s "ralseiunhappy"@10174
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[8]
popenv [7]
pushi.e 293
conv.i.v
pushi.e -100
conv.i.v
pushi.e 900
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_wire
pushi.e 295
conv.i.v
pushi.e -100
conv.i.v
pushi.e 900
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_wire2
pushi.e 249
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 810
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.berdly_plug
push.i 232289
setowner.e
push.v self.berdly_wire
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
push.v self.berdly_plug
push.v self.cutscene_master
pushi.e -9
pushi.e 1
pop.v.v [array]self.save_object
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 2
pop.v.v [array]self.save_object
push.v self.berdly_wire2
push.v self.cutscene_master
pushi.e -9
pushi.e 3
pop.v.v [array]self.save_object
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
pushi.e 125
conv.i.v
pushi.e 1058
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1887
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.qu
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
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 970
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 245
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.qu_flame
pushi.e 765
conv.i.v
pushi.e 125
conv.i.v
pushi.e 1058
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.qu_flame_actor
push.s "qu_flame"@30470
conv.s.v
push.v self.qu_flame_actor
push.v self.qu_flame
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
push.v self.qu_flame_actor
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[10]
pushi.e 10
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
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
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_69_0"@32554
conv.s.v
push.s "\\EH* There she is!/%"@32555
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 195
conv.i.v
pushi.e 790
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 228
conv.i.v
pushi.e 740
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 150
conv.i.v
pushi.e 740
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.shortened
conv.v.b
not.b
bf [12]

:[11]
pushi.e 15
conv.i.v
pushi.e 150
conv.i.v
pushi.e 860
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_79_0"@32556
conv.s.v
push.s "\\E5* Queen!!!^1! Stop right there!!!/%"@32557
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[12]
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 100
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [14]

:[13]
pushi.e 10
conv.i.v
pushi.e 175
conv.i.v
pushi.e -100
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdly_wire
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 765
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
b [15]

:[14]
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_151_0"@32558
conv.s.v
push.s "\\E1* Ah My Sweet Idiot Children/"@32559
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_152_0"@32560
conv.s.v
push.s "\\E7* You Are Just In Time To Witness My World Domination/"@32561
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_153_0"@32562
conv.s.v
push.s "\\ED* With Noelle In My Possession/"@32563
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_154_0"@32564
conv.s.v
push.s "\\E1* It Is Only A Matter Of Time Before Her Will Turns/"@32565
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_155_0"@32566
conv.s.v
push.s "\\E6* And She Unleashes Her Power/"@32567
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_156_0"@32568
conv.s.v
push.s "\\E7* Blanketing The World In --/%"@32569
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 230
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 58
conv.i.v
pushi.e 0
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_232_0"@32570
conv.s.v
push.s "\\EQ* Too late^1, dumbass!/"@32571
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_233_0"@32572
conv.s.v
push.s "\\E2* Noelle's with Berdly!/"@32573
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_235_0"@32574
conv.s.v
push.s "\\E3* Oh/"@32575
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_236_0"@32576
conv.s.v
push.s "\\EA* Then Who This/%"@32577
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 175
conv.i.v
pushi.e -100
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdly_wire
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -58
conv.i.v
pushi.e 0
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -15
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -15
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -15
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "GALLERY.ogg"@32578
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_266_0"@32579
conv.s.v
push.s "\\EC* B..^1. Berdly!? But he's been.../%"@32580
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
pushi.e 1881
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 765
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
pushi.e 175
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdly_wire
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1000
conv.i.v
push.v self.berdly_wire
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.berdly_wire
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_278_0"@32581
conv.s.v
push.s "\\E7* Intercepted/"@32582
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_279_0"@32583
conv.s.v
push.s "\\EC* My Control Plugs Are Now Suitable For Teenagers/"@32584
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_280_0"@32585
conv.s.v
push.s "\\E1* Now The Whole Family Can Enjoy Eternal Servitude/%"@32586
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_299_0"@32587
conv.s.v
push.s "\\EC* (Sort Of Regal Mostly Cruel Laughter)/"@32588
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "Z"@9495
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_301_0"@32589
conv.s.v
push.s "\\EZ* Wait^1, then..^1. where's Noelle!??/%"@32590
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_311_0"@32591
conv.s.v
push.s "\\EP* (Laughter Becomes More Cruel)/"@32592
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_312_0"@32593
conv.s.v
push.s "\\ED* Oh I Wonder (I Actually Know The Answer)/%"@32594
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 175
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1478
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1506
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.7333333333333333
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1419
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.4666666666666667
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1512
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1422
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 765
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_345_0"@32595
conv.s.v
push.s "\\EI* Enough already!/"@32596
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "E"@9481
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_347_0"@32597
conv.s.v
push.s "\\EE* Oh Dear/"@32598
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_348_0"@32599
conv.s.v
push.s "\\EF* I Do Sincerely Quite Like You Two/"@32600
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_349_0"@32601
conv.s.v
push.s "\\EF* It Will Be A Shame To Force You To Serve Me/"@32602
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_350_0"@32603
conv.s.v
push.s "\\E7* An Enjoyable Shame/%"@32604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[15]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [17]

:[16]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [28]

:[19]
pushi.e 19
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 31
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 31
pop.v.v [array]self.tempflag

:[21]
push.v self.qu_actor
pushi.e -9
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.visible

:[23]
popenv [22]
push.v self.qu_flame_actor
pushi.e -9
pushenv [25]

:[24]
pushi.e 0
pop.v.i self.visible

:[25]
popenv [24]
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.queen_marker
pushi.e 0
push.v self.berdly_wire
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 576
conv.i.v
push.v self.berdly_wire
pushi.e -9
push.v [stacktop]self.y
push.v self.berdly_wire
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.new_berdly
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "queen_boss.ogg"@32607
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 548
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushloc.v local.new_berdly
pushloc.v local.queen_marker
pushi.e 1
conv.i.v
pushi.e 59
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [27]

:[26]
pushi.e 868
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[27]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag

:[28]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [30]

:[29]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [31]

:[30]
push.e 0

:[31]
bf [50]

:[32]
pushi.e 0
pop.v.b local.battle_end
push.v 357.intro
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.b local.battle_end

:[34]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[35]
push.v 574.endcon
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.v 574.endtimer
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.b local.battle_end

:[40]
pushloc.v local.battle_end
pushi.e 1
cmp.b.v EQ
bf [50]

:[41]
pushi.e 21
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v 574.defeat_cutscene_version
pop.v.v self.berdly_full_spare
push.v self.berdly_full_spare
conv.v.b
not.b
bf [43]

:[42]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[43]
push.i 231204
setowner.e
push.v self.berdly_full_spare
pushi.e 1
cmp.b.v EQ
bf [45]

:[44]
pushi.e 1
conv.i.v
b [46]

:[45]
pushi.e 0
conv.i.v

:[46]
pushi.e -5
pushi.e 457
pop.v.v [array]self.flag
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 701
conv.i.v
b [49]

:[48]
pushi.e 703
conv.i.v

:[49]
push.v self.berdlynpc
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[50]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [85]

:[51]
push.v self.berdly_full_spare
conv.v.b
bf [53]

:[52]
pushi.e 505
conv.i.v
b [54]

:[53]
pushi.e 252
conv.i.v

:[54]
push.v self.qu_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 392.x
pushi.e 2
add.i.v
push.v self.qu_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 392.y
push.v self.qu_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.berdly_full_spare
conv.v.b
bf [56]

:[55]
pushi.e 1095
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 150
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.y

:[56]
pushi.e 1
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.berdly_full_spare
pushi.e 0
cmp.b.v EQ
push.v self.qu_flame_actor
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.berdly_full_spare
conv.v.b
bf [75]

:[57]
pushi.e 381
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
popenv [58]
pushi.e 24
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 1
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 657
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 115
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 655
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 155
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1005
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 660
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 222
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 371
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 392
pushenv [63]

:[62]
pushi.e 0
pop.v.b self.visible

:[63]
popenv [62]
pushi.e 360
pushenv [65]

:[64]
pushi.e 0
pop.v.b self.visible

:[65]
popenv [64]
pushi.e 357
pushenv [67]

:[66]
pushi.e 0
pop.v.b self.visible

:[67]
popenv [66]
pushi.e 1
push.v self.be_actor
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 576
pushenv [70]

:[68]
push.v self.outrotimer
pushi.e -1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 0
pop.v.i self.outrotimer

:[70]
popenv [68]
pushi.e 893
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 200
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3362
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 576
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [72]

:[71]
pushi.e 576
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[72]
pushi.e 1
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 705
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 125
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 735
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 165
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 825
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 690
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 215
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 796
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 371
pushenv [74]

:[73]
call.i instance_destroy(argc=0)
popz.v

:[74]
popenv [73]
b [84]

:[75]
pushi.e 24
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 357
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]
pushi.e 392
pushenv [79]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[79]
popenv [78]
pushi.e 360
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushi.e 381
pushenv [83]

:[82]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e -10
pop.v.i self.hspeed
push.d -0.4
pop.v.d self.friction

:[83]
popenv [82]

:[84]
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[85]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [88]

:[86]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.v self.berdly_full_spare
conv.v.b
b [89]

:[88]
push.e 0

:[89]
bt [96]

:[90]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [93]

:[91]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [93]

:[92]
push.v self.berdly_full_spare
conv.v.b
not.b
b [94]

:[93]
push.e 0

:[94]
bt [96]

:[95]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [97]

:[96]
push.e 1

:[97]
bf [117]

:[98]
pushi.e 59
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
push.v self.be_actor
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 0
pop.v.i global.facing
push.v self.berdly_full_spare
conv.v.b
not.b
bf [100]

:[99]
pushi.e 1
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 372.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 372.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1005
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v 373.x
pushi.e 6
add.i.v
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 373.y
pushi.e 4
add.i.v
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 796
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 374.x
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.y
b [108]

:[100]
pushi.e 357
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [102]

:[101]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[102]
pushi.e 392
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 360
pushenv [106]

:[105]
call.i instance_destroy(argc=0)
popz.v

:[106]
popenv [105]
pushi.e 893
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 200
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3362
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 576
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [108]

:[107]
pushi.e 576
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[108]
pushi.e 371
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.berdly_full_spare
conv.v.b
not.b
bf [112]

:[111]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 125
conv.i.v
pushi.e 720
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 167
conv.i.v
pushi.e 787
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 219
conv.i.v
pushi.e 709
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 252
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 653
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_657_0"@32608
conv.s.v
push.s "\\E8* Oh Dear It Seems/"@32609
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_658_0"@32610
conv.s.v
push.s "\\E8* Someone Sipped Up All Of My Shield Power/"@32611
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 32
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_660_0"@32612
conv.s.v
push.s "\\EW* In other words.../%"@32613
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 125
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 167
conv.i.v
pushi.e 907
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 219
conv.i.v
pushi.e 829
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 230
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_685_0"@32614
conv.s.v
push.s "\\EY* Nothing's stopping us from beating you up now^1, huh?/"@32615
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_687_0"@32616
conv.s.v
push.s "\\E9* Well/"@32617
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_688_0"@32618
conv.s.v
push.s "\\E7* Not Nothing/%"@32619
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
pushi.e 1881
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
push.d -2.5
conv.d.v
pushi.e 0
conv.i.v
push.s "gravity"@10771
conv.s.v
pushi.e 576
conv.i.v
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e -50
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1521
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_camerax(argc=0)
pushi.e 300
add.i.v
push.s "x"@50
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 200
conv.i.v
pushi.e -100
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e -17
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -17
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -17
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "friction"@10775
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_740_0"@32620
conv.s.v
push.s "\\E1* Mr. Birdy Here Still Has Maximum HP/"@32621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_741_0"@32622
conv.s.v
push.s "\\EA* So Unless You Want Your Dear Friend To Get Hurt/"@32623
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_742_0"@32624
conv.s.v
push.s "\\ED* I Recommend/%"@32625
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1881
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "tornadocon"@21150
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_754_0"@32626
conv.s.v
push.s "\\E7* Letting Him Hurt You Instead/%"@32627
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 761
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e -2
conv.i.v
push.s "image_xscale"@279
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_camerax(argc=0)
pushi.e 350
add.i.v
push.s "x"@50
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "con"@829
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_776_0"@32628
conv.s.v
push.s "* You..^1. won't..^1. control..^1. me.../"@32629
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 14
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_778_0"@32630
conv.s.v
push.s "\\EE* What/"@32631
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_779_0"@32632
conv.s.v
push.s "\\EH* What Are You Doing/%"@32633
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 252
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
pushi.e 5
conv.i.v
push.s "con"@829
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_795_0"@32634
conv.s.v
push.s "* Taking..^1. off..^1. this..^1. plug!/%"@32635
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
push.s "con"@829
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_803_0"@32636
conv.s.v
push.s "\\EE* Stop--/"@32637
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_804_0"@32638
conv.s.v
push.s "\\EH* Stop That At Once Your Arm Will--/%"@32639
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
push.s "con"@829
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 209
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 175
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "hspeed"@10270
conv.s.v
push.v self.qu_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d -0.5
conv.d.v
push.s "friction"@10775
conv.s.v
push.v self.qu_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.i 16777215
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_c_fadeout_color(argc=2)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_822_0"@32640
conv.s.v
push.s "\\EH* STOP!!!/%"@32641
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e -999
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -999
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "con"@829
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "floatcon"@21151
conv.s.v
push.v self.berdly_wire2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 210
conv.i.v
pushi.e 896
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 671
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 125
conv.i.v
pushi.e 705
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 825
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 165
conv.i.v
pushi.e 735
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 796
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 215
conv.i.v
pushi.e 690
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 703
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 228
conv.i.v
pushi.e 896
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1521
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 170
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 215
conv.i.v
pushi.e 793
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 48
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_965_0"@32642
conv.s.v
push.s "\\EZ* Berdly..^1. what the hell^1, man!?/"@32643
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_966_0"@32644
conv.s.v
push.s "* Your arm is..^1.&* That was stupid...!/"@32645
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "E"@9481
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_539_0"@32646
conv.s.v
push.s "\\EE* Yes..^1. It was^1, wasn't it...? \\f1 /"@32647
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_838_0"@32648
conv.s.v
push.s "IT'S NOT PRAISE!!"@32649
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
pushloc.v local.small_text
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 5
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_540_0"@32650
conv.s.v
push.s "\\E9* Kris. Susie. I can't do much with a fried wing.../"@32651
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_541_0"@32652
conv.s.v
push.s "\\EH* Please..^1. promise. You'll save Noelle./"@32653
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "F"@5969
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_543_0"@32654
conv.s.v
push.s "\\EF* We..^1. we promise!/%"@32655
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [113]

:[112]
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 125
conv.i.v
pushi.e 705
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 825
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 165
conv.i.v
pushi.e 735
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 796
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 215
conv.i.v
pushi.e 690
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.2
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_870_0"@32656
conv.s.v
push.s "\\E9* Queen...!/"@32657
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_871_0"@32658
conv.s.v
push.s "\\EA* You may have mastered the number three.../"@32659
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_872_0"@32660
conv.s.v
push.s "\\EI* But can you stand up against FOUR of us!?/"@32661
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_874_0"@32662
conv.s.v
push.s "\\E2* Running Simulation For: The Number Four/"@32663
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_875_0"@32664
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_876_0"@32665
conv.s.v
push.s "\\E2* Hmm/"@32666
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_877_0"@32667
conv.s.v
push.s "\\E1* You Are Definitely Going To Kick: My Ass/"@32668
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_878_0"@32669
conv.s.v
push.s "\\E9* Unless/%"@32670
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3292
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 2096
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_909_0"@32671
conv.s.v
push.s "\\EE* Oh No What That/%"@32672
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 290
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 3291
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.3
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
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
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=1)
popz.v
pushi.e 694
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_962_0"@32673
conv.s.v
push.s "\\EC* W-wait^1! Wait one nanosecond^1! You..^1. you cowardette!/"@32674
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_969_0"@32675
conv.s.v
push.s "\\ED* You..^1. you.../%"@32676
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 701
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 228
conv.i.v
pushi.e 896
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1521
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 170
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 215
conv.i.v
pushi.e 793
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 48
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_1009_0"@32677
conv.s.v
push.s "\\EH* Alas.../"@32678
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
push.s "obj_ch2_scene25_slash_Step_0_gml_1011_0"@32679
conv.s.v
push.s "\\E6* B-Berdly!?/"@32680
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_1013_0"@32681
conv.s.v
push.s "\\E5* Haha^1, just now^1, was nothing more than simple bravado.../"@32682
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_1014_0"@32683
conv.s.v
push.s "\\E8* The truth is^1, that wire.../"@32684
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_1015_0"@32685
conv.s.v
push.s "\\EH* Already absorbed all of my succulent energy juices./%"@32686
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[113]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e 4
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 256
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 250
conv.i.v
pushi.e 886
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.ra
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_573_0"@32687
conv.s.v
push.s "\\EZ* Berdly!^1! Hey!^1! Hey^1, Berdly!^1! Are you OK!?/"@32688
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "G"@9482
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_575_0"@32689
conv.s.v
push.s "\\EG* Everything..^1. getting dark.../"@32690
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_576_0"@32691
conv.s.v
push.s "\\EH* (Only...)/%"@32692
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 257
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_583_0"@32693
conv.s.v
push.s "\\EF* (Only a kiss from a beautiful gamer girl can save me now...)/%"@32694
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 175
conv.i.v
pushi.e 920
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 548
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_1035_0"@32695
conv.s.v
push.s "\\E8* Berdly.../%"@32696
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711935
conv.i.v
call.i merge_color(argc=3)
pushi.e 90
conv.i.v
call.i gml_Script_c_fadeout_color(argc=2)
popz.v
pushi.e 146
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 75
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 258
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_599_0"@32697
conv.s.v
push.s "\\EC* What?/"@32698
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_600_0"@32699
conv.s.v
push.s "\\EK* Like^1, get you're^1, like^1, losing consciousness and stuff^1, but^1,/"@32700
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_601_0"@32701
conv.s.v
push.s "\\EP* Could you speak up?/%"@32702
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.berdly_full_spare
conv.v.b
bf [115]

:[114]
pushi.e 701
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
b [116]

:[115]
pushi.e 703
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[116]
pushi.e 228
conv.i.v
pushi.e 895
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.su
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
push.s "obj_ch2_scene25_slash_Step_0_gml_610_0"@32703
conv.s.v
push.s "\\EN* Umm^1, aha^1, s-sorry^1, suddenly I..^1. I..^1. I'm feeling a bit better!/"@32704
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_612_0"@32705
conv.s.v
push.s "\\E2* Hey^1, that's a relief!/%"@32706
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_621_0"@32707
conv.s.v
push.s "\\EK* Well^1, uh^1, gotta hurry and save Noelle^1, so..^1. later./%"@32708
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 70
conv.i.v
pushi.e 7
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_638_0"@32709
conv.s.v
push.s "\\E5* Ahh^1, dear Susan. So enigmatic in her ways./"@32710
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_639_0"@32711
conv.s.v
push.s "\\E4* But I can read her heart^1, Kris. Like a health meter./"@32712
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_640_0"@32713
conv.s.v
push.s "\\EF* And it's beeping..^1. for love./"@32714
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_641_0"@32715
conv.s.v
push.s "\\E4* Haha^1! Well enough tales^1, Kris. Good luck./"@32716
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_642_0"@32717
conv.s.v
push.s "\\E5* May the smarts..^1. NOT be with you./%"@32718
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 18
conv.i.v
pushi.e 113
conv.i.v
pushi.e 662
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene25_slash_Step_0_gml_659_0"@32719
conv.s.v
push.s "\\EK* Okay./%"@32720
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_npc_realign"@32550
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.berdlynpc
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
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
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[117]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [119]

:[118]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [129]

:[121]
pushi.e 0
pop.v.i self.con
pushi.e 165
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 127
conv.i.v
pushi.e 40
conv.i.v
pushi.e 905
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.savepoint
pushloc.v local.savepoint
pushi.e -9
pushenv [123]

:[122]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[123]
popenv [122]
pushi.e 82
pushenv [125]

:[124]
pushi.e 0
pop.v.i self.cutscene

:[125]
popenv [124]
pushi.e 276
pushenv [128]

:[126]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [128]

:[127]
pushi.e 0
pop.v.i self.follow
pushi.e 0
pop.v.i self.visible

:[128]
popenv [126]

:[129]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [131]

:[130]
push.v self.berdly_npc_realign
conv.v.b
b [132]

:[131]
push.e 0

:[132]
bf [end]

:[133]
pushi.e 0
pop.v.b self.berdly_npc_realign
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.berdlynpc
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.berdlynpc
pushi.e -9
pop.v.v [stacktop]self.y

:[end]