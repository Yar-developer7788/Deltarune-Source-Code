.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 82.x
pushi.e 540
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 99
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[5]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [7]

:[6]
push.v 82.x
pushi.e 540
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [18]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 824
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.no
pushi.e 893
conv.i.v
pushi.e 208
conv.i.v
pushi.e 950
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 713
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232203
setowner.e
pushi.e 714
conv.i.v
push.v self.no_actor
pushi.e -9
pushi.e 5
pop.v.v [array]self.specialsprite
pushi.e 717
conv.i.v
push.v self.no_actor
pushi.e -9
pushi.e 6
pop.v.v [array]self.specialsprite
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.qu
pushi.e 901
conv.i.v
pushi.e 273
conv.i.v
pushi.e 725
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
pushi.e 0
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.shadow
pushi.e 0
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.auto_depth
push.i 1000300
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.qu_actor
pushi.e -9
pushenv [11]

:[10]
pushi.e 0
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.visible

:[11]
popenv [10]
push.v self.actor_count
pushi.e 8
add.i.v
pop.v.v self.qu_flame
pushi.e 764
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.qu_flame_actor
pushi.e 0
push.v self.qu_flame_actor
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.qu_flame_actor
pushi.e -9
pop.v.i [stacktop]self.auto_depth
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
push.v self.qu_flame_actor
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.ca
pushi.e 935
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 46
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 900
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ca_actor
pushi.e 0
push.v self.ca_actor
pushi.e -9
pop.v.i [stacktop]self.visible
push.s "capsule"@30474
conv.s.v
push.v self.ca_actor
push.v self.ca
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.actor_count
pushi.e 4
add.i.v
pop.v.v self.npc1
pushi.e 1723
conv.i.v
push.v self.npc1_o
pushi.e -9
push.v [stacktop]self.y
push.v self.npc1_o
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.npc1_actor
push.s "npc1"@14087
conv.s.v
push.v self.npc1_actor
push.v self.npc1
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.npc1_actor
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[13]
popenv [12]
push.v self.actor_count
pushi.e 5
add.i.v
pop.v.v self.npc2
pushi.e 1723
conv.i.v
push.v self.npc2_o
pushi.e -9
push.v [stacktop]self.y
push.v self.npc2_o
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.npc2_actor
push.s "npc2"@14088
conv.s.v
push.v self.npc2_actor
push.v self.npc2
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.npc2_actor
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]
push.v self.actor_count
pushi.e 6
add.i.v
pop.v.v self.wire1
pushi.e 1729
conv.i.v
push.v self.npc1_o
pushi.e -9
push.v [stacktop]self.y
pushi.e 400
sub.i.v
push.v self.npc2_o
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.wire1_actor
push.s "wire1"@30477
conv.s.v
push.v self.wire1_actor
push.v self.wire1
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.actor_count
pushi.e 7
add.i.v
pop.v.v self.wire2
pushi.e 1729
conv.i.v
push.v self.npc2_o
pushi.e -9
push.v [stacktop]self.y
pushi.e 400
sub.i.v
push.v self.npc2_o
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.wire2_actor
push.s "wire1"@30477
conv.s.v
push.v self.wire2_actor
push.v self.wire2
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.s "qu_flame"@30470
conv.s.v
push.v self.qu_flame_actor
push.v self.qu_flame
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
pushi.e 103
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fefc(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_74_0"@30481
conv.s.v
push.s "* Somebody help me.../%"@30482
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
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 470
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
sub.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 100
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 200
conv.i.v
pushi.e 600
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 223
conv.i.v
pushi.e 540
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_93_0"@30483
conv.s.v
push.s "* Somebody, please.../%"@30484
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
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_104_0"@30485
conv.s.v
push.s "\\EE* Susie!?/%"@30486
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_107_0"@30487
conv.s.v
push.s "\\E3* Cool that you're here, just.../%"@30488
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_110_0"@30489
conv.s.v
push.s "\\EB* Wait, get out of here before it's too late!/%"@30490
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ca
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 179
conv.i.v
pushi.e 814
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 194
conv.i.v
pushi.e 707
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_120_0"@30491
conv.s.v
push.s "\\EZ* NOELLE!/%"@30492
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "queen_intro.ogg"@30493
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 180
conv.i.v
pushi.e 90
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 762
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "queen.ogg"@20919
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_151_0"@30494
conv.s.v
push.s "\\E0* Hell Of A Study Session/"@30495
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
push.s "obj_ch2_scene9_slash_Step_0_gml_153_0"@30496
conv.s.v
push.s "\\EH* Who the hell are you!?/"@30497
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_155_0"@30498
conv.s.v
push.s "\\E2* I Am Known As Serial Number Q5U4EX7YY2E9N/"@30499
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_156_0"@30500
conv.s.v
push.s "\\E0* But You Foolish Children May Call Me/%"@30501
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 763
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.05
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 50
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
pushi.e 766
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_172_0"@30502
conv.s.v
push.s "\\E1* \"Queen\"/%"@30503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 762
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
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
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_181_0"@30504
conv.s.v
push.s "\\E2* Heh^1, like we're gonna call YOU \"Queen^1,\"/%"@30505
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_184_0"@30506
conv.s.v
push.s "\\EK* \"Q5U....3...7...\" uh^1,/%"@30507
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
pushi.e 766
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 4
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_192_0"@30508
conv.s.v
push.s "\\E0* \"Queen\"/%"@30509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 762
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_200_0"@30510
conv.s.v
push.s "\\E5* Well LOOK^1, \"Queen.\" We're not \"children!\"/%"@30511
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "screencon"@30461
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 7
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_208_0"@30512
conv.s.v
push.s "And Adults Are Even Bigger Children"@30513
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_209_0"@30514
conv.s.v
push.s "\\E1* Teens Are Merely Big Children \\f0 /%"@30515
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
pushi.e 46
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_213_0"@30516
conv.s.v
push.s "\\EK* ..^1. doesn't that make you a child too then?/%"@30517
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_220_0"@30518
conv.s.v
push.s "\\EQ* No I Am: A Computer (Smart)/%"@30519
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_225_0"@30520
conv.s.v
push.s "\\E6* ..^1. computer?/%"@30521
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "screencon"@30461
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e -180
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_233_0"@30522
conv.s.v
push.s "\\ED* Well Thank You For The Stimuli But I Must Leave Now (Goodbye)/%"@30523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 6
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_243_0"@30524
conv.s.v
push.s "\\E5* Wait^1! WAIT!^1! Why'd you capture Noelle!?/%"@30525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 90
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_252_0"@30526
conv.s.v
push.s "\\EO* I Would Have Captured You Too But I Ran Out Of Cages/%"@30527
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
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_258_0"@30528
conv.s.v
push.s "\\EH* Why the CAPTURING!?/%"@30529
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 11
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_264_0"@30530
conv.s.v
push.s "\\E0* So That She May Become My Willing Peon/%"@30531
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 766
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_267_0"@30532
conv.s.v
push.s "\\E6* In My Quest For World Domination/%"@30533
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 16
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 762
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_271_0"@30534
conv.s.v
push.s "\\E9* Also Maybe I Will Make Her Face Into A Robot One?/%"@30535
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 18
conv.i.v
push.s "screenmax"@30462
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 44
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_278_0"@30536
conv.s.v
push.s "\\E5* What!? Why!?/%"@30537
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
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_285_0"@30538
conv.s.v
push.s "\\EQ* Seems Cool/"@30539
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
push.s "obj_ch2_scene9_slash_Step_0_gml_287_0"@30540
conv.s.v
push.s "\\E4* Well^1, FORGET it^1, dude./%"@30541
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 762
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
push.s "obj_ch2_scene9_slash_Step_0_gml_297_0"@30542
conv.s.v
push.s "\\E4* Nobody's turning anyone's face into a robot!/"@30543
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
push.s "obj_ch2_scene9_slash_Step_0_gml_299_0"@30544
conv.s.v
push.s "\\EE* Could That Be A Statement Of Animous Dissension/"@30545
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_301_0"@30546
conv.s.v
push.s "\\E6* Huh?/"@30547
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_303_0"@30548
conv.s.v
push.s "\\E1* You Wanna Fight^1, Loser/%"@30549
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1449
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "susieattackcon"@30464
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_310_0"@30550
conv.s.v
push.s "\\EH* YES!!^1! YES ALREADY^1, YES!!!/%"@30551
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "screencon"@30461
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_318_0"@30552
conv.s.v
push.s "\\E1* Oh Then Bye/%"@30553
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 90
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 400
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_327_0"@30554
conv.s.v
push.s "\\E5* WAIT^1! A GODDAMN^1! SECOND!!/"@30555
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_329_0"@30556
conv.s.v
push.s "* I Have No Time For Such Frivolities (And Would Kick Your Ass)/"@30557
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_330_0"@30558
conv.s.v
push.s "\\E1* But Perhaps Someone Else Could Entertain You/%"@30559
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "susieattackcon"@30464
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
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
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.npc1
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.npc1_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.npc2_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.npc2
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.npc2_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.npc2_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_c_pan_wait(argc=3)
popz.v
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "wirecon"@30456
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 620
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "funcon"@30458
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
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
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 620
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.v self.npc1
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -320
conv.i.v
push.v self.xx
pushi.e 480
add.i.v
pushi.e 200
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 120
conv.i.v
push.v self.xx
pushi.e 480
add.i.v
pushi.e 200
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.npc2
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -210
conv.i.v
push.v self.xx
pushi.e 440
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 170
conv.i.v
push.v self.xx
pushi.e 440
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.wire1
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -320
conv.i.v
push.v self.xx
pushi.e 480
add.i.v
pushi.e 2
add.i.v
pushi.e 200
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 124
conv.i.v
push.v self.xx
pushi.e 480
add.i.v
pushi.e 200
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.wire2
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -210
conv.i.v
push.v self.xx
pushi.e 440
add.i.v
pushi.e 2
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 174
conv.i.v
push.v self.xx
pushi.e 440
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.npc1
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.5
conv.d.v
pushi.e 23
conv.i.v
pushi.e 18
conv.i.v
call.i gml_Script_c_animate(argc=3)
popz.v
push.v self.npc2
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.5
conv.d.v
pushi.e 23
conv.i.v
pushi.e 18
conv.i.v
call.i gml_Script_c_animate(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_415_0"@30560
conv.s.v
push.s "* Enjoy: Your Assimilation/%"@30561
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[18]
push.v self.screencon
pushi.e 1
cmp.i.v EQ
bf [22]

:[19]
pushi.e 263
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.dismiss

:[21]
popenv [20]
pushi.e 2
pop.v.i self.screencon

:[22]
push.v self.susieattackcon
pushi.e 1
cmp.i.v EQ
bf [25]

:[23]
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[25]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [33]

:[29]
pushi.e 5000
push.v self.ca_actor
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -8
push.v self.ca_actor
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.ca_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 12
sub.i.v
cmp.v.v LTE
bf [33]

:[30]
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 16
sub.i.v
push.v self.ca_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ca_actor
pushi.e -9
pushenv [32]

:[31]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.con

:[32]
popenv [31]
pushi.e 0
pop.v.i self.customtimer
pushi.e 2
pop.v.i self.customcon

:[33]
push.v self.customcon
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [49]

:[37]
push.v self.customtimer
push.e 1
add.i.v
pop.v.v self.customtimer
push.v self.customtimer
pushi.e 14
cmp.i.v EQ
bf [43]

:[38]
push.v self.su_actor
pushi.e -9
pushenv [40]

:[39]
pushi.e 997
pop.v.i self.sprite_index

:[40]
popenv [39]
push.v self.no_actor
pushi.e -9
pushenv [42]

:[41]
pushi.e 717
pop.v.i self.sprite_index

:[42]
popenv [41]

:[43]
push.v self.customtimer
pushi.e 49
cmp.i.v EQ
bf [49]

:[44]
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.ca_actor
pushi.e -9
pushenv [46]

:[45]
pushi.e -1
pop.v.i self.gravity

:[46]
popenv [45]
push.v self.no_actor
pushi.e -9
pushenv [48]

:[47]
pushi.e -1
pop.v.i self.gravity

:[48]
popenv [47]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 3
pop.v.i self.customcon

:[49]
push.v self.funcon
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 53
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 2
pop.v.i self.funcon

:[51]
push.v self.wirecon
pushi.e 1
cmp.i.v EQ
bf [63]

:[52]
pushi.e 129
pushenv [58]

:[53]
push.v self.sprite_index
pushi.e 1723
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1725
pop.v.i self.sprite_index

:[55]
push.v self.sprite_index
pushi.e 1729
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1735
pop.v.i self.sprite_index

:[57]
pushi.e 1
pop.v.i self.image_index

:[58]
popenv [53]
push.v self.npc1_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
push.v self.wire1_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.npc1_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 300
sub.i.v
push.v self.wire1_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.npc2_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
push.v self.wire2_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.npc2_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 300
sub.i.v
push.v self.wire2_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.wire1_actor
pushi.e -9
pushenv [60]

:[59]
pushi.e 1
pop.v.i self.gravity
pushi.e -400
pop.v.i self.depth

:[60]
popenv [59]
push.v self.wire2_actor
pushi.e -9
pushenv [62]

:[61]
pushi.e 1
pop.v.i self.gravity
pushi.e -400
pop.v.i self.depth

:[62]
popenv [61]
pushi.e 2
pop.v.i self.wirecon

:[63]
push.v self.wirecon
pushi.e 2
cmp.i.v EQ
bf [70]

:[64]
push.v self.wire1_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.npc1_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
cmp.v.v GTE
bf [70]

:[65]
pushi.e 0
push.v self.wire1_actor
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.wire1_actor
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.wire2_actor
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.wire2_actor
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.v self.npc1_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.wire1_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.npc2_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.wire2_actor
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 61
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.npc1_actor
pushi.e -9
pushenv [67]

:[66]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[67]
popenv [66]
push.v self.npc2_actor
pushi.e -9
pushenv [69]

:[68]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[69]
popenv [68]
pushi.e 3
pop.v.i self.wirecon
pushi.e 0
pop.v.i self.wiretimer

:[70]
push.v self.wirecon
pushi.e 3
cmp.i.v EQ
bf [75]

:[71]
push.v self.wiretimer
push.e 1
add.i.v
pop.v.v self.wiretimer
push.v self.wiretimer
pushi.e 8
cmp.i.v GTE
bf [75]

:[72]
pushi.e 129
pushenv [74]

:[73]
pushi.e -2
pop.v.i self.gravity

:[74]
popenv [73]
pushi.e 4
pop.v.i self.wirecon
pushi.e 0
pop.v.i self.wiretimer

:[75]
push.v self.wirecon
pushi.e 4
cmp.i.v EQ
bf [83]

:[76]
push.v self.wire1_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e -140
cmp.i.v LTE
bf [83]

:[77]
pushi.e 129
pushenv [82]

:[78]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
push.v self.sprite_index
pushi.e 1735
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1729
pop.v.i self.sprite_index

:[80]
push.v self.sprite_index
pushi.e 1725
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1724
pop.v.i self.sprite_index

:[82]
popenv [78]
pushi.e 5
pop.v.i self.wirecon
pushi.e 0
pop.v.i self.wiretimer

:[83]
push.v self.wirecon
pushi.e 5
cmp.i.v EQ
bf [86]

:[84]
push.v self.wiretimer
push.e 1
add.i.v
pop.v.v self.wiretimer
push.v self.wiretimer
pushi.e 70
cmp.i.v EQ
bf [86]

:[85]
pushi.e 220
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.wiretimer
push.v self.wirecon
push.e 1
add.i.v
pop.v.v self.wirecon

:[86]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [89]

:[88]
push.e 0

:[89]
bf [102]

:[90]
pushi.e 3
pop.v.i global.specialbattle
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "battle.ogg"@10337
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 868
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 275
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 552
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 53
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 893
pushenv [93]

:[91]
push.v self.name
push.s "queen"@3525
cmp.s.v EQ
bf [93]

:[92]
pushi.e 760
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.hspeed

:[93]
popenv [91]
push.v self.npc1_actor
pushi.e -9
pushenv [95]

:[94]
pushi.e -100
pop.v.i self.depth
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e 34
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
pushi.e 2
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
push.v self.depth
pushi.e 20
add.i.v
pop.v.v self.depth

:[95]
popenv [94]
push.v self.wire1_actor
pushi.e -9
pushenv [97]

:[96]
pushi.e -200
pop.v.i self.depth
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e 34
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
pushi.e 2
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
push.v self.depth
pushi.e 20
add.i.v
pop.v.v self.depth

:[97]
popenv [96]
push.v self.npc2_actor
pushi.e -9
pushenv [99]

:[98]
pushi.e -100
pop.v.i self.depth
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monstermakey
pushi.e 34
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monstermakex
pushi.e 2
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[99]
popenv [98]
push.v self.wire2_actor
pushi.e -9
pushenv [101]

:[100]
pushi.e -200
pop.v.i self.depth
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monstermakey
pushi.e 34
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monstermakex
pushi.e 2
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[101]
popenv [100]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[102]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [108]

:[103]
pushi.e 893
pushenv [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
popenv [104]
pushi.e 129
pushenv [107]

:[106]
call.i instance_destroy(argc=0)
popz.v

:[107]
popenv [106]
pushi.e 5
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[108]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [110]

:[109]
pushi.e 357
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [113]

:[112]
pushi.e 1
pop.v.i global.interact
push.d 8.5
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i 82.cutscene
pushi.e 707
pop.v.i 82.x
pushi.e 194
pop.v.i 82.y
pushi.e 814
pop.v.i 276.x
pushi.e 176
pop.v.i 276.y
pushi.e 620
conv.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
push.i 231651
setowner.e
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 180
conv.i.v
pushi.e 540
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pushi.e -5
pushi.e 1
pop.v.v [array]self.cinstance

:[113]
push.v self.con
push.d 9.5
cmp.d.v EQ
bf [115]

:[114]
push.d 9.6
pop.v.d self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 822
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 795
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[115]
push.v self.con
push.d 9.6
cmp.d.v EQ
bt [117]

:[116]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [118]

:[117]
push.e 1

:[118]
bf [120]

:[119]
pushi.e 10
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_639_0"@30562
conv.s.v
push.s "\\E9* Phew^1, nice fighting again after so long!/%"@30563
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_645_0"@30564
conv.s.v
push.s "\\E2* Now let's go catch up to Queen!/%"@30565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
push.s "wirecon"@30456
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_657_0"@30566
conv.s.v
push.s "\\EZ* ..^1. or not!/%"@30567
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
push.s "wirecon"@30456
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_663_0"@30568
conv.s.v
push.s "\\E6* Huh? They calmed down...?/%"@30569
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_675_0"@30570
conv.s.v
push.s "\\EH* I just used my PACIFY spell to put them into \"Sleep Mode\"!/"@30571
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_677_0"@30572
conv.s.v
push.s "\\E7* Ralsei! You're here!/%"@30573
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_692_0"@30574
conv.s.v
push.s "\\E0* I felt a dark presence and hurried over!/%"@30575
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
push.s "obj_ch2_scene9_slash_Step_0_gml_695_0"@30576
conv.s.v
push.s "\\E9* It seems that a new Dark Fountain has appeared.../%"@30577
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_704_0"@30578
conv.s.v
push.s "\\ER* Ralsei..^1. they got Noelle!/%"@30579
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_710_0"@30580
conv.s.v
push.s "\\EN* Damn^1, what was she THINKING messing in our Dark World!?/%"@30581
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
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_714_0"@30582
conv.s.v
push.s "\\EO* If we don't do something^1, she might be.../%"@30583
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_719_0"@30584
conv.s.v
push.s "\\E0* Worry not^1, Susie^1! All we have to do is seal the Fountain!/"@30585
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 26
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_721_0"@30586
conv.s.v
push.s "\\EQ* ..^1. yeah. Yeah!/%"@30587
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susiehappy"@30588
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_726_0"@30589
conv.s.v
push.s "\\EA* Can't be mad about another adventure^1, right!?/%"@30590
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
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
push.s "obj_ch2_scene9_slash_Step_0_gml_735_0"@30591
conv.s.v
push.s "\\E9* C'mon^1, Kris!/%"@30592
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 540
conv.i.v
pushi.e 536
conv.i.v
pushi.e 17
conv.i.v
pushi.e 12
conv.i.v
pushi.e 193
conv.i.v
pushi.e 720
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
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
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 548
conv.i.v
pushi.e 534
conv.i.v
pushi.e 17
conv.i.v
pushi.e 12
conv.i.v
pushi.e 178
conv.i.v
pushi.e 635
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 2562
conv.i.v
pushi.e 780
conv.i.v
pushi.e 17
conv.i.v
pushi.e 12
conv.i.v
pushi.e 184
conv.i.v
pushi.e 564
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 861
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 790
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene9_slash_Step_0_gml_778_0"@30593
conv.s.v
push.s "\\E2* Let's go!/%"@30195
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
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v

:[120]
push.v self.wirecon
pushi.e 10
cmp.i.v EQ
bf [128]

:[121]
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
pushi.e 53
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
push.i 231746
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterstatus
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monsterstatus
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
call.i gml_Script_instance_create(argc=3)
pop.v.v self.monster1
push.v self.xx
pushi.e 480
add.i.v
pushi.e 200
sub.i.v
push.v self.monster1
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e -280
push.v self.monster1
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.monster1
pushi.e -9
pop.v.i [stacktop]self.myself
push.v self.monster1
pushi.e -9
pushenv [123]

:[122]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[123]
popenv [122]
pushi.e 476
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
call.i gml_Script_instance_create(argc=3)
pop.v.v self.monster2
push.v self.xx
pushi.e 640
add.i.v
pushi.e 200
sub.i.v
push.v self.monster2
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e -160
push.v self.monster2
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1
push.v self.monster2
pushi.e -9
pop.v.i [stacktop]self.myself
push.v self.monster2
pushi.e -9
pushenv [125]

:[124]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[125]
popenv [124]
pushi.e 392
pushenv [127]

:[126]
pushi.e 0
pop.v.i self.myself
pushi.e 2
pop.v.i self.gravity

:[127]
popenv [126]
pushi.e 11
pop.v.i self.wirecon
pushi.e 0
pop.v.i self.landeda
pushi.e 0
pop.v.i self.landedb

:[128]
push.v self.wirecon
pushi.e 11
cmp.i.v EQ
bf [139]

:[129]
push.v self.monster1
pushi.e -9
push.v [stacktop]self.y
pushi.e 120
cmp.i.v GTE
bf [131]

:[130]
push.v self.landeda
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 1
pop.v.i self.landeda
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
push.v self.monster1
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.monster1
pushi.e -9
pop.v.i [stacktop]self.speed

:[134]
push.v self.monster2
pushi.e -9
push.v [stacktop]self.y
pushi.e 170
cmp.i.v GTE
bf [136]

:[135]
push.v self.landedb
pushi.e 0
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 1
pop.v.i self.landedb
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
push.v self.monster2
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.monster2
pushi.e -9
pop.v.i [stacktop]self.gravity

:[139]
push.v self.wirecon
pushi.e 15
cmp.i.v EQ
bf [143]

:[140]
pushi.e 330
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 392
pushenv [142]

:[141]
pushi.e 1072
conv.i.v
push.v self.y
pushi.e 42
sub.i.v
pushi.e 46
add.i.v
push.v self.x
pushi.e 36
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 481
conv.i.v
push.v self.y
pushi.e 42
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
pushi.e 16
pop.v.i self.wirecon

:[143]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [145]

:[144]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [146]

:[145]
push.e 0

:[146]
bf [end]

:[147]
pushi.e 0
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 51
pop.v.i global.plot
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]