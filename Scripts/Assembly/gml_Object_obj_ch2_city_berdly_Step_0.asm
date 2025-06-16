.localvar 2 arguments
.localvar 35236 berdly_marker 17183
.localvar 32196 battle_end 17184
.localvar 35238 used_snowgrave 17185

:[0]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [2]

:[1]
push.d 0.7
pop.v.d self.con

:[2]
push.v 82.x
pushi.e 310
cmp.i.v GTE
bf [4]

:[3]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.d 0.5
pop.v.d self.con

:[7]
push.v self.con
push.d 0.7
cmp.d.v EQ
bf [13]

:[8]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
b [11]

:[10]
pushi.e 10
conv.i.v

:[11]
pop.v.v self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
pushi.e 145
conv.i.v
pushi.e 660
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 674
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [13]

:[12]
pushi.e 724
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[13]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[14]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.shortened
conv.v.b
not.b
bf [16]

:[15]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_28_0"@35135
conv.s.v
push.s "\\EB* Uh-uh oh--/%"@35136
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 692
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [18]

:[17]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
b [19]

:[18]
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
push.s "obj_ch2_city_berdly_slash_Step_0_gml_49_0"@35137
conv.s.v
push.s "\\EN* Noelle!? What are you doing with Kris!?/"@35138
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
push.s "obj_ch2_city_berdly_slash_Step_0_gml_51_0"@35139
conv.s.v
push.s "\\E2* Um^1, I..^1. um..^1. I..^1. I.../%"@35140
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_63_0"@35141
conv.s.v
push.s "\\ER* We..^1. have a truce...?/%"@35142
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
pushi.e 692
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_71_0"@35143
conv.s.v
push.s "\\E3* A..^1. truce!? With..^1. Kris?/%"@35144
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 695
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_81_0"@35145
conv.s.v
push.s "\\E2* Hahaha!^1! That's impossible!/%"@35146
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_90_0"@35147
conv.s.v
push.s "\\E5* That would be double trucies./%"@35148
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
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_98_0"@35149
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e 4
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_113_0"@35150
conv.s.v
push.s "\\EF* Worry not^1, my dearest Noelle./"@35151
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_114_0"@35152
conv.s.v
push.s "\\E5* I know what you really want to say./%"@35153
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
push.s "obj_ch2_city_berdly_slash_Step_0_gml_122_0"@35154
conv.s.v
push.s "\\E2* You...^1. you do?/%"@35155
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_130_0"@35156
conv.s.v
push.s "\\E0* Going along with all this.../"@35157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_131_0"@35158
conv.s.v
push.s "\\E8* You feel..^1. forced^1, don't you?/"@35159
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_132_0"@35160
conv.s.v
push.s "\\EG* It's why you're not with Queen right now./%"@35161
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 739
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_141_0"@35162
conv.s.v
push.s "\\E2* Berdly..^1. you get it?/%"@35163
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
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_149_0"@35164
conv.s.v
push.s "\\E5* Yes!^1! I do!!/%"@35165
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_163_0"@35166
conv.s.v
push.s "\\E6* Kris is FORCING you to be on THEIR side!!/"@35167
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_164_0"@35168
conv.s.v
push.s "\\E2* Kidnapper!^1! Kris^1, our truce..^1. is OVER!!!/%"@35169
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 665
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -24
conv.i.v
pushi.e -64
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1849
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_179_0"@35170
conv.s.v
push.s "\\E6* Noelle!^1! This may hurt^1, but it's to help you!!/"@35171
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "E"@9481
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_181_0"@35172
conv.s.v
push.s "\\EE* W-wait^1, just listen to me---!!!/%"@35173
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[19]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [23]

:[20]
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_spellget(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 923
pop.v.v [array]self.flag
pushi.e -5
pushi.e 4
push.v [array]self.charweapon
pushi.e 13
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 923
pop.v.v [array]self.flag

:[22]
pushi.e 99
pop.v.i self.con
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 670
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_234_0"@35174
conv.s.v
push.s "\\E5* Noelle^1! There you are!/"@35175
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_235_0"@35176
conv.s.v
push.s "\\E4* Just in time^1! We can both go back to Queen and--/%"@35177
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_221_0"@35178
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_222_0"@35179
conv.s.v
push.s "\\E3* Noelle?/"@35180
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "e"@24643
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_251_0"@35181
conv.s.v
push.s "\\Ee* Kris^1, it looks like another enemy./"@35182
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_252_0"@35183
conv.s.v
push.s "\\Ed* Should I freeze them?/"@35184
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 23
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_254_0"@35185
conv.s.v
push.s "\\EN* N..^1. Noelle?/"@35186
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_255_0_b"@35187
conv.s.v
push.s "\\EN* Noelle^1, it's me^1, don't you recognize me!?/%"@35188
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 673
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 733
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "d.ogg"@35189
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_268_0"@35190
conv.s.v
push.s "\\EB* ...!?!?/"@35191
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_269_0"@35192
conv.s.v
push.s "\\EB* B..^1. Berdly!?/"@35193
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 23
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_271_0"@35194
conv.s.v
push.s "\\EN* Noelle^1, are you okay...?/"@35195
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_272_0"@35196
conv.s.v
push.s "\\EN* What..^1. what are you doing with Kris?/%"@35197
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_283_0"@35198
conv.s.v
push.s "\\ED* I'm just, we're just.../"@35199
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_279_0"@35200
conv.s.v
push.s "\\Ee* .../"@19220
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_280_0"@35201
conv.s.v
push.s "\\EZ* Getting..^1. stronger./%"@35202
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1175
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[23]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_285_0"@35203
conv.s.v
push.s "\\EN* Wh..^1. what? Proceed..^1. where?/"@35204
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_286_0"@35205
conv.s.v
push.s "\\EN* Noelle^1, what are they talking about!?/"@35206
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "Z"@9495
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_302_0"@35207
conv.s.v
push.s "\\EZ* .../"@35208
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "9"@9478
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_304_0"@35209
conv.s.v
push.s "\\E9* Th-that's it^1, Kris^1! I don't know what you're doing.../"@35210
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_305_0"@35211
conv.s.v
push.s "\\EA* But if you're hurting my friend Noelle.../%"@35212
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 665
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -24
conv.i.v
pushi.e -64
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_318_0"@35213
conv.s.v
push.s "\\EB* Then I have no choice but to stop you by force!/%"@35214
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1849
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_315_0"@35215
conv.s.v
push.s "\\EA* Kris^1, ready yourself!!/%"@35216
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
pushi.e 733
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_338_0"@35217
conv.s.v
push.s "\\EX* W-wait^1, Berdly^1, stop!/"@35218
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_339_0"@35219
conv.s.v
push.s "\\EY* Run away!/%"@35220
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[28]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [30]

:[29]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
pushi.e 2
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.i 231164
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.spell
pushi.e 3
popaf.e
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
call.i gml_Script_scr_sideb_fail(argc=0)
popz.v

:[34]
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 692
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_345_0"@35221
conv.s.v
push.s "\\E3* From..^1. me!?/%"@35222
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_353_0"@35223
conv.s.v
push.s "\\E2* (Th..^1. that's right^1, what was I thinking just now?)/"@35224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_354_0"@35225
conv.s.v
push.s "\\E6* (That's right..^1. Kris is my friend^1, right?)/%"@35226
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 698
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_362_0"@35227
conv.s.v
push.s "\\E5* What absurdity!!^1! Kris!!/"@35228
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_363_0"@35229
conv.s.v
push.s "\\E7* Did you leave your IQ points at home!?/"@35230
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_364_0"@35231
conv.s.v
push.s "\\E6* Noelle is only going to be protected BY ME!/%"@35232
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 665
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -24
conv.i.v
pushi.e -64
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1849
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_380_0"@35233
conv.s.v
push.s "\\E7* And I'll FIGHT HER to PROVE IT!/%"@35234
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
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_388_0"@35235
conv.s.v
push.s "\\EE* W-wait^1, just listen to me---!!!/%"@35173
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[35]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [38]

:[36]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [38]

:[37]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [48]

:[40]
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 30
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.tempflag

:[42]
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.berdly_marker
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.image_index
pushloc.v local.berdly_marker
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.image_speed
pushloc.v local.berdly_marker
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.i 232336
setowner.e
push.s "berdly_battle_heartbeat_true.ogg"@35237
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
b [45]

:[44]
push.i 232336
setowner.e
push.s "berdly_chase.ogg"@20906
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic

:[45]
pushi.e 550
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.berdly_marker
pushi.e 1
conv.i.v
pushi.e 82
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 893
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.visible

:[47]
popenv [46]

:[48]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [50]

:[49]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [51]

:[50]
push.e 0

:[51]
bf [57]

:[52]
pushi.e 0
pop.v.b local.battle_end
pushi.e 357
pushenv [55]

:[53]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.b local.battle_end

:[55]
popenv [53]
pushloc.v local.battle_end
conv.v.b
bf [57]

:[56]
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_snd_volume(argc=3)
popz.v

:[57]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [88]

:[58]
pushi.e 8
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [62]

:[59]
pushi.e 868
pushenv [61]

:[60]
pushi.e 1
pop.v.i self.destroy

:[61]
popenv [60]

:[62]
pushi.e 105
conv.i.v
call.i gml_Script_i_ex(argc=1)
pop.v.v local.used_snowgrave
pushloc.v local.used_snowgrave
conv.v.b
not.b
bf [64]

:[63]
push.v 372.x
pop.v.v 82.x
push.v 372.y
pop.v.v 82.y
push.v 372.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 372.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v 372.sprite_index
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 375.x
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 375.y
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v 375.sprite_index
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 485.x
push.v 485.shakex
add.v.v
push.v self.be_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 485.y
push.v self.be_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 702
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v
b [72]

:[64]
call.i gml_Script_scr_losechar(argc=0)
popz.v
push.v self.north_collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [68]

:[65]
push.v self.north_collider
pushi.e -9
pushenv [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
popenv [66]

:[68]
push.v self.dogcone2
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 30
sub.i.v
pop.i.v [stacktop]self.x
push.v self.dogcone2
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 35
add.i.v
pop.i.v [stacktop]self.y
push.v self.dogcone1
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 67
add.i.v
pop.i.v [stacktop]self.x
push.v self.dogcone1
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 47
add.i.v
pop.i.v [stacktop]self.y
push.v self.dogcone1
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e 90
sub.i.v
pop.i.v [stacktop]self.image_angle
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 349
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 38
pop.v.v [array]self.flag
pushi.e 310
pop.v.i 82.x
pushi.e 140
pop.v.i 82.y
pushi.e 1236
conv.i.v
pushi.e 80
conv.i.v
pushi.e 86
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 80
conv.i.v
pushi.e 126
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 104
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 136
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 168
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1236
conv.i.v
pushi.e 200
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v 82.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 82.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 893
pushenv [71]

:[69]
push.v self.name
push.s "kris"@68
cmp.s.v NEQ
bf [71]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[71]
popenv [69]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[72]
pushi.e 893
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.visible

:[74]
popenv [73]
pushi.e 392
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [78]

:[75]
pushi.e 392
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]

:[78]
pushi.e 360
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [82]

:[79]
pushi.e 360
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]

:[82]
pushi.e 371
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [86]

:[83]
pushi.e 371
pushenv [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [84]

:[86]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [88]

:[87]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[88]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [90]

:[89]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [91]

:[90]
push.e 0

:[91]
bf [107]

:[92]
pushi.e -5
pushi.e 349
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
pushi.e 30
pop.v.i self.con
b [107]

:[94]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bt [96]

:[95]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [97]

:[96]
push.e 1

:[97]
bf [99]

:[98]
pushi.e 49
conv.i.v
b [100]

:[99]
pushi.e 19
conv.i.v

:[100]
pop.v.v self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_527_0"@35239
conv.s.v
push.s "\\EC* D-damn it!/%"@35240
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
pushi.e 739
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_536_0"@35241
conv.s.v
push.s "\\E2* Berdly^1, are you okay...?/"@35242
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_537_0"@35243
conv.s.v
push.s "\\E3* Kris^1, maybe we should have gone easier on him.../%"@35244
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 695
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.15
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_550_0"@35245
conv.s.v
push.s "\\E6* Go easier!? Ha^1! Haha^1! Hahaha!/"@35246
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_551_0"@35247
conv.s.v
push.s "\\ED* The only one going easy mode^1, was me!/%"@35248
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 739
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_563_0"@35249
conv.s.v
push.s "\\E2* You look..^1. Exhausted./%"@35250
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_573_0"@35251
conv.s.v
push.s "\\ED* I'm only tired of HOLDING BACK MY TRUE POWER!/%"@35252
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
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_583_0"@35253
conv.s.v
push.s "\\EE* Ah^1, Noelle. It'd be too simple to save you now./"@35254
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_584_0"@35255
conv.s.v
push.s "\\E7* Kris^1! Go ahead and train your strength values./"@35256
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_585_0"@35257
conv.s.v
push.s "\\E1* Try hard^1, and maybe someday you'll be a worthy rival./%"@35258
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_592_0"@35259
conv.s.v
push.s "\\EE* Heh^1! Sometimes I can't believe how cool I am.../%"@35260
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 40
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
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
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bt [102]

:[101]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [103]

:[102]
push.e 1

:[103]
bf [107]

:[104]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e -5
pushi.e 4
push.v [array]self.maxhp
cmp.v.v LT
bf [106]

:[105]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_612_0"@35261
conv.s.v
push.s "\\EH* (He hit me in the face with a tornado...)/%"@35262
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [107]

:[106]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_619_0"@35263
conv.s.v
push.s "\\E4* (If he would just listen to me...)/%"@35264
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[107]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [109]

:[108]
push.i 231164
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.spell
pushi.e 3
popaf.e
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_636_0"@35265
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_637_0"@35266
conv.s.v
push.s "\\E2* Kris...?/"@35267
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_638_0"@35268
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_639_0"@35269
conv.s.v
push.s "\\E2* Umm^1, about just now.../"@35270
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_640_0"@35271
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_641_0"@35272
conv.s.v
push.s "\\E5* (Seems like whatever was happening.)/"@35273
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_642_0"@35274
conv.s.v
push.s "\\E8* (They snapped themselves out of it...)/"@35275
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_643_0"@35276
conv.s.v
push.s "\\Ee* (Proceed...)/"@35277
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_644_0"@35278
conv.s.v
push.s "\\Ec* (Why..^1. did they keep saying that...?)/"@35279
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_645_0"@35280
conv.s.v
push.s "\\E4* ..^1. w-wait^1, I get it!/"@35281
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_646_0"@35282
conv.s.v
push.s "\\ES* You were just trying to make Berdly mad^1, weren't you!?/"@35283
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_647_0"@35284
conv.s.v
push.s "\\EQ* Come on^1, that's not nice^1, Kris./"@35285
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_648_0"@35286
conv.s.v
push.s "\\ER* ..^1. Though^1, it's not like I don't understand the feeling./"@35287
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_649_0"@35288
conv.s.v
push.s "\\ES* Fahahaha./"@35289
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_650_0"@35290
conv.s.v
push.s "\\E8* I guess we both kind of got carried away...!/"@35291
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_651_0"@35292
conv.s.v
push.s "\\E8* .../"@631
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_berdly_slash_Step_0_gml_652_0"@35293
conv.s.v
push.s "\\Ed* (Really though^1, what..^1. was I thinking?)/%"@35294
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[109]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [111]

:[110]
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[111]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [113]

:[112]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [114]

:[113]
push.e 0

:[114]
bf [118]

:[115]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [117]

:[116]
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v

:[117]
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[118]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [120]

:[119]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [121]

:[120]
push.e 0

:[121]
bf [end]

:[122]
pushi.e 99
pop.v.i self.con
pushi.e 79
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 105
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [126]

:[123]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [125]

:[124]
call.i gml_Script_scr_sideb_fail(argc=0)
popz.v

:[125]
pushi.e 127
conv.i.v
pushi.e 100
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.savepoint
b [127]

:[126]
pushi.e 127
conv.i.v
pushi.e 97
conv.i.v
pushi.e 386
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.savepoint

:[127]
push.v self.savepoint
pushi.e -9
pushenv [129]

:[128]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[129]
popenv [128]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i gml_Script_scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]