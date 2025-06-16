.localvar 2 arguments

:[0]
push.v self.nisesusie
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.nisesusie
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.v 82.x
pushi.e 20
cmp.i.v GTE
bf [6]

:[5]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 190
conv.i.v
pushi.e -20
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
pushi.e 165
conv.i.v
pushi.e 28
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
pushi.e 186
conv.i.v
pushi.e -60
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

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 36
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 38
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 177
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 40
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
push.s "obj_ch2_scene19a_slash_Step_0_gml_56_0"@31403
conv.s.v
push.s "* Looks like a puzzle./%"@31404
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 176
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_62_0"@31405
conv.s.v
push.s "\\EK* ..^1. think^1, uh^1, YOU can do it^1, Kris?/%"@31406
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
pushi.e 25
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_69_0"@31407
conv.s.v
push.s "\\EJ* Calm your skinless^1, boneless^1, thighs everyone./"@31408
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_70_0"@31409
conv.s.v
push.s "\\E7* I'LL think of a solution!/"@31410
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_72_0"@31411
conv.s.v
push.s "\\EK* (Kris^1, just ignore him.)/"@31412
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_73_0"@31413
conv.s.v
push.s "\\EK* I'll just be over here where I can't hear you./"@31414
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "I"@9483
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_75_0"@31415
conv.s.v
push.s "\\EI* And I'll be here^1, away from your IQ-debuffing aura!/%"@31416
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 210
conv.i.v
pushi.e 47
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
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
pushi.e 15
conv.i.v
pushi.e 191
conv.i.v
pushi.e 529
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 176
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 3
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 105
conv.i.v
pushi.e 191
conv.i.v
pushi.e 529
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nisesusie
pushi.e 176
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 105
conv.i.v
pushi.e 210
conv.i.v
pushi.e 47
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdlynpc
pushi.e 674
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[23]
push.v self.con
pushi.e 20
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
bf [36]

:[27]
pushi.e 21
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v self.exitcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [29]

:[28]
push.v self.exitcollider
call.i instance_destroy(argc=1)
popz.v

:[29]
push.v self.leftcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [31]

:[30]
push.v self.leftcollider
call.i instance_destroy(argc=1)
popz.v

:[31]
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
pushi.e 176
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
pushi.e 176
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
pop.v.i self.be
pushi.e 893
conv.i.v
push.v self.berdlynpc
pushi.e -9
push.v [stacktop]self.y
push.v self.berdlynpc
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
pushi.e 674
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.berdlynpc
pushi.e -9
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
push.v self.nisesusie
pushi.e -9
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 694
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
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_153_0"@31418
conv.s.v
push.s "* \\E9Yeah!^1! We got it!!/%"@31419
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
push.s "obj_ch2_scene19a_slash_Step_0_gml_162_0"@31420
conv.s.v
push.s "\\E3* Wh..^1. What!? Hey^1, wait a second --/"@31421
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_163_0"@31422
conv.s.v
push.s "\\EB* How'd you..^1. How'd you solve it without me!?/"@31423
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_165_0"@31424
conv.s.v
push.s "\\E2* Hahaha!^1! Kris figured it out before you!^1! Jealous?/%"@31425
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
push.s "obj_ch2_scene19a_slash_Step_0_gml_172_0"@31426
conv.s.v
push.s "\\EC* Well I.../%"@31427
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 677
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_178_0"@31428
conv.s.v
push.s "\\E7* I knew the answer^1, I just wanted to see Kris try^1, first!/"@31429
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_179_0"@31430
conv.s.v
push.s "\\E6* It's called SUSPENSE^1, Susan!^1! DRAMATIC^1, suspense!!/%"@31431
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 679
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_192_0"@31432
conv.s.v
push.s "\\EK* Then YOU do the next one./%"@31433
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
pushi.e 674
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_199_0"@31434
conv.s.v
push.s "\\E7* Fine^1! WATCH me!!/%"@31435
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19a_slash_Step_0_gml_205_0"@31436
conv.s.v
push.s "\\EC* (Also my name's not Susan?)/%"@31437
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
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[36]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [38]

:[37]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [39]

:[38]
push.e 0

:[39]
bf [end]

:[40]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 105
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]