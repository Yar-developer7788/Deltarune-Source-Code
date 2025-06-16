.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.x
push.v self.x
cmp.v.v GTE
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 5
pop.v.i self.la
pushi.e 893
conv.i.v
pushi.e 184
conv.i.v
pushi.e 1220
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.la_actor
push.s "lancer"@4751
conv.s.v
push.v self.la_actor
push.v self.la
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1291
push.v self.la_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
pop.v.i self.nl
pushi.e 893
conv.i.v
push.v 82.y
pushi.e 80
sub.i.v
push.v 82.x
pushi.e 500
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nl_actor
push.s "lancer"@4751
conv.s.v
push.v self.nl_actor
push.v self.nl
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1294
push.v self.nl_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.nl
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_51_0"@29702
conv.s.v
push.s "\\E7* Hey^1, is that... Lancer!?/%"@29703
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 240
conv.i.v
pushi.e 936
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
pushi.e 186
conv.i.v
pushi.e 976
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
pushi.e 138
conv.i.v
pushi.e 930
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 16
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
push.s "obj_cutscene_test_slash_Step_0_gml_78_0"@29704
conv.s.v
push.s "\\E2* What are you up to^1, buddy?/%"@29705
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_87_0"@29706
conv.s.v
push.s "\\E1* Lancer?/%"@29707
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 360
conv.i.v
push.s "init"@9838
conv.s.v
push.s "image_angle"@278
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 187
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
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
push.s "obj_cutscene_test_slash_Step_0_gml_96_0"@29708
conv.s.v
push.s "\\E2* Ho ho ho!!^1! Susie!!!/%"@29709
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
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_107_0"@29710
conv.s.v
push.s "\\E1* Who says I'm Lancer?/"@29711
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_109_0"@29712
conv.s.v
push.s "\\E0* Of course you're Lancer.../"@29713
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_111_0"@29714
conv.s.v
push.s "\\E3* ..^1. then who's that?/%"@29715
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.nl
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 210
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_139_0"@29716
conv.s.v
push.s "\\E1* Hoho!/%"@29717
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
push.s "obj_cutscene_test_slash_Step_0_gml_145_0"@29718
conv.s.v
push.s "\\E0* Alright^1, are you Lancer then!?/"@29719
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_147_0"@29720
conv.s.v
push.s "\\E8* Yes I am!/%"@29721
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_156_0"@29722
conv.s.v
push.s "\\EL* Which one of you said that!?/%"@29723
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.nl
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 360
conv.i.v
push.s "init"@9838
conv.s.v
push.s "image_angle"@278
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_174_0"@29724
conv.s.v
push.s "\\E1* I did!/"@29725
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_176_0"@29726
conv.s.v
push.s "\\E4* That's it^1, I'm taking a closer look!/%"@29727
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
pushi.e 20
conv.i.v
push.v 82.y
pushi.e 80
sub.i.v
push.v 82.x
pushi.e 280
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 190
conv.i.v
pushi.e 826
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 186
conv.i.v
pushi.e 976
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_209_0"@29728
conv.s.v
push.s "\\E0* Umm^1, so what did you figure out?/"@29729
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_211_0"@29730
conv.s.v
push.s "\\E3* Uhhh.../%"@29731
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_220_0"@29732
conv.s.v
push.s "\\E9* I'll just be friends with both of them!/%"@29733
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 813
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_231_0"@29734
conv.s.v
push.s "\\E2* That's the attitude!/"@29735
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_233_0"@29736
conv.s.v
push.s "\\E1* Hohoho^1! Yeah^1, it is!/%"@29737
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2275
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 34
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1510
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.la
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_259_0"@29738
conv.s.v
push.s "\\ER* What the!?/"@29739
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_260_0"@29740
conv.s.v
push.s "\\EZ* L-Lancer!?/%"@29741
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_274_0"@29742
conv.s.v
push.s "\\E2* That was the fake one./"@29743
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_cutscene_test_slash_Step_0_gml_276_0"@29744
conv.s.v
push.s "\\E2* Oh^1, okay./%"@29745
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.nl
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 205
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 10
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]