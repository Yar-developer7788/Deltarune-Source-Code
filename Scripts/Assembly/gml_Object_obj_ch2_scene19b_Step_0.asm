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
push.v self.x
cmp.v.v GTE
bf [6]

:[5]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
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
pushi.e 173
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 2
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
pushi.e 668
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 12
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 200
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 174
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 555
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 216
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 670
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
pop.v.i self.con
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_47_0"@31438
conv.s.v
push.s "\\E7* Ha. Child's play. Couldn't you give me a harder one?/"@31439
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_48_0"@31440
conv.s.v
push.s "\\E1* For example^1, if anyone had a 4x4 Puzzle Cube.../"@31441
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "B"@3500
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_50_0"@31442
conv.s.v
push.s "\\EB* Just tell us the solution./%"@31443
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 677
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_52_0"@31444
conv.s.v
push.s "\\EJ* Well^1, hahah - ah^1, you see -/%"@31445
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 679
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_53_0"@31446
conv.s.v
push.s "\\E0* /%"@31447
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
push.s "obj_ch2_scene19b_slash_Step_0_gml_54_0"@31448
conv.s.v
push.s "\\E1* First^1, you/%"@31449
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 679
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_55_0"@31450
conv.s.v
push.s "\\E0* /%"@31447
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
push.s "obj_ch2_scene19b_slash_Step_0_gml_56_0"@31451
conv.s.v
push.s "\\ED* You align the shadows..^1. with the lines on the floor./%"@31452
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
push.s "obj_ch2_scene19b_slash_Step_0_gml_58_0"@31453
conv.s.v
push.s "\\E1* Alright. What do we move first./"@31454
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 13
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_60_0"@31455
conv.s.v
push.s "\\ED* Um.../"@31456
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_62_0"@31457
conv.s.v
push.s "\\EK* Kris^1, just do the puzzle./%"@31458
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 698
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_64_0"@31459
conv.s.v
push.s "\\EC* J...Just give me a moment!!/"@31460
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_65_0"@31461
conv.s.v
push.s "\\EB* It's not like Kris could even solve it anyway!!/%"@31462
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 176
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 200
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 216
conv.i.v
pushi.e 555
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[11]
push.v self.con
pushi.e 2
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
pushi.e 3
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 3
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
pushi.e 1
push.v self.nisesusie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[21]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [23]

:[22]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [24]

:[23]
push.e 0

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
pushi.e 670
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.berdlynpc
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
pushi.e 60
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
push.s "obj_ch2_scene19b_slash_Step_0_gml_146_0"@31463
conv.s.v
push.s "\\E2* Whoops^1, looks like Kris got it again!/%"@31464
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_156_0"@31465
conv.s.v
push.s "\\E3* H-huh!? W..^1. wait!^1! Wait just a second!!/"@31466
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_157_0"@31467
conv.s.v
push.s "\\EB* You can't have --/%"@31468
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 162
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_163_0"@31469
conv.s.v
push.s "\\EB* You just got lucky^1! It's just trial and error!/"@31470
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_164_0"@31471
conv.s.v
push.s "\\ED* The brute force method^1! Ha^1! A caveman could do it!/"@31472
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_165_0"@31473
conv.s.v
push.s "\\E2* Except cavemen died OUT^1, because they're STUPID!/%"@31474
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
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
push.s "obj_ch2_scene19b_slash_Step_0_gml_173_0"@31475
conv.s.v
push.s "\\EC* I'M solving the next one^1, so --/"@31476
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_174_0"@31477
conv.s.v
push.s "\\EB* Just STAY HERE until I'm done!!/%"@31478
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_180_0"@31479
conv.s.v
push.s "* .../"@897
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene19b_slash_Step_0_gml_181_0"@31480
conv.s.v
push.s "\\E2* Yeah^1, like we're gonna wait that long./%"@31481
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
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

:[32]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [34]

:[33]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [end]

:[36]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 110
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]