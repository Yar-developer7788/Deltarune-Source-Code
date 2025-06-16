.localvar 2 arguments
.localvar 33068 noelle_x 17151
.localvar 34755 noelle_y 17152
.localvar 34917 arg1 17158
.localvar 34918 arg2 17159
.localvar 34956 krisPosX 17160
.localvar 34957 krisPosY 17161
.localvar 34968 starXPos 17162
.localvar 34971 walkerpos 17163
.localvar 19799 finish 17164
.localvar 107 i 17165

:[0]
push.v 82.x
push.v self.x
pushi.e 60
sub.i.v
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
push.v 276.x
pop.v.v local.noelle_x
push.v 276.y
pop.v.v local.noelle_y
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 205
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 260
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 819
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 141
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
pop.v.i self.qu
pushi.e 893
conv.i.v
pushi.e 167
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 768
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 6
pop.v.i self.no
pushi.e 893
conv.i.v
pushloc.v local.noelle_y
pushloc.v local.noelle_x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 724
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 7
pop.v.i self.be
pushi.e 893
conv.i.v
pushi.e 229
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 760
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 705
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 8
pop.v.i self.gi
pushi.e 893
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 760
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gi_actor
push.s "gift"@34758
conv.s.v
push.v self.gi_actor
push.v self.gi
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 158
push.v self.gi_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 158
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.gift
pushi.e 147
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.healimpact
pushi.e 99
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.boxhead
pushi.e 150
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.ralsei_ball
push.v self.havewalker
pushi.e 1
cmp.b.v EQ
bf [6]

:[5]
pushi.e 1209
conv.i.v
pushi.e 239
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 500
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.starwalker
push.i 232289
setowner.e
push.v self.starwalker
push.v self.cutscene_master
pushi.e -9
pushi.e 4
pop.v.v [array]self.save_object

:[6]
push.v self.gift
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
push.v self.healimpact
push.v self.cutscene_master
pushi.e -9
pushi.e 1
pop.v.v [array]self.save_object
push.v self.boxhead
push.v self.cutscene_master
pushi.e -9
pushi.e 2
pop.v.v [array]self.save_object
push.v self.ralsei_ball
push.v self.cutscene_master
pushi.e -9
pushi.e 3
pop.v.v [array]self.save_object

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
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_91_0"@34761
conv.s.v
push.s "\\EE* O-oh no^1, she's coming back this way!!/"@34762
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_92_0"@34763
conv.s.v
push.s "\\EE* I'll hide in that stall!/%"@34764
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.depth
push.i 100000
add.i.v
push.s "depth"@277
conv.s.v
push.v self.tentback
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 11
conv.i.v
pushi.e 139
conv.i.v
pushi.e 1276
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 97900
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 11
conv.i.v
pushi.e 139
conv.i.v
pushi.e 1371
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.4
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "queen.ogg"@20919
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1070
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 234
conv.i.v
pushi.e 1301
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 10000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 183
conv.i.v
pushi.e 1456
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_139_0"@34765
conv.s.v
push.s "\\E9* Hey Check This Out/%"@34766
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 225
conv.i.v
pushi.e 1495
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 220
conv.i.v
pushi.e 1451
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
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
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 1348
conv.i.v
pushi.e 1530
conv.i.v
push.s "x"@50
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
pushi.e 145
conv.i.v
pushi.e 264
conv.i.v
push.s "y"@52
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "hit_bottles"@34747
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 98
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 55
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 225
conv.i.v
pushi.e 1495
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 770
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 183
conv.i.v
pushi.e 1456
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 772
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_200_0"@34767
conv.s.v
push.s "\\EQ* Sweet Right/%"@34768
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
pushi.e 20
conv.i.v
pushi.e 125
conv.i.v
pushi.e 1456
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 772
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_209_0"@34769
conv.s.v
push.s "\\E9* Where's My Prize/%"@34770
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
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_217_0"@34771
conv.s.v
push.s "\\EE* Oh! Um.../%"@34772
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
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 155
conv.i.v
pushi.e 1400
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_231_0"@34773
conv.s.v
push.s "\\EE* H-here!/%"@34774
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 6
conv.i.v
pushi.e 1430
conv.i.v
pushi.e 1400
conv.i.v
push.s "x"@50
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -10
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_242_0"@34775
conv.s.v
push.s "\\EQ* Ha Ha Nice/%"@34776
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 160
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e -10
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 183
conv.i.v
pushi.e 1590
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_262_0"@34777
conv.s.v
push.s "\\ED* Wait I Actually Don't Want This/%"@34778
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
pushi.e 98
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 220
conv.i.v
pushi.e 1555
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e -10
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 183
conv.i.v
pushi.e 1355
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 195
conv.i.v
pushi.e 1296
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e -10
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.d -4.5
conv.d.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
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
push.v self.kr
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_326_0"@34779
conv.s.v
push.s "\\E2* Hahaha^1, how was THAT!?/"@34780
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
push.s "obj_ch2_city07_slash_Step_0_gml_328_0"@34781
conv.s.v
push.s "\\E2* Haha^1, Susie^1! You're not supposed to ATTACK people with it!/"@34782
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_330_0"@34783
conv.s.v
push.s "\\E2* Oh yeah!? Watch me!!!/%"@34784
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
push.s "r"@6696
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
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
pushi.e 30
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1230
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_350_0"@34785
conv.s.v
push.s "\\EP* Kris!!!!^1! There you are!!!/%"@34786
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 928
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 218
conv.i.v
pushi.e 1159
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_363_0"@34787
conv.s.v
push.s "\\E7* Kris!^1! Check out my new attack!!/%"@34788
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 145
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -21
conv.i.v
pushi.e -39
conv.i.v
push.v self.su_actor
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
pushi.e 146
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "susie_heal"@31351
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "heal_effect"@34748
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 21
conv.i.v
pushi.e 39
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_399_0"@34789
conv.s.v
push.s "* (You felt slightly healed.)/%"@34790
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 819
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
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
push.s "obj_ch2_city07_slash_Step_0_gml_412_0"@34791
conv.s.v
push.s "\\E2* Heh^1, how's that!? Meet the new healing master^1, Kris!/%"@34792
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
pushi.e 206
conv.i.v
pushi.e 1230
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_419_0"@34793
conv.s.v
push.s "\\EG * Oh. Yes. She is a real..^1. \"master\" at it^1, Kris./%"@34794
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_427_0"@34795
conv.s.v
push.s "\\EK* God^1, teaching you sarcasm was a mistake./"@34796
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "H"@5303
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_429_0"@34797
conv.s.v
push.s "\\EH* Hahahahaha!/%"@34798
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 200
conv.i.v
pushi.e 1229
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1083
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [11]

:[10]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 307
pop.v.v [array]self.flag
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 178
conv.i.v
pushi.e 1225
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e -10
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 787
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_466_0"@34799
conv.s.v
push.s "\\ED * H..^1. huh!? You're giving it to..^1. me...?/%"@34800
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 798
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_472_0"@34801
conv.s.v
push.s "\\E0* Kris.../"@34334
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_473_0"@34802
conv.s.v
push.s "\\E1* I..^1. I've never gotten a gift like this before./"@34803
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_474_0"@34804
conv.s.v
push.s "\\E1* U..^1. ummm..^1. I'm sorry^1, I.../%"@34805
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_481_0"@34806
conv.s.v
push.s "\\E2* (I'm so happy^1, I don't really know what to say...)/"@34807
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_482_0"@34808
conv.s.v
push.s "\\E1* .../%"@33759
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
push.v self.ra_actor
pushi.e 100
add.i.v
push.s "depth"@277
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
pushi.e 164
conv.i.v
pushi.e 178
conv.i.v
push.s "y"@52
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 214
conv.i.v
pushi.e 164
conv.i.v
push.s "y"@52
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 785
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_500_0"@34809
conv.s.v
push.s "\\E2* I..^1. I'll win something for you too^1, okay!?/%"@34810
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
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1074
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 170
conv.i.v
pushi.e 1439
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_515_0"@34811
conv.s.v
push.s "\\EH\\U* One baseball^1, please!!!/%"@34812
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
pushi.e 15
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1480
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 149
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -5
conv.i.v
pushi.e -25
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.s "depth"@277
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_535_0"@34813
conv.s.v
push.s "\\EE* W-wait a second!!/%"@34814
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1467
conv.i.v
push.s "x"@50
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 244
conv.i.v
push.s "y"@52
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 1388
conv.i.v
pushi.e 1467
conv.i.v
push.s "x"@50
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
pushi.e 165
conv.i.v
pushi.e 244
conv.i.v
push.s "y"@52
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.ralsei_ball
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "box_remove_effect"@34749
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 8
conv.i.v
pushi.e -100
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 20
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_586_0"@34815
conv.s.v
push.s "\\E6* N..^1. Noelle!?/%"@34816
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 192
conv.i.v
pushi.e 1453
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 202
conv.i.v
pushi.e 1271
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 23.5
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 173
conv.i.v
pushi.e 1390
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v

:[11]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [13]

:[12]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 307
pop.v.v [array]self.flag
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 188
conv.i.v
pushi.e 1157
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e -10
conv.i.v
push.v self.su_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 845
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_643_0"@34817
conv.s.v
push.s "\\E6* ..^1. huh? What...?/%"@34818
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
pushi.e 1005
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_650_0"@34819
conv.s.v
push.s "\\EK* Alright. Where'd the hell'd you get this?/"@34820
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_652_0"@34821
conv.s.v
push.s "\\E2* Perhaps they won it at that orb-tossing game./%"@34822
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
pushi.e 1001
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
push.s "obj_ch2_city07_slash_Step_0_gml_662_0"@34823
conv.s.v
push.s "\\E2* Yeah^1, like Kris could ever win that!^1! Hahaha!!/"@34824
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_663_0"@34825
conv.s.v
push.s "\\EA* They musta stole it or something!^1! Haha!!/%"@34826
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 789
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_673_0"@34827
conv.s.v
push.s "\\EL* S..^1. Stole it...?/%"@34828
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
pushi.e 788
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_680_0"@34829
conv.s.v
push.s "\\E2* Wow^1, they must have really wanted to give it to you!/%"@34830
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
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_689_0"@34831
conv.s.v
push.s "\\E6* .../%"@31727
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1004
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_701_0"@34832
conv.s.v
push.s "\\EK* Well^1, takes guts to do something stupid like that./%"@34833
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
push.v self.su_actor
pushi.e 100
add.i.v
push.s "depth"@277
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
pushi.e 176
conv.i.v
pushi.e 188
conv.i.v
push.s "y"@52
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 236
conv.i.v
pushi.e 176
conv.i.v
push.s "y"@52
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 50
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
pushi.e 273
conv.i.v
pushi.e 1169
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_727_0"@34834
conv.s.v
push.s "\\E2* ..^1. Don't think I'm gonna let you out-do me!/%"@34835
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
push.s "obj_ch2_city07_slash_Step_0_gml_731_0"@34836
conv.s.v
push.s "\\EQ* If you're gonna pull some stupid stunt like that.../%"@34837
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1005
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 218
conv.i.v
pushi.e 1159
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1074
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 222
conv.i.v
pushi.e 1374
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.v self.kr
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
pushi.e 5
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
pushi.e 43
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
push.s "obj_ch2_city07_slash_Step_0_gml_759_0"@34838
conv.s.v
push.s "\\E5* Then I'll steal you something too!!/%"@34839
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
pushi.e 10
conv.i.v
pushi.e 152
conv.i.v
pushi.e 1404
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 152
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
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_786_0"@34840
conv.s.v
push.s "\\E7* Cool box.../%"@34841
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_793_0"@34842
conv.s.v
push.s "\\EF* A.../"@34843
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_794_0"@34844
conv.s.v
push.s "\\EE* AHHHH!!!/%"@34845
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1410
conv.i.v
push.s "x"@50
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e -100
conv.i.v
pushi.e 140
conv.i.v
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_806_0"@34846
conv.s.v
push.s "\\E6* N..^1. Noelle!?/%"@34816
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 822
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 192
conv.i.v
pushi.e 1453
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
pushi.e 20
conv.i.v
pushi.e 202
conv.i.v
pushi.e 1271
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 23.6
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 173
conv.i.v
pushi.e 1390
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v

:[13]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [15]

:[14]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 307
pop.v.v [array]self.flag
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1074
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 172
conv.i.v
pushi.e 1328
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_860_0"@34847
conv.s.v
push.s "\\E2* K..^1. Kris...? Y..^1. You have something for me...?/%"@34848
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 1375
conv.i.v
pushi.e 1321
conv.i.v
push.s "x"@50
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 110
conv.i.v
pushi.e 127
conv.i.v
push.s "y"@52
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e -10
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_873_0"@34849
conv.s.v
push.s "\\E4* (Kris hasn't given me a gift like this...)/"@34850
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_874_0"@34851
conv.s.v
push.s "\\E9* (Since we were little kids.)/"@34852
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_875_0"@34853
conv.s.v
push.s "\\E6* (Are they saying they want things to go back to...)/"@34854
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_876_0"@34855
conv.s.v
push.s "\\E8* W-wait^1, isn't that the plush I just gave Queen!?/"@34856
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_877_0"@34857
conv.s.v
push.s "\\E8* What!? You want a refund!? So you can...!?/%"@34858
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 154
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e -100
conv.i.v
pushi.e 97
conv.i.v
push.s "y"@52
conv.s.v
push.v self.gi_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e -100
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_888_0"@34859
conv.s.v
push.s "\\E8* Come on^1, say that to my face!^1! Gosh!!/%"@34860
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_903_0"@34861
conv.s.v
push.s "\\E6* N..^1. Noelle!?/%"@34816
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 200
conv.i.v
pushi.e 1229
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 218
conv.i.v
pushi.e 1159
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 234
conv.i.v
pushi.e 1301
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 192
conv.i.v
pushi.e 1453
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 202
conv.i.v
pushi.e 1271
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 23.6
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 173
conv.i.v
pushi.e 1390
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v

:[15]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [17]

:[16]
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 307
pop.v.v [array]self.flag
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.b self.berdlygift
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1074
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 229
conv.i.v
pushi.e 1522
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_961_0"@34862
conv.s.v
push.s "\\E0* Kris^1, have you seen.../%"@34863
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
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 163
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_982_0"@34864
conv.s.v
push.s "\\E3* Kris!^1? We took a break from trucing for ONE second.../"@34865
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_984_0_b"@34866
conv.s.v
push.s "\\EB* And you're ALREADY back with Susie?!/"@34867
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_984_0"@34868
conv.s.v
push.s "\\EK* ???????/%"@34869
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
push.s "obj_ch2_city07_slash_Step_0_gml_991_0"@34870
conv.s.v
push.s "\\EH* Should have expected this..^1. hmph.../%"@34871
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
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_998_0"@34872
conv.s.v
push.s "\\E2* You couldn't keep up with my puzzle-solving skills!/%"@34873
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
pushi.e 30
conv.i.v
pushi.e 234
conv.i.v
pushi.e 1478
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 1527
conv.i.v
pushi.e 1470
conv.i.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e -10
conv.i.v
push.v self.be_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1017_0"@34874
conv.s.v
push.s "\\E3* H..^1. huh...?/%"@34875
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "present_transform"@34752
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 137
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1018_0"@34876
conv.s.v
push.s "\\E5* A plush...? Of ..^1. me?/"@34877
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1019_0"@34878
conv.s.v
push.s "\\E4* With..^1. nipples?/%"@34879
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
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1026_0"@34880
conv.s.v
push.s "\\EE* ..^1. Hmph. Guess I'll forgive you for now./%"@34881
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1033_0"@34882
conv.s.v
push.s "\\E1* See you^1, Kris./%"@34883
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e -10
conv.i.v
push.v self.be_actor
call.i gml_Script_c_stickto(argc=2)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 229
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 900
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.gi
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1054_0"@34884
conv.s.v
push.s "Why the hell'd you give it to Berdly!?"@34885
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "top"@6226
conv.s.v
push.s "left"@5994
conv.s.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1055_0"@34886
conv.s.v
push.s "Why did you give it to Berdly!?"@34887
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "middle"@5597
conv.s.v
pushi.e 150
conv.i.v
pushi.e 20
conv.i.v
push.s "noelle"@74
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1056_0"@34888
conv.s.v
push.s "Um, what... unexpected kindness, Kris!"@34889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
pushi.e 250
conv.i.v
pushi.e 30
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "no_one"@23186
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1059_0"@34890
conv.s.v
push.s "\\f0\\f1\\f2/%"@34891
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
push.s "obj_ch2_city07_slash_Step_0_gml_1067_0"@34892
conv.s.v
push.s "\\EC* ..^1. Let's just get the hell out of here./%"@34893
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
pushi.e 30
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 154
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e -100
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.boxhead
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1096_0"@34894
conv.s.v
push.s "\\E8* W..^1. wait!!/%"@34895
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
push.s "obj_ch2_city07_slash_Step_0_gml_1100_0"@34896
conv.s.v
push.s "\\E6* N..^1. Noelle!?/%"@34816
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 234
conv.i.v
pushi.e 1301
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 192
conv.i.v
pushi.e 1453
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 202
conv.i.v
pushi.e 1271
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 23.6
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 173
conv.i.v
pushi.e 1390
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[17]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 4
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 738
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1156_0"@34897
conv.s.v
push.s "\\EK* ..^1. the hell were you doing in there? That's cheating./"@34898
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
push.s "obj_ch2_city07_slash_Step_0_gml_1158_0"@34899
conv.s.v
push.s "\\E2* I..^1. I..^1. um..^1. I.../"@34900
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1160_0"@34901
conv.s.v
push.s "\\E1* ..^1. hm. Glad you're okay though./"@34902
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1161_0"@34903
conv.s.v
push.s "\\E0* Since that stupid Queen took you^1, I was kinda worried.../"@34904
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "L"@9485
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1163_0"@34905
conv.s.v
push.s "\\EL* (Thump^1, thump...)/%"@34906
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 845
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1169_0"@34907
conv.s.v
push.s "\\EF* Wait./%"@34908
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
pushi.e 8
conv.i.v
pushi.e 229
conv.i.v
pushi.e 1372
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 43
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1184_0"@34909
conv.s.v
push.s "\\EH* Aren't you on their side!?/"@34910
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "B"@3500
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1186_0"@34911
conv.s.v
push.s "\\EB* H-huh!?/"@34912
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1187_0"@34913
conv.s.v
push.s "\\ED* W-wait^1, wait^1, wait^1, wait^1, wait!!/"@34914
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1188_0"@34915
conv.s.v
push.s "\\E3* Umm^1, I..^1. I.../%"@34916
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1085
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[19]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [23]

:[20]
pushi.e 6
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 390
pop.v.i local.arg1
pushi.e 47
pop.v.i local.arg2
push.v self.jp
conv.v.b
bf [22]

:[21]
pushi.e 400
pop.v.i local.arg1
pushi.e 63
pop.v.i local.arg2

:[22]
push.s "obj_ch2_city07_slash_Step_0_gml_1201_0"@34919
conv.s.v
push.s "Thump, thump..."@34920
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushloc.v local.arg2
pushloc.v local.arg1
pushi.e 22
conv.i.v
push.s "noelle"@74
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1210_0"@34921
conv.s.v
push.s "\\E3* Th..^1. that's right^1! We have a truce!!/"@34922
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1211_0"@34923
conv.s.v
push.s "\\E2* Kris said I could..^1. I could be on your team!/%"@34924
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.s "obj_ch2_city07_slash_Step_0_gml_1218_0"@34925
conv.s.v
push.s "\\E6* Oh^1, really?/%"@34926
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
pushi.e 219
conv.i.v
pushi.e 1370
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1225_0"@34927
conv.s.v
push.s "\\E0* ..^1. well^1, if Kris said so^1, I guess./%"@34928
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
pushi.e 82
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1231_0"@34929
conv.s.v
push.s "\\E2* Didn't really wanna kill you anyway.\\f0/%"@34930
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
pushi.e 827
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1241_0"@34931
conv.s.v
push.s "\\EY* So? Get in line already./"@34932
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
push.s "obj_ch2_city07_slash_Step_0_gml_1243_0"@34933
conv.s.v
push.s "\\EM* O..^1. okay!!/%"@34934
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[23]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
pushi.e 6
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1421
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1452
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 217
conv.i.v
pushi.e 1455
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 217
conv.i.v
pushi.e 1535
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1452
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 217
conv.i.v
pushi.e 1535
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1277_0"@34935
conv.s.v
push.s "\\EE* Kris!!^1! What the heck are you saying!!!/%"@34936
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
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1284_0"@34937
conv.s.v
push.s "\\E8* We have a truce!^1! A truce!!!/"@34938
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
push.s "obj_ch2_city07_slash_Step_0_gml_1286_0"@34939
conv.s.v
push.s "\\E6* Huh?/%"@31876
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 151
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1411
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 215
conv.i.v
pushi.e 1479
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1320_0"@34940
conv.s.v
push.s "\\E7* I..^1. I'm afraid Queen is going to find me..^1. I.../"@34941
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1321_0"@34942
conv.s.v
push.s "\\E6* I thought you guys..^1. might be able to..^1. protect me.../"@34943
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1323_0"@34944
conv.s.v
push.s "\\E6* Protect..^1. you?/"@34945
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1325_0"@34946
conv.s.v
push.s "\\EA* S..^1. sorry..^1. I..^1. if I'm getting in the way^1, I can.../%"@34947
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1332_0"@34948
conv.s.v
push.s "\\ED* Hey^1, look./%"@34949
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
pushi.e 82
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1339_0"@34950
conv.s.v
push.s "\\EC* You can..^1. tag along in back or something./%"@34951
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
pushi.e 79
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1346_0"@34952
conv.s.v
push.s "\\EA* Just..^1. don't get in our way or anything^1, okay?/"@34953
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
push.s "obj_ch2_city07_slash_Step_0_gml_1348_0"@34954
conv.s.v
push.s "\\EM* Of..^1. of course!!/%"@34955
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[25]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
pushi.e 8
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v local.krisPosX
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.krisPosY
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushloc.v local.krisPosY
pushi.e 15
sub.i.v
pushloc.v local.krisPosX
pushi.e 60
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushloc.v local.krisPosY
pushi.e 10
sub.i.v
pushloc.v local.krisPosX
pushi.e 115
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushloc.v local.krisPosY
pushi.e 15
sub.i.v
pushloc.v local.krisPosX
pushi.e 168
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 215
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1384_0"@34958
conv.s.v
push.s "\\EM* Kris..^1. also s-said I should be..^1. behind..^1. Susie./"@34959
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
push.s "obj_ch2_city07_slash_Step_0_gml_1386_0"@34960
conv.s.v
push.s "\\EK* Uhh..^1. well^1, if Kris said so?/%"@34961
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 14
conv.i.v
pushloc.v local.krisPosY
pushi.e 10
sub.i.v
pushloc.v local.krisPosX
pushi.e 168
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 725
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 14
conv.i.v
pushloc.v local.krisPosY
pushi.e 15
sub.i.v
pushloc.v local.krisPosX
pushi.e 115
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 17
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1403_0"@34962
conv.s.v
push.s "\\E0* Let's go already./%"@34963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[27]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [36]

:[28]
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.berdlygift
pushi.e 1
cmp.b.v EQ
bf [30]

:[29]
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 215
conv.i.v
pushi.e 1410
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1419_0"@34964
conv.s.v
push.s "\\E7* Hmph. Guess I'll join too. ..^1. but only for this room!/%"@34965
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 215
conv.i.v
pushi.e 1084
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1084
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1427_0"@34966
conv.s.v
push.s "\\EH* (NO ONE WAS ASKING!)/%"@34967
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[30]
push.v self.havewalker
pushi.e 1
cmp.b.v EQ
bf [35]

:[31]
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.berdlygift
conv.v.b
bf [33]

:[32]
pushi.e 1005
conv.i.v
b [34]

:[33]
pushi.e 1054
conv.i.v

:[34]
pop.v.v local.starXPos
pushi.e 15
conv.i.v
pushloc.v local.starXPos
pushi.e 905
conv.i.v
push.s "x"@50
conv.s.v
push.v self.starwalker
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1439_0"@34969
conv.s.v
push.s "* I will also            join/%"@34970
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[35]
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[36]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [38]

:[37]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v

:[41]
push.v self.con
pushi.e 60
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
bf [59]

:[45]
pushi.e 0
pop.v.i self.con
pushi.e 11
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_spellget(argc=2)
popz.v
pushi.e 95
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.b self.explore
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
push.v self.berdlygift
conv.v.b
bf [47]

:[46]
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v

:[47]
push.v self.havewalker
conv.v.b
bf [54]

:[48]
push.v self.berdlygift
conv.v.b
bf [50]

:[49]
pushi.e 4
conv.i.v
b [51]

:[50]
pushi.e 3
conv.i.v

:[51]
pop.v.v local.walkerpos
pushloc.v local.walkerpos
pushi.e 6
conv.i.v
push.v self.starwalker
pushi.e -9
push.v [stacktop]self.y
push.v self.starwalker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
push.v self.starwalker
pushi.e -9
pushenv [53]

:[52]
call.i instance_destroy(argc=0)
popz.v

:[53]
popenv [52]

:[54]
pushi.e 893
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
pushi.e 276
pushenv [58]

:[57]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[58]
popenv [57]

:[59]
push.v self.explore
conv.v.b
bf [62]

:[60]
push.v 82.x
pushi.e 50
cmp.i.v LT
bf [62]

:[61]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [67]

:[64]
pushi.e 1
pop.v.i global.interact
push.v self.wrongexit
push.e 1
add.i.v
pop.v.v self.wrongexit
push.v self.wrongexit
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1499_0"@34972
conv.s.v
push.s "\\EQ* Isn't that where we came from?/"@34973
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1501_0"@34974
conv.s.v
push.s "\\E2* Yeah^1, there isn't any cotton candy left so.../%"@34975
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
b [67]

:[66]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city07_slash_Step_0_gml_1506_0"@34976
conv.s.v
push.s "\\E8* (How did Kris end up being the leader...?)/%"@34977
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[67]
push.v self.explore
conv.v.b
bf [70]

:[68]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 50
pop.v.i 82.x
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact

:[73]
push.v self.hit_bottles
conv.v.b
bf [95]

:[74]
push.v self.hit_timer
push.e 1
add.i.v
pop.v.v self.hit_timer
push.v self.hit_timer
pushi.e 1
cmp.i.v EQ
bf [78]

:[75]
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 129
conv.i.v
pushi.e 140
conv.i.v
pushi.e 1375
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion_marker
pushi.e 2275
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.explosion_marker
pushi.e -9
pushenv [77]

:[76]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[77]
popenv [76]
b [85]

:[78]
pushi.e 0
pop.v.b local.finish
pushi.e 129
pushenv [84]

:[79]
push.v self.sprite_index
pushi.e 2275
cmp.i.v EQ
bf [81]

:[80]
push.v self.image_index
pushi.e 16
cmp.i.v GTE
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.b local.finish
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [79]

:[85]
pushi.e 0
pop.v.i local.i

:[86]
pushloc.v local.i
push.v self.bottle
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [93]

:[87]
push.v self.hit_timer
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.i 133628
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bottle
pushi.e -9
dup.i 4
push.v [stacktop]self.gravity
pushi.e 2
add.i.v
pop.i.v [stacktop]self.gravity
push.i 133629
setowner.e
pushi.e 150
conv.i.v
pushi.e 60
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bottle
pushi.e -9
pop.v.v [stacktop]self.gravity_direction

:[89]
push.i 133652
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bottle
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.bottle
pushi.e -9
push.v [stacktop]self.x
pushi.e 1390
cmp.i.v LTE
bf [91]

:[90]
pushi.e 50
conv.i.v
b [92]

:[91]
pushi.e -50
conv.i.v

:[92]
add.v.v
pop.i.v [stacktop]self.image_angle
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [86]

:[93]
push.v self.hit_timer
pushi.e 30
cmp.i.v GTE
bf [95]

:[94]
pushi.e 0
pop.v.b self.hit_bottles

:[95]
push.v self.susie_heal
conv.v.b
bf [100]

:[96]
push.v self.heal_timer
push.e 1
add.i.v
pop.v.v self.heal_timer
push.v self.heal_beam
pushi.e -1
cmp.i.v EQ
bf [98]

:[97]
call.i gml_Script_snd_stop_all(argc=0)
popz.v
pushi.e 182
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 180
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 65
add.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 100
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.heal_beam
push.d 0.25
push.v self.heal_beam
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[98]
push.v self.heal_beam
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 2
add.i.v
pop.i.v [stacktop]self.x
push.v self.heal_beam
pushi.e -9
push.v [stacktop]self.x
pushi.e 1310
cmp.i.v GTE
bf [100]

:[99]
pushi.e 0
pop.v.b self.susie_heal
push.v self.heal_beam
call.i instance_destroy(argc=1)
popz.v

:[100]
push.v self.heal_effect
conv.v.b
bf [104]

:[101]
pushi.e 0
pop.v.b self.heal_effect
pushi.e 873
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healamt
push.v self.healamt
pushi.e -9
pushenv [103]

:[102]
pushi.e 4
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[103]
popenv [102]
pushi.e 2
push.v self.healamt
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 858
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healanim
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.id
push.v self.healanim
pushi.e -9
pop.v.v [stacktop]self.target
push.i 231131
setowner.e
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 2
add.i.v
call.i min(argc=2)
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
pop.v.v [array]self.hp

:[104]
push.v self.box_remove_effect
conv.v.b
bf [111]

:[105]
push.v self.box_remove_timer
push.e 1
add.i.v
pop.v.v self.box_remove_timer
push.v self.box_remove_timer
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2071
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fx
pushi.e 1
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.depth

:[107]
push.v self.box_remove_timer
pushi.e 5
cmp.i.v GTE
bf [111]

:[108]
pushi.e 0
pop.v.b self.box_remove_effect
push.v self.fx
pushi.e -9
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]

:[111]
push.v self.present_transform
conv.v.b
bf [end]

:[112]
pushi.e 0
pop.v.b self.present_transform
push.v self.gi_actor
pushi.e -4
cmp.i.v NEQ
bf [end]

:[113]
push.v self.gi_actor
pushi.e -9
pushenv [115]

:[114]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[115]
popenv [114]

:[end]