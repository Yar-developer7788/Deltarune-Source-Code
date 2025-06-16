.localvar 2 arguments

:[0]
push.v self.nisesusie
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 28
pop.v.i 82.x
pushi.e 195
pop.v.i 82.y
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 195
conv.i.v
pushi.e 28
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 651
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 170
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 174
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
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
pop.v.i self.be
pushi.e 893
conv.i.v
pushi.e 190
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 668
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 163
conv.i.v
call.i gml_Script_c_sprite(argc=1)
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
pushi.e 670
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_60_0"@31494
conv.s.v
push.s "\\EB* What are you two doing here!? This one's MINE!/"@31495
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_61_0"@31496
conv.s.v
push.s "\\E7* It'll be over in a second^1, so why don't you just^1,/"@31497
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_62_0"@31498
conv.s.v
push.s "\\E6* Relax in your mind palace^1,/%"@31499
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 680
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_68_0"@31500
conv.s.v
push.s "\\E2* Which PROBABLY doesn't even have anything in it!/%"@31501
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_74_0"@31502
conv.s.v
push.s "\\EB* .../"@3678
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_75_0"@31503
conv.s.v
push.s "\\EC* I just need to figure out..^1. why.../"@31504
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_76_0"@31505
conv.s.v
push.s "* The shapes don't go together.../%"@31506
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_88_0"@31507
conv.s.v
push.s "* .../"@897
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_89_0"@31508
conv.s.v
push.s "\\E6* Oh. Hey./"@31509
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_90_0"@31510
conv.s.v
push.s "\\E7* You just gotta fill the whole square thing^1, right?/"@31511
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_91_0"@31512
conv.s.v
push.s "\\E7* What if you just..^1. piled them all in the corners./"@31513
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_93_0"@31514
conv.s.v
push.s "\\E1* Like digging a really wide hole./%"@31515
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 692
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_95_0"@31516
conv.s.v
push.s "\\E3* Wh..^1. what!?/"@31517
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_97_0"@31518
conv.s.v
push.s "\\E2* Kris^1, wanna try?/%"@31519
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 216
conv.i.v
pushi.e 555
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 176
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 200
conv.i.v
pushi.e 35
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 3
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[13]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.niseberdly
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[18]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bt [23]

:[22]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [24]

:[23]
push.e 1

:[24]
bf [32]

:[25]
pushi.e 21
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v self.exitcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [27]

:[26]
push.v self.exitcollider
call.i instance_destroy(argc=1)
popz.v

:[27]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.nisesusie
pushi.e -9
push.v [stacktop]self.y
push.v self.nisesusie
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 174
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.be
pushi.e 893
conv.i.v
push.v self.niseberdly
pushi.e -9
push.v [stacktop]self.y
push.v self.niseberdly
pushi.e -9
push.v [stacktop]self.x
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
push.v self.niseberdly
pushi.e -9
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
push.v self.nisesusie
pushi.e -9
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 163
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 190
conv.i.v
pushi.e 323
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 698
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_168_0"@31520
conv.s.v
push.s "\\E3* S-SUSIE's idea worked!? There's..^1. there's no way!!/"@31521
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_169_0"@31522
conv.s.v
push.s "\\EB* It's a computer bug!^1! It's a glitch!!/"@31523
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_170_0"@31524
conv.s.v
push.s "\\ED* You're cheating!^1! J..^1. just like when you w-wavedash!/%"@31525
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
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 165
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 66
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 834
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 692
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_190_0"@31526
conv.s.v
push.s "\\E9* HAHAHA!^1! How's it taste^1, idiot!?/%"@31527
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
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 834
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
push.s "obj_ch2_scene19c_slash_Step_0_gml_203_0"@31528
conv.s.v
push.s "\\EY* Man^1, I'm gonna relish this FOREVER!/"@31529
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_204_0"@31530
conv.s.v
push.s "\\E9* All those times you acted so high and mighty.../"@31531
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_205_0"@31532
conv.s.v
push.s "\\EY* Well^1, guess what? You're not!!/"@31533
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_206_0"@31534
conv.s.v
push.s "\\EH* Face it^1! You're just as big a dumbass as the rest of us!!/"@31535
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_207_0"@31536
conv.s.v
push.s "\\EY* Hahahaha!!/%"@31537
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 174
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
pushi.e 60
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdlyunhappy"@10173
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 675
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
push.d 0.5
conv.d.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 682
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_241_0"@31538
conv.s.v
push.s "\\E9* ..^1. fine./"@31539
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_242_0"@31540
conv.s.v
push.s "\\EG* I admit it./"@31541
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_243_0"@31542
conv.s.v
push.s "\\EH* I...^1. I'm not that smart./"@31543
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_244_0"@31544
conv.s.v
push.s "\\E9* I never was./%"@31545
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 162
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_251_0"@31546
conv.s.v
push.s "\\EB* THERE^1, are you happy!?/%"@31547
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 683
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_257_0"@31548
conv.s.v
push.s "\\E9* I..^1. I..^1. I just.../%"@31549
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "berdly_flashback.ogg"@31550
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 340
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 190
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 295
conv.i.v
pushi.e 340
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_274_0"@31551
conv.s.v
push.s "\\E8* I used to be a forgettable little bluebird./"@31552
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_275_0"@31553
conv.s.v
push.s "\\EH* No one even remembered my name./%"@31554
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 210
conv.i.v
pushi.e 225
conv.i.v
push.s "x"@50
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 385
conv.i.v
pushi.e 295
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "sb_con"@31555
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_288_0"@31556
conv.s.v
push.s "\\E8* Then..^1. one day^1, came the spelling bee Noelle and I studied for./"@31557
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_289_0"@31558
conv.s.v
push.s "* When it came down to the two of us.../%"@31559
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "noelle_lose"@31486
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_295_0"@31560
conv.s.v
push.s "\\E9* She got nervous and couldn't speak./%"@31561
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[32]
push.v self.noelle_lose
conv.v.b
bf [36]

:[33]
pushi.e 0
pop.v.b self.noelle_lose
push.v self.noelleoutline
pushi.e -9
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.image_index
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[35]
popenv [34]

:[36]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [38]

:[37]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 30
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "noelle_lose"@31486
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
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
push.v self.noelleoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_325_0"@31562
conv.s.v
push.s "\\E0* She lost./%"@31563
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 295
conv.i.v
pushi.e 385
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.berdly_crown
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
push.v self.berdlyoutline
pushi.e -9
push.v [stacktop]self.y
pushi.e 5
sub.i.v
pushi.e -20
conv.i.v
push.s "y"@52
conv.s.v
push.v self.berdly_crown
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_applause_start"@31492
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "sb_crowd_show"@31488
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_344_0"@31564
conv.s.v
push.s "\\E4* And I won./"@31565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_345_0"@31566
conv.s.v
push.s "\\E7* That was when I tasted it./"@31567
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_346_0"@31568
conv.s.v
push.s "\\E7* The praise. The glory^1! The..^1. SUPERIORITY!!/%"@31569
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_smart"@31570
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_352_0"@31571
conv.s.v
push.s "\\E6* The addictive POWER of being..^1. SMART!!/%"@31572
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_356_0"@31573
conv.s.v
push.s "\\EI* Since then^1, year after year^1, I've been number 1 in the class./%"@31574
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 63
conv.i.v
push.s "x"@50
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_364_0"@31575
conv.s.v
push.s "\\E8* ..^1. but it's only because Noelle helps me study./"@31576
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_365_0"@31577
conv.s.v
push.s "\\EH* She's..^1. the real smart kid./"@31578
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_366_0"@31579
conv.s.v
push.s "\\E9* But everyone's expectations for ME are so high now../"@31580
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_367_0"@31581
conv.s.v
push.s "\\E8* What am I going to do once I go somewhere without her...?/%"@31582
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.s "image_alpha"@6548
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_applause_stop"@31493
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "berdly_smart"@31570
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "sb_crowd_hide"@31489
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.berdly_crown
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_381_0"@31583
conv.s.v
push.s "\\EA* That's..^1. why I wanted to make a new world. For us./%"@31584
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 256
conv.i.v
push.s "x"@50
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.noelleoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 325
conv.i.v
pushi.e 295
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdlyoutline
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.berdly_crown
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 332
conv.i.v
pushi.e 302
conv.i.v
push.s "x"@50
conv.s.v
push.v self.berdly_crown
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_smart"@31570
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_show_word"@31585
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "sb_crowd_show"@31488
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_applause_start"@31492
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_399_0"@31586
conv.s.v
push.s "\\E6* A world where we'll ALWAYS be number 1 and number 2!!!/%"@31587
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "berdly_smart"@31570
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "berdly_show_word"@31585
conv.s.v
push.v self.sb_controller
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "sb_crowd_hide"@31489
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.noelleoutline
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
push.v self.berdlyoutline
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
push.v self.berdly_crown
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_applause_stop"@31493
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
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
pushi.e 60
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_417_0"@31588
conv.s.v
push.s "\\E8* But..^1. I was so wrapped up in that^1, I got tricked by Queen./%"@31589
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
push.s "obj_ch2_scene19c_slash_Step_0_gml_423_0"@31590
conv.s.v
push.s "\\EH* And now..^1. Noelle is going to suffer because of it./"@31591
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_424_0"@31592
conv.s.v
push.s "* Maybe I did just like being superior./"@31593
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_425_0"@31594
conv.s.v
push.s "\\EH* Maybe I am..^1. just..^1. an idiot./"@31595
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_427_0"@31596
conv.s.v
push.s "\\E3* Don't cry^1, chicken-nugget-man./"@31597
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_428_0"@31598
conv.s.v
push.s "\\E2* All of us are idiots^1, too./%"@31599
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 692
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_436_0"@31600
conv.s.v
push.s "\\E3* Huh...?/"@31601
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
push.s "obj_ch2_scene19c_slash_Step_0_gml_438_0"@31602
conv.s.v
push.s "* ..^1. I mean^1, like^1, I dunno about everyone else^1, but.../"@31603
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_439_0"@31604
conv.s.v
push.s "\\E1* Whether you're the smart kid or not./"@31605
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_440_0"@31606
conv.s.v
push.s "\\E4* We couldn't care less./"@31607
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_441_0"@31608
conv.s.v
push.s "\\EK* Screw up as much as you want^1, honestly./%"@31609
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_445_0"@31610
conv.s.v
push.s "\\s0\\EK* It's not like our opinion of you can get much wo-%%"@31611
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_453_0"@31612
conv.s.v
push.s "\\E4* Susie!!/"@31613
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_454_0"@31614
conv.s.v
push.s "\\EI* Susie..^1. you..^1. you'd..^1. accept me...? Even if I'm..^1. dumb?/"@31615
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_456_0"@31616
conv.s.v
push.s "\\EK* Uh..^1. y..^1. yeah?/%"@31617
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 177
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_464_0"@31618
conv.s.v
push.s "\\E0* It's like when your sister gets cursed in Dragon Blazers 2./%"@31619
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
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_472_0"@31620
conv.s.v
push.s "\\EL* Even if her stats suck^1, she's still your party member./%"@31621
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 670
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_487_0"@31622
conv.s.v
push.s "\\E5* S..^1. Susie!? A REAL Dragon Blazers 2 reference...?/%"@31623
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_493_0"@31624
conv.s.v
push.s "\\E5* ..^1. Susie.../%"@31625
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
push.s "obj_ch2_scene19c_slash_Step_0_gml_499_0"@31626
conv.s.v
push.s "\\EI* You're not only kind^1, but a true gamer as well./%"@31627
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_502_0"@31628
conv.s.v
push.s "DON'T SAY THAT NOW!!!"@31629
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_504_0"@31630
conv.s.v
push.s "\\EM* Perhaps I..^1. underestimated you.\\f0/%"@31631
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
pushi.e 5
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_511_0"@31632
conv.s.v
push.s "\\E6* But worry not!^1! I have decided!!!/%"@31633
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_517_0"@31634
conv.s.v
push.s "\\E7* I will turn over a new leaf from now on.../"@31635
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_518_0"@31636
conv.s.v
push.s "\\E6* And FIGHT^1! For the side.../%"@31637
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 684
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_526_0"@31638
conv.s.v
push.s "\\E2* OF IGNORANCE!!!/"@31639
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_528_0"@31640
conv.s.v
push.s "\\EH* WE'RE NOT TELLING YOU TO BE STUPID!!!/"@31641
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_530_0"@31642
conv.s.v
push.s "\\E1* Just^1, sometimes it's OK to make mistakes!!/"@31643
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "L"@9485
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_532_0"@31644
conv.s.v
push.s "\\EL* Hahaha - and make mistakes^1, I will!!!/%"@31645
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_539_0"@31646
conv.s.v
push.s "\\E6* Onward!!/%"@31647
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
pushi.e 173
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19c_slash_Step_0_gml_547_0"@31648
conv.s.v
push.s "\\EK* Ugh^1, why couldn't Ralsei be here to teach the moral lesson!?/%"@31649
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 174
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[41]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [43]

:[42]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 115
pop.v.i global.plot
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231459
setowner.e
push.s "mansion_entrance.ogg"@19757
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
call.i instance_destroy(argc=0)
popz.v

:[46]
push.v self.sb_crowd_show
conv.v.b
bf [50]

:[47]
push.v self.sb_crowd
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [49]

:[48]
push.v self.sb_crowd
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.05
add.d.v
pop.i.v [stacktop]self.image_alpha

:[49]
push.v self.sb_crowd_siner
push.e 1
add.i.v
pop.v.v self.sb_crowd_siner
push.v self.sb_crowd
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.sb_crowd_siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.sb_crowd
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.sb_crowd_siner
push.d 1.5
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.i.v [stacktop]self.y

:[50]
push.v self.sb_crowd_hide
conv.v.b
bf [54]

:[51]
pushi.e 0
pop.v.b self.sb_crowd_show
push.v self.sb_crowd_siner
push.e 1
add.i.v
pop.v.v self.sb_crowd_siner
push.v self.sb_crowd
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.sb_crowd_siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.sb_crowd
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.sb_crowd_siner
push.d 1.5
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.i.v [stacktop]self.y
push.v self.sb_crowd
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
push.v self.sb_crowd
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.05
sub.d.v
pop.i.v [stacktop]self.image_alpha
b [54]

:[53]
pushi.e 0
pop.v.b self.sb_crowd_hide

:[54]
push.v self.berdly_applause_start
conv.v.b
bf [56]

:[55]
pushi.e 0
pop.v.b self.berdly_applause_start
push.i 173293
setowner.e
push.s "berdly_audience.ogg"@31650
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.coolsong
pushi.e -1
pushi.e 0
push.v [array]self.coolsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.coolsong
pushi.e 0
conv.i.v
push.d 0.45
conv.d.v
pushi.e -1
pushi.e 1
push.v [array]self.coolsong
call.i gml_Script_mus_volume(argc=3)
popz.v

:[56]
push.v self.berdly_applause_stop
conv.v.b
bf [end]

:[57]
pushi.e 0
pop.v.b self.berdly_applause_stop
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.coolsong
call.i gml_Script_mus_volume(argc=3)
popz.v

:[end]