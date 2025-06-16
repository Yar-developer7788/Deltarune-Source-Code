.localvar 2 arguments

:[0]
push.v self.moon
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d 0.5
mul.d.v
push.v self.moon
pushi.e -9
push.v [stacktop]self.xstart
add.v.v
push.v self.moon
pushi.e -9
pop.v.v [stacktop]self.x

:[2]
pushi.e -5
pushi.e 319
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [30]

:[3]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [5]

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
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 824
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.no
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
pushi.e 618
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 212
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "noelle_normal.ogg"@31825
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "disable_face"@31824
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_59_0"@31826
conv.s.v
push.s "\\E1* What a strange moon.../"@31827
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_60_0"@31828
conv.s.v
push.s "\\E5* It's like nothing I've ever seen before./"@31829
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_61_0"@31830
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_62_0"@31831
conv.s.v
push.s "\\E9* This world.../"@31832
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_63_0"@31833
conv.s.v
push.s "\\EA* ..^1. I wish Dess could see this./%"@31834
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 214
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_77_0"@31835
conv.s.v
push.s "\\E2* ...^1. Is somebody there?/%"@31836
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
pushi.e -20
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 1711
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.s "y"@52
conv.s.v
push.v self.werewire1
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 714
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e -20
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 1711
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.s "y"@52
conv.s.v
push.v self.werewire2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_102_0"@31837
conv.s.v
push.s "\\EB* W-wait^1, what are you.../%"@31838
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
pushi.e 590
conv.i.v
pushi.e 575
conv.i.v
push.s "x"@50
conv.s.v
push.v self.werewire1
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 685
conv.i.v
pushi.e 705
conv.i.v
push.s "x"@50
conv.s.v
push.v self.werewire2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_114_0"@31839
conv.s.v
push.s "\\EE* H-Hey^1, you can't capture someone who's already captured!!/%"@31840
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "rudebuster"@31820
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 216
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
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "sparecon"@7919
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 235
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1465
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 714
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_160_0"@31841
conv.s.v
push.s "\\EE* S..^1. Susie!?/"@31842
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_161_0"@31843
conv.s.v
push.s "\\E6* You..^1. you saved me...?/%"@31844
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1474
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -20
conv.i.v
pushi.e -4
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e -3
conv.i.v
pushi.e 2
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_179_0"@31845
conv.s.v
push.s "\\EL* Don't get used to it./%"@31846
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
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_187_0"@31847
conv.s.v
push.s "\\EN* Umm^1, OK^1, I..^1. I won't...!/"@31848
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_188_0"@31849
conv.s.v
push.s "\\EP* .../%"@31850
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 75
conv.i.v
pushi.e 210
conv.i.v
pushi.e 589
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 212
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 36
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
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_207_0"@31851
conv.s.v
push.s "\\EK* Cool moon./"@31852
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_209_0"@31853
conv.s.v
push.s "\\E2* Y..^1. yeah./"@31854
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_210_0"@31855
conv.s.v
push.s "\\E3* ..^1. b-but it's weird^1, isn't it?/%"@31856
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 213
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_217_0"@31857
conv.s.v
push.s "\\E1* How did we get here...?/"@31858
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_220_0"@31859
conv.s.v
push.s "\\E3* No^1, what even is this place...?/%"@31860
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1119
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[7]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [9]

:[8]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_245_0"@31861
conv.s.v
push.s "\\E7* Uhhh..^1. you're^1, uh..^1. just having a dream!/%"@31862
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
pushi.e 214
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_252_0"@31863
conv.s.v
push.s "\\E2* H..^1. huh...?/%"@31864
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 212
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_258_0"@31865
conv.s.v
push.s "\\E6* Oh..^1. Oh^1, that's right./%"@31866
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
pushi.e 213
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
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
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_269_0"@31867
conv.s.v
push.s "\\E8* Right..^1. if YOU'RE here^1, it must be a dream.../"@31868
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
push.s "obj_ch2_scene23b_slash_Step_0_gml_271_0"@31869
conv.s.v
push.s "\\E6* ???????/%"@31870
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 714
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_280_0"@31871
conv.s.v
push.s "\\E8* I MEAN^1, the real Susie probably wouldn't save me^1, would she...?/%"@31872
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
pushi.e 213
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_287_0"@31873
conv.s.v
push.s "\\E9* She..^1. probably doesn't care about me at all./"@31874
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_289_0"@31875
conv.s.v
push.s "\\E6* Huh?/%"@31876
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
pushi.e 80
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e -8
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_301_0"@31877
conv.s.v
push.s "\\EK* Why would you^1, uh..^1. think that?/%"@31878
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
pushi.e 714
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_310_0"@31879
conv.s.v
push.s "\\E8* Umm^1, she doesn't care about anybody./"@31880
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
push.s "obj_ch2_scene23b_slash_Step_0_gml_312_0"@31881
conv.s.v
push.s "\\EK* Well^1, FAIR^1, but.../%"@31882
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_322_0"@31883
conv.s.v
push.s "\\E3* Didja ever wonder why Susie never..^1. picked on you?/"@31884
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
push.s "obj_ch2_scene23b_slash_Step_0_gml_324_0"@31885
conv.s.v
push.s "\\E6* (sigh)..^1. All the time.../%"@31886
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 8
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_333_0"@31887
conv.s.v
push.s "\\E0* MAYBE it's 'cause^1, when she first came to class./"@31888
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_334_0"@31889
conv.s.v
push.s "\\E1* You lent her one of your pencils^1,/%"@31890
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_341_0"@31891
conv.s.v
push.s "\\EK* Like^1, a dumb^1, uh^1, candycane-looking one or something./"@31892
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_342_0"@31893
conv.s.v
push.s "\\E0* And^1, even though it DIDN'T actually taste like candy^1,/%"@31894
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_346_0"@31895
conv.s.v
push.s "\\EK* She^1, uh^1, remembered your smile^1, and^1, uh.../%"@31896
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
push.s "obj_ch2_scene23b_slash_Step_0_gml_350_0"@31897
conv.s.v
push.s "\\EL* Decided to spare you. Y'know./"@31898
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "3"@2741
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_352_0"@31899
conv.s.v
push.s "\\E3* That's^1, um.../%"@31900
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 218
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_361_0"@31901
conv.s.v
push.s "\\E8* Really specific./%"@31902
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
pushi.e 80
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_369_0"@31903
conv.s.v
push.s "\\EK* Yeah^1, well^1, uh^1,/%"@31904
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
pushi.e 217
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_377_0"@31905
conv.s.v
push.s "\\E8* ..^1. wait^1, did you say you ATE the pencil!?/%"@31906
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 218
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_391_0"@31907
conv.s.v
push.s "\\E5* I MEAN^1, LOOK!/%"@31908
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
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_398_0"@31909
conv.s.v
push.s "\\E0* .../%"@3988
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 225
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_410_0"@31910
conv.s.v
push.s "\\EK* Uh^1, hey^1, so^1, do you..^1. dream about me a lot?/%"@31911
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 211
conv.i.v
pushi.e 610
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 4
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 723
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_433_0"@31912
conv.s.v
push.s "\\EM* WELL^1, time for me to get back to my project^1, haha!/%"@31913
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
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 220
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 212
conv.i.v
pushi.e 561
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_447_0"@31914
conv.s.v
push.s "\\EQ* Okay^1, Susie^1, hit me with your ax and wake me up!/"@31915
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
push.s "obj_ch2_scene23b_slash_Step_0_gml_449_0"@31916
conv.s.v
push.s "\\EZ* W-wait^1, no^1, I can't do that!/%"@31917
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_455_0"@31918
conv.s.v
push.s "\\E8* Huh? Why not? It's just a dream^1, so.../%"@31919
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_461_0"@31920
conv.s.v
push.s "\\EC* Umm^1, I mean.../"@31921
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_462_0"@31922
conv.s.v
push.s "\\EK* Didn't you wanna..^1. uh..^1. hang out some more?/%"@31923
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 211
conv.i.v
pushi.e 618
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_473_0"@31924
conv.s.v
push.s "\\EL* .../%"@31925
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
pushi.e 223
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_482_0"@31926
conv.s.v
push.s "\\EO* ..^1. I GUESS Berdly can wait a little longer./"@31927
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
push.s "obj_ch2_scene23b_slash_Step_0_gml_484_0"@31928
conv.s.v
push.s "\\E2* Alright^1! Let's get out of here then./%"@31929
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
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 80
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 221
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 65
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_513_0"@31930
conv.s.v
push.s "\\E2* All we gotta do is head to the right over to this.../"@31931
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_514_0"@31932
conv.s.v
push.s "\\EA* Uh..^1. over here^1, on this^1, uh.../%"@31933
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 825
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_539_0"@31934
conv.s.v
push.s "\\EK* Heart. Covered. Ferris Wheel./"@31935
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 22
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_541_0"@31936
conv.s.v
push.s "\\EM* .../"@15852
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_543_0"@31937
conv.s.v
push.s "\\EK* .../%"@30310
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_556_0"@31938
conv.s.v
push.s "\\EH* What's the goddamn holdup!? Get ON already!!/"@31939
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "M"@9486
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene23b_slash_Step_0_gml_558_0"@31940
conv.s.v
push.s "\\EM* S-Sorry!/%"@31941
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
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 2
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 221
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 2
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "fadeout"@9850
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
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

:[9]
push.v self.con
pushi.e 50
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
pushi.e 0
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 319
pop.v.v [array]self.flag
pushi.e 209
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
push.v self.rudebuster
conv.v.b
bf [19]

:[15]
push.v self.rudebuster_timer
push.e 1
add.i.v
pop.v.v self.rudebuster_timer
push.v self.rudebuster_timer
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 861
conv.i.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
call.i gml_Script_camerax(argc=0)
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rudebusteranim
push.v self.werewire2
push.v self.rudebusteranim
pushi.e -9
pop.v.v [stacktop]self.target

:[17]
push.v self.rudebuster_timer
pushi.e 16
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.b self.rudebuster
pushi.e 861
conv.i.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
call.i gml_Script_camerax(argc=0)
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rudebusteranim
push.v self.werewire1
push.v self.rudebusteranim
pushi.e -9
pop.v.v [stacktop]self.target

:[19]
push.v self.sparecon
pushi.e 1
cmp.i.v EQ
bf [23]

:[20]
pushi.e 2
pop.v.i self.sparecon
pushi.e 129
pushenv [22]

:[21]
pushi.e 863
conv.i.v
push.v self.y
pushi.e 1711
conv.i.v
call.i sprite_get_height(argc=1)
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spareanim
push.v self.sprite_index
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 1726
push.v self.spareanim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.spareanim
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.image_xscale
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.spareanim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.fadeout
conv.v.b
bf [28]

:[24]
push.v self.blackall
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [26]

:[25]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
call.i gml_Script_camerax(argc=0)
push.v self.blackall
pushi.e -9
pop.v.v [stacktop]self.x

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.blackall
pushi.e -9
push.v [stacktop]self.image_alpha
push.d 0.033
add.d.v
call.i clamp(argc=3)
push.v self.blackall
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.blackall
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [28]

:[27]
pushi.e 0
pop.v.b self.fadeout

:[28]
push.v self.disable_face
conv.v.b
bf [30]

:[29]
pushi.e 0
pop.v.b self.disable_face
pushi.e 0
pop.v.i global.fc

:[30]
push.v self.steal_susie
conv.v.b
bf [32]

:[31]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [37]

:[34]
pushi.e 0
pop.v.b self.steal_susie
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 393
pop.v.v [array]self.flag
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.susie_statue
pushi.e -9
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]

:[37]
push.v self.steal_icee
conv.v.b
bf [39]

:[38]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [end]

:[41]
pushi.e 0
pop.v.b self.steal_icee
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 394
pop.v.v [array]self.flag
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.icee_cushion
pushi.e -9
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]

:[end]