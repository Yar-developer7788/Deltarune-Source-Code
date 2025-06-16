.localvar 2 arguments
.localvar 34040 object_dim 16962
.localvar 6666 steps 16964
.localvar 34046 door_open 16966
.localvar 173 is_valid 16967
.localvar 9635 error_message 16968

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [11]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 147
conv.i.v
pushi.e 108
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 2
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 95
conv.i.v
pushi.e 289
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 854
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.to
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 450
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.to_actor
push.s "toriel"@544
conv.s.v
push.v self.to_actor
push.v self.to
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 898
push.v self.to_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 464
conv.i.v
pushi.e 106
conv.i.v
pushi.e 422
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.torread
pushi.e 0
push.v self.torread
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 465
conv.i.v
pushi.e 103
conv.i.v
pushi.e 422
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.torsleep
pushi.e 0
push.v self.torsleep
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d 0.15
push.v self.torsleep
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 95000
push.v self.torsleep
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 493
conv.i.v
pushi.e 103
conv.i.v
pushi.e 422
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.torsleep_flash
pushi.e 0
push.v self.torsleep_flash
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.torsleep_flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.i 94000
push.v self.torsleep_flash
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 447
conv.i.v
pushi.e 175
conv.i.v
pushi.e 449
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.krissleep
pushi.e 0
push.v self.krissleep
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 462
conv.i.v
pushi.e 165
conv.i.v
pushi.e 498
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.susleep
push.d 0.05
push.v self.susleep
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.susleep
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 4900
push.v self.susleep
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.b self.align_susie
pushi.e 473
conv.i.v
pushi.e 86
conv.i.v
pushi.e 474
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.tv
pushi.e 0
push.v self.tv
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 477
conv.i.v
pushi.e 86
conv.i.v
pushi.e 474
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.tvstatic2
pushi.e 0
push.v self.tvstatic2
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d 0.15
push.v self.tvstatic2
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 4900000
push.v self.tvstatic2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 477
conv.i.v
pushi.e 86
conv.i.v
pushi.e 474
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.tvstatic
pushi.e 0
push.v self.tvstatic
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d 0.15
push.v self.tvstatic
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 50
push.v self.tvstatic
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 476
conv.i.v
pushi.e 86
conv.i.v
pushi.e 474
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.tvsmile
pushi.e 0
push.v self.tvsmile
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d 0.15
push.v self.tvsmile
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.tvsmile
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 880
conv.i.v
pushi.e 106
conv.i.v
pushi.e 422
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.chairnormal
push.i 1000000
push.v self.chairnormal
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 463
conv.i.v
pushi.e 105
conv.i.v
pushi.e 422
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.chairdim
push.i 100000
push.v self.chairdim
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.chairdim
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 478
conv.i.v
pushi.e 153
conv.i.v
pushi.e 185
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.darkcouch
pushi.e 0
push.v self.darkcouch
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 5000
push.v self.darkcouch
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 432
conv.i.v
pushi.e 1
conv.i.v
pushi.e 413
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.beam
pushi.e 0
push.v self.beam
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 436
conv.i.v
pushi.e 156
conv.i.v
pushi.e 420
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.beamunder
pushi.e 0
push.v self.beamunder
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.beamunder
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 442
conv.i.v
pushi.e 165
conv.i.v
pushi.e 430
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.crater
pushi.e 0
push.v self.crater
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.crater
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 2533
conv.i.v
pushi.e 200
conv.i.v
pushi.e 400
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.black_bar
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
push.v self.black_bar
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 80
push.v self.black_bar
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.black_bar
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.black_bar
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 488
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.room_flash
push.i 900000
push.v self.room_flash
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.room_flash
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1006
conv.i.v
pushi.e 240
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fountainkris
pushi.e 0
pop.v.b self.fadebg
push.v self.debug_skip
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
pushi.e 10
pop.v.i self.con
push.v self.blackall
pushi.e -9
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1
pop.v.i 82.cutscene
pushi.e 500
pop.v.i 82.x
push.v self.to_actor
pushi.e -9
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushbltn.v builtin.room_width
pushi.e 320
sub.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
pop.v.i self.con
pushi.e 60
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
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 147
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e 102
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "obj_ch2_scene32_slash_Step_0_gml_130_0"@33895
conv.s.v
push.s "\\EA* Hey Kris^1, hurry up next time./"@33896
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_131_0"@33897
conv.s.v
push.s "\\E2* We're already almost done.../%"@33898
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 63
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 899
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 128
conv.i.v
pushi.e 325
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_148_0"@33899
conv.s.v
push.s "\\E1* .../%"@33759
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "obj_ch2_scene32_slash_Step_0_gml_157_0"@33900
conv.s.v
push.s "\\E7* So what's next?/%"@33901
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
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
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_165_0"@33902
conv.s.v
push.s "\\E1* Oh^1, err^1, the pie.../%"@33903
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
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_172_0"@33904
conv.s.v
push.s "\\E0* We already worked quite hard^1, have we not?/"@33905
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_173_0"@33906
conv.s.v
push.s "\\E1* How about we finish it later?/"@33907
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_175_0"@33908
conv.s.v
push.s "\\EA* ..^1. Umm^1, OK!/%"@33909
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_185_0"@33910
conv.s.v
push.s "\\EK* Then..^1. uh..^1. guess I'll walk home...?/"@33911
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_187_0"@33912
conv.s.v
push.s "\\E8* Oh^1, no^1, no^1, there's no need to do that!/%"@33913
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_195_0"@33914
conv.s.v
push.s "\\E1* Oh^1, actually!/"@33915
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_196_0"@33916
conv.s.v
push.s "\\E0* Susie^1, would you like to stay over?/%"@33917
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
pushi.e 859
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_204_0"@33918
conv.s.v
push.s "\\E6* Huh?!/"@33919
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
push.s "obj_ch2_scene32_slash_Step_0_gml_206_0"@33920
conv.s.v
push.s "\\E6* I mean^1, umm..^1. if it's OK^1, then.../"@33921
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_208_0"@33922
conv.s.v
push.s "\\E0* Here^1, look at this!/%"@33923
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 130
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 140
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 140
conv.i.v
pushi.e 425
conv.i.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 86
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 128
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 128
conv.i.v
pushi.e 450
conv.i.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 86
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 110
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_230_0"@33924
conv.s.v
push.s "* Our couch is used to being used as a bed!/%"@33925
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_238_0"@33926
conv.s.v
push.s "\\E4* It's not perfect, but we could all sleep out here!/"@33927
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
push.s "obj_ch2_scene32_slash_Step_0_gml_240_0"@33928
conv.s.v
push.s "\\E7* That..^1. sounds good to me^1! Yeah!/"@33929
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_242_0"@33930
conv.s.v
push.s "\\E0* Splendid^1! I will make sure everything is in order./%"@33931
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
pushi.e 125
conv.i.v
pushi.e 377
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_260_0"@33932
conv.s.v
push.s "\\E1* Just..^1. call your parents^1, will you not?/"@33933
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
push.s "obj_ch2_scene32_slash_Step_0_gml_262_0"@33934
conv.s.v
push.s "\\E7* Yeah^1, of course!/%"@33935
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 2
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 128
conv.i.v
pushi.e 377
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 219
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 128
conv.i.v
pushi.e 481
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
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
push.s "obj_ch2_scene32_slash_Step_0_gml_289_0"@33936
conv.s.v
push.s "\\E2* So what the hell^1, a sleepover?/"@33937
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_290_0"@33938
conv.s.v
push.s "\\EA* Damn^1, I haven't had one of those in forever^1, heh.../%"@33939
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 160
conv.i.v
pushi.e 505
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 455
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e -5
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "gravity"@10771
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "vspeed"@14406
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "gravity"@10771
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 9500
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 459
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 167
conv.i.v
pushi.e 505
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_320_0"@33940
conv.s.v
push.s "\\E5* (Hey^1, Kris^1, it's not like someone has to tell you to sit^1, right!?)/%"@33941
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
pushi.e 20
conv.i.v
pushi.e 145
conv.i.v
pushi.e 462
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
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
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 445
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 173
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_337_0"@33942
conv.s.v
push.s "\\E2* There^1, chill out for a sec!/%"@33943
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_344_0"@33944
conv.s.v
push.s "\\EL* So now what?/%"@33945
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
pushi.e 60
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_354_0"@33946
conv.s.v
push.s "\\EA* I got it!/%"@33947
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
pushi.e 457
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.15
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_364_0"@33948
conv.s.v
push.s "\\EP* Maybe..^1. between..^1. the pillows..^1. here?/%"@33949
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 456
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_372_0"@33950
conv.s.v
push.s "\\E2* There^1! Knew I'd find the remote in there!/"@33951
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_390_0"@33952
conv.s.v
push.s "\\EA* You can always find good stuff wedged in the couch./"@33953
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_373_0"@33954
conv.s.v
push.s "\\E0* Jeez^1, it's dusty^1. When'd you last use this thing?/"@33955
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_374_0"@33956
conv.s.v
push.s "\\E9* ..^1. Well^1, who cares^1! Let's just watch TV!/%"@33957
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 458
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.tv
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.1
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.tv
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_388_0"@33958
conv.s.v
push.s "\\E2* So what are we gonna marathon tonight?/"@33959
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_389_0"@33960
conv.s.v
push.s "\\E7* Blood Crushers 3? Hell Busters? Invasion of the Cat Petters?/%"@33961
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 474
conv.i.v
push.s "sprite_index"@273
conv.s.v
push.v self.tv
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 460
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_407_0"@33962
conv.s.v
push.s "\\EA* Heh^1, maybe ICE-E The Movie's more your speed^1, huh^1, Kris?/"@33963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_408_0"@33964
conv.s.v
push.s "\\E9* HAHAHAHA!!^1! HAHAHAHA!!!/"@33965
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_409_0"@33966
conv.s.v
push.s "\\E7* Hahahaha..^1. haha..^1. ha.../"@33967
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_410_0"@33968
conv.s.v
push.s "\\EQ* Heh./%"@33969
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 459
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_417_0"@33970
conv.s.v
push.s "\\E2* It's been a good day^1, huh^1, Kris?/"@33971
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_418_0"@33972
conv.s.v
push.s "\\EQ* You^1, Ralsei^1, Lancer^1, everyone.../"@33973
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_419_0"@33974
conv.s.v
push.s "\\EA* It's..^1. just cool hanging out together^1, right?/"@33975
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_420_0"@33976
conv.s.v
push.s "\\EQ* ..^1. that's why^1, y'know..^1. Don't you think we should.../%"@33977
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 460
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_426_0"@33978
conv.s.v
push.s "\\E7* Try to have them come to OUR world?/"@33979
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_427_0"@33980
conv.s.v
push.s "\\E9* C'mon^1, think about how much better it would be!/"@33981
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_428_0"@33982
conv.s.v
push.s "\\E2* Ralsei could do our homework..^1. Lancer could live under your bed.../%"@33983
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 459
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_435_0"@33984
conv.s.v
push.s "\\E2* We could all walk to school together.../"@33985
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_436_0"@33986
conv.s.v
push.s "\\E9* It'd..^1. be perfect^1, y'know?/%"@33987
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1165
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[13]
push.v self.con
pushi.e 5
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
pushi.e 99
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_449_0"@33988
conv.s.v
push.s "\\EA* ..^1. Well^1, whatever^1, let's just get back to watching./%"@33989
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 458
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
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 473
conv.i.v
push.s "sprite_index"@273
conv.s.v
push.v self.tv
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 459
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 150
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_467_0"@33990
conv.s.v
push.s "\\EA* So the festival is coming up^1, right?/"@33991
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_468_0"@33992
conv.s.v
push.s "\\EL* That thing where the town becomes..^1. a carnival./"@33993
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_469_0"@33994
conv.s.v
push.s "\\E2* Stupid^1, right?/%"@33995
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1089
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[18]
push.v self.con
pushi.e 10
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
bf [39]

:[25]
pushi.e 0
pop.v.i self.susie_snore
pushi.e 40
pop.v.i self.con
push.v self.debug_skip
pushi.e 0
cmp.i.v EQ
bf [29]

:[26]
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_488_0"@33996
conv.s.v
push.s "\\E5* ... Look^1, let's just go back to watching TV!/%"@33997
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 458
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
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 475
conv.i.v
push.s "sprite_index"@273
conv.s.v
push.v self.tv
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 459
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_505_0"@33998
conv.s.v
push.s "\\E2* Now this is what I'm talking about!/"@33999
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_506_0"@34000
conv.s.v
push.s "\\EY* A giant monster movie special!/"@34001
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_507_0"@34002
conv.s.v
push.s "\\EK* (Always liked them better than the giant human movies.)/"@34003
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_508_0"@34004
conv.s.v
push.s "\\E2* Now THIS is something we can MARATHON!/"@34005
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_509_0"@34006
conv.s.v
push.s "\\EQ* Are you READY Kris?/"@34007
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_510_0"@34008
conv.s.v
push.s "\\EY* For 12 hours of building-bashing^1, car-crunching action!?/"@34009
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_511_0"@34010
conv.s.v
push.s "\\E5* 'cause we are LOCKED IN. Got it?/"@34011
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_512_0"@34012
conv.s.v
push.s "\\EH* I better not see you move until your eyes are bloodshot!/"@34013
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_513_0"@34014
conv.s.v
push.s "\\E9* Heheheh!/%"@34015
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_514_0"@34016
conv.s.v
push.s "\\EA* Now lemme just..^1. get comfortable^1, here^1, and.../%"@34017
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_515_0"@34018
conv.s.v
push.s "\\E7* There!/%"@34019
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 461
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.05
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "susie_snore"@33871
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v NEQ
bf [28]

:[27]
pushi.e 1
conv.b.v
push.s "end_game"@33872
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[28]
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_530_0"@34020
conv.s.v
push.s "* (... Susie fell asleep.)/%"@34021
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 210
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 446
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 175
conv.i.v
pushi.e 449
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 3
conv.i.v
push.s "susie_snore"@33871
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 300
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.bgdim
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 300
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.chairdim
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 330
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
push.s "susie_snore"@33871
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 472
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 114
conv.i.v
pushi.e 141
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
pushi.e 1
conv.b.v
push.s "disable_face"@31824
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_557_0"@34022
conv.s.v
push.s "* Officer...? Officer...?/%"@34023
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "disable_face"@31824
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_567_0"@34024
conv.s.v
push.s "* Thank goodness^1, I finally got through.../"@34025
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_568_0"@34026
conv.s.v
push.s "* I thought I saw someone prowling around outside.../"@34027
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_569_0"@34028
conv.s.v
push.s "* And when I checked our car--/"@34029
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_570_0"@34030
conv.s.v
push.s "* The tires..^1. looked like they'd been \\cRslashed\\cW./"@34031
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_571_0"@34032
conv.s.v
push.s "* Officer^1, if you could please come over.../"@34033
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_572_0"@34034
conv.s.v
push.s "* You will? Soon? Thank you.../%"@34035
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 468
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 98200
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 470
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
pushi.e 100
conv.i.v
pushi.e 125
conv.i.v
pushi.e 444
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 468
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
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene32_slash_Step_0_gml_649_0"@34036
conv.s.v
push.s "\\E1* ... they're already asleep.../%"@34037
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
pushi.e 471
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.torread
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 4950
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[29]
pushi.e 30
pop.v.i self.pamt
pushi.e 30
pop.v.i self.pamtb
push.v self.debug_skip
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pop.v.i self.pamt
pushi.e 10
pop.v.i self.pamtb
pushi.e 320
conv.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v

:[31]
push.v self.debug_skip
conv.v.b
bf [33]

:[32]
push.v self.pamt
b [34]

:[33]
push.v self.pamt
pushi.e 2
mul.i.v

:[34]
pop.v.v local.object_dim
pushi.e 1
conv.b.v
push.s "align_susie"@33881
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushloc.v local.object_dim
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.tv
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.torread
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.torsleep
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.bgdark
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.darkcouch
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.krissleep
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.susleep
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushloc.v local.object_dim
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.b.v
push.s "hide_border"@30864
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushloc.v local.object_dim
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "removefg"@33865
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.pamt
pushi.e 10
mul.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.krissleep
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 167
conv.i.v
pushi.e 427
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 448
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.125
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 32
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [36]

:[35]
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [35]

:[36]
popz.i
pushi.e 15
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 167
conv.i.v
pushi.e 430
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 367
conv.i.v
pushi.e 177
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_c_instance(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 17
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 157
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 23
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 444
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 165
conv.i.v
pushi.e 470
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e -5
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
push.v self.pamt
pushi.e 3
mul.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "show_door_open"@33873
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 490
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 573
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 192
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 489
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.tvstatic2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 123
conv.i.v
pushi.e 495
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 191
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 452
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 155
conv.i.v
pushi.e 527
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 192
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 140
conv.i.v
pushi.e 484
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "active"@10252
conv.s.v
push.v self.fountainkris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 478
conv.i.v
push.s "x"@50
conv.s.v
push.v self.fountainkris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 118
conv.i.v
push.s "y"@52
conv.s.v
push.v self.fountainkris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
push.s "image_blend"@275
conv.s.v
push.v self.susleep
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
push.s "image_blend"@275
conv.s.v
push.v self.darkcouch
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.torsleep_flash
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
push.d 0.9
conv.d.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.room_flash
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 170
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.s "image_blend"@275
conv.s.v
push.v self.susleep
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.s "image_blend"@275
conv.s.v
push.v self.darkcouch
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.torsleep_flash
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.d 0.9
conv.d.v
push.s "image_alpha"@6548
conv.s.v
push.v self.room_flash
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 240
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "drawkris"@34041
conv.s.v
push.v self.fountainkris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 148
conv.i.v
pushi.e 468
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 8
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 448
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 167
conv.i.v
pushi.e 427
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 191
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.tvstatic
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 180
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.tvstatic
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 240
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1
conv.b.v
push.s "end_game"@33872
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[38]
pushi.e 180
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.tvsmile
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.b.v
push.s "fade_out_deep"@33875
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "tv_noise.ogg"@34042
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 180
conv.i.v
pushi.e 1
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 360
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.tvstatic
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.tvsmile
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "return_title"@14037
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[39]
push.v self.fade_out_deep
conv.v.b
bf [45]

:[40]
pushi.e 0
pop.v.b self.fade_out_deep
pushi.e 1006
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [45]

:[41]
pushi.e 1006
pushenv [44]

:[42]
push.v self.fountain_sound
pushi.e -4
cmp.i.v NEQ
bf [44]

:[43]
pushi.e 3000
conv.i.v
pushi.e 0
conv.i.v
push.v self.fountain_sound
call.i audio_sound_gain(argc=3)
popz.v

:[44]
popenv [42]

:[45]
push.v self.return_title
conv.v.b
bf [52]

:[46]
push.v self.credits_timer
push.e 1
add.i.v
pop.v.v self.credits_timer
push.v self.credits_timer
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[48]
push.v self.credits_timer
pushi.e 180
cmp.i.v EQ
bf [52]

:[49]
pushi.e 1006
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [51]

:[50]
pushi.e 1006
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[51]
pushi.e 245
conv.i.v
call.i room_goto(argc=1)
popz.v

:[52]
push.v self.removefg
pushi.e 1
cmp.b.v EQ
bf [55]

:[53]
pushi.e 0
pop.v.b self.removefg
push.s "Compatibility_Tiles_Depth_10000"@34044
conv.s.v
call.i layer_exists(argc=1)
conv.v.b
bf [55]

:[54]
push.s "Compatibility_Tiles_Depth_10000"@34044
conv.s.v
call.i layer_destroy(argc=1)
popz.v

:[55]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [57]

:[56]
pushi.e 49
pop.v.i self.con

:[57]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [59]

:[58]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[62]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [64]

:[63]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[67]
push.v self.disable_face
conv.v.b
bf [69]

:[68]
pushi.e 0
pop.v.b self.disable_face
pushi.e 0
pop.v.i global.fc

:[69]
push.v self.enable_face
conv.v.b
bf [71]

:[70]
pushi.e 0
pop.v.b self.enable_face
pushi.e 1
pop.v.i global.fc

:[71]
push.v self.footsteps
conv.v.b
bf [73]

:[72]
pushi.e 0
pop.v.b self.footsteps
pushi.e 191
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v local.steps
pushi.e 0
conv.i.v
push.v self.footsteps_volume
pushloc.v local.steps
call.i audio_sound_gain(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[73]
push.v self.susie_snore
pushi.e 0
cmp.i.v GT
bf [80]

:[74]
push.v self.susie_snore
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 203
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.snore
pushi.e 2
pop.v.i self.susie_snore

:[76]
push.v self.susie_snore
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
push.v self.snore
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 4
pop.v.i self.susie_snore

:[78]
push.v self.susie_snore
pushi.e 5
cmp.i.v EQ
bf [80]

:[79]
push.v self.snore
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
pop.v.i self.susie_snore

:[80]
push.v self.show_door_open
conv.v.b
bf [84]

:[81]
pushi.e 0
pop.v.b self.show_door_open
pushi.e 491
conv.i.v
pushi.e 98
conv.i.v
pushi.e 588
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.door_open
pushloc.v local.door_open
pushi.e -9
pushenv [83]

:[82]
pushi.e 1
pop.v.i self.image_index
push.i 4900000
pop.v.i self.depth

:[83]
popenv [82]

:[84]
push.v self.align_susie
conv.v.b
bf [86]

:[85]
pushi.e 0
pop.v.b self.align_susie
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.susleep
pushi.e -9
pop.v.v [stacktop]self.image_index

:[86]
push.v self.end_game
conv.v.b
bf [end]

:[87]
pushi.e 0
pop.v.b self.end_game
pushglb.v global.filechoice
pop.v.v self._remfilechoice
push.v global.filechoice
pushi.e 3
add.i.v
pop.v.v global.filechoice
call.i gml_Script_scr_save(argc=0)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
not.b
bf [89]

:[88]
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "auto"@9638
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.type
push.s "save_failed"@14502
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type

:[89]
push.v self._remfilechoice
pop.v.v global.filechoice

:[end]