.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.plot
pushi.e 54
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.growStep
pushi.e 0
pop.v.i self.lerpValue
pushi.e 0
pop.v.i self.time
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 82
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
pushi.e 276
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible

:[11]
popenv [10]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
push.v 82.y
pushi.e 16
sub.i.v
push.v 82.x
pushi.e 100
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e 16
sub.i.v
push.v 82.x
pushi.e 160
sub.i.v
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
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e 16
sub.i.v
push.v 82.x
pushi.e 200
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 795
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.qu
pushi.e 893
conv.i.v
pushi.e 100
conv.i.v
pushi.e 400
conv.i.v
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
pushi.e 4
pop.v.i self.no
pushi.e 893
conv.i.v
pushi.e 50
conv.i.v
pushi.e 297
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelledark"@10169
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 717
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
pop.v.i self.ca
pushi.e 893
conv.i.v
pushi.e 10
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ca_actor
push.s "capsule"@30474
conv.s.v
push.v self.ca_actor
push.v self.ca
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 28
push.v self.ca_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ca
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
pop.v.i self.sw
pushi.e 893
conv.i.v
pushi.e -160
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sw_actor
push.s "swatchling"@30616
conv.s.v
push.v self.sw_actor
push.v self.sw
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1815
push.v self.sw_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 7
pop.v.i self.pb
pushi.e 893
conv.i.v
pushi.e -160
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pb_actor
push.s "plattertop"@30619
conv.s.v
push.v self.pb_actor
push.v self.pb
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 64
push.v self.pb_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.pb
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
pop.v.i self.pt
pushi.e 893
conv.i.v
pushi.e -160
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pt_actor
push.s "platterbottom"@30622
conv.s.v
push.v self.pt_actor
push.v self.pt
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 63
push.v self.pt_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.pt
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 9
pop.v.i self.ar
pushi.e 893
conv.i.v
pushi.e -200
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ar_actor
push.s "arcade"@27035
conv.s.v
push.v self.ar_actor
push.v self.ar
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 68
push.v self.ar_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.ar_actor
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 2000
push.v self.ar_actor
pushi.e -9
pop.v.i [stacktop]self.depthbonus
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "pause_music"@28697
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 25
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
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_97_0"@30625
conv.s.v
push.s "\\E0* Noelle Honey Become My Willing Peon And I Will Free You/"@30626
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_98_0"@30627
conv.s.v
push.s "\\E0* All You Have To Do Is Hit Yes On The Peon Release Form/"@30628
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "C"@9479
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_100_0"@30629
conv.s.v
push.s "\\EC* I^1... I'm scared.../"@30630
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_102_0"@30631
conv.s.v
push.s "\\E1* Oh Have You Never Signed A Form Before/"@30632
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "E"@9481
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_104_0"@30633
conv.s.v
push.s "\\EE* No!^1! It's everything else that's scary!!/"@30634
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "D"@9480
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_106_0"@30635
conv.s.v
push.s "\\ED* Please Abort Your Sadness Protocol/"@30636
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_107_0"@30637
conv.s.v
push.s "\\E1* I Told You Being A Peon Will Be Cool/%"@30638
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 117
conv.i.v
pushi.e 159
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 150
conv.i.v
pushi.e 110
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_124_0"@30639
conv.s.v
push.s "\\EJ* Noelle!/"@30640
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
push.s "obj_ch2_scene10_slash_Step_0_gml_126_0"@30641
conv.s.v
push.s "\\EB* S..^1. Susie!? Kris...!?/"@30642
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_128_0"@30643
conv.s.v
push.s "\\E2* Don't worry^1, we won't let your face get roboticized!/%"@30644
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "obj_ch2_scene10_slash_Step_0_gml_135_0"@30645
conv.s.v
push.s "\\EE* THAT'S..^1. SOMETHING THEY'RE GOING TO DO!?/"@30646
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "P"@4770
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_137_0"@30647
conv.s.v
push.s "\\EP* Whoops^1, thought^1, uh^1, you knew that./%"@30648
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_145_0"@30649
conv.s.v
push.s "\\EF* Oh Dear That Was Supposed To Be A Surprise/%"@30650
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_152_0"@30651
conv.s.v
push.s "\\E0* Oh Well/%"@30652
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 295
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.5
conv.d.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_animate(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ca
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
pushi.e 14
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_174_0"@30653
conv.s.v
push.s "\\ER* W-wait--!!/%"@30654
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 16
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_192_0"@30655
conv.s.v
push.s "\\E3* It Is Quite Troubling/"@30656
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_193_0"@30657
conv.s.v
push.s "\\EF* A Peon Must Be \"Willing\" To Assist Me In World Domination/"@30658
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_194_0"@30659
conv.s.v
push.s "\\E5* If Only She Had Fellow Peons To Encourage Her/"@30660
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_196_0"@30661
conv.s.v
push.s "\\EK* ..^1. So?/%"@30662
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 768
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_209_0"@30663
conv.s.v
push.s "\\ED* So Like/"@30664
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_210_0"@30665
conv.s.v
push.s "\\E9* You \"Guys\"/"@30666
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_211_0"@30667
conv.s.v
push.s "\\E1* Hey/"@30668
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_212_0"@30669
conv.s.v
push.s "\\ED* Are You Like/"@30670
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_213_0"@30671
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_214_0"@30672
conv.s.v
push.s "\\ED* Doing Anything Right Now/"@30673
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "W"@9494
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_216_0"@30674
conv.s.v
push.s "* We aren't going to help you!!/%"@30675
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_221_0"@30676
conv.s.v
push.s "\\E6* Understood. Mind-Changing Protocol Necessitated/%"@30677
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 768
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 20
conv.i.v
pushi.e 120
conv.i.v
pushi.e 270
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 62
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
pushi.e 3
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
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
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 3
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -30
conv.i.v
pushi.e -40
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 27
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e -22
conv.i.v
pushi.e -14
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1814
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.pt
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e -501
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
push.v self.pb
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.pt
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
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
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
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
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 27
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1812
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
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e -502
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 14
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 7
conv.i.v
pushi.e 14
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.pt
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 145
conv.i.v
pushi.e 0
conv.i.v
push.v self.pt_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 5
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_jump(argc=4)
popz.v
push.v self.pb
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 145
conv.i.v
pushi.e 0
conv.i.v
push.v self.pb_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 5
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 90000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e -22
conv.i.v
pushi.e -14
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1814
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.pt
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 40
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 95000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 32
conv.i.v
push.v self.pb_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sw
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1813
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 18
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1815
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 18
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e -300
conv.i.v
pushi.e 0
conv.i.v
push.v self.sw_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.pb
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 100000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 67
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 151
conv.i.v
pushi.e 307
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
pushi.e 28
conv.i.v
pushi.e 175
conv.i.v
pushi.e 255
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
pushi.e 175
conv.i.v
pushi.e 89
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 32
conv.i.v
pushi.e 175
conv.i.v
pushi.e 345
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.v self.kr
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_413_0"@30678
conv.s.v
push.s "\\E6* A giant arcade game!?/"@30679
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_415_0"@30680
conv.s.v
push.s "\\E1* I Shall Humiliate You At: A Simple Children's Diversion/"@30681
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_416_0"@30682
conv.s.v
push.s "\\EC* With Your Self-Esteem Eradicated/%"@30683
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 69
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_427_0"@30684
conv.s.v
push.s "\\E7* There Will Be No Choice But To Serve Me/%"@30685
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 67
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 768
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_442_0"@30686
conv.s.v
push.s "\\E5* The hell!? I've never played this one before...!/%"@30687
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
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
push.s "obj_ch2_scene10_slash_Step_0_gml_449_0"@30688
conv.s.v
push.s "\\E2* But Kris is quite good at games^1, aren't they?/%"@30689
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
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
push.s "obj_ch2_scene10_slash_Step_0_gml_456_0"@30690
conv.s.v
push.s "\\E2* Oh yeah. Kris^1, forgot you were a nerd. Show her!!/%"@30691
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[13]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.morphDone
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
push.v self.time
push.e 1
add.i.v
pop.v.v self.time
push.v self.growStep
pushi.e 0
cmp.i.v EQ
bf [20]

:[18]
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.time
call.i gml_Script_ease_out_elastic(argc=4)
pop.v.v self.lerpValue
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.time
call.i gml_Script_ease_out_elastic(argc=4)
pop.v.v self.lerpValue2
push.v self.lerpValue
pushi.e 2
conv.i.v
push.d 0.25
conv.d.v
call.i lerp(argc=3)
pop.v.v self.yScale
push.v self.lerpValue2
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.xScale
push.v self.yScale
push.v self.ar_actor
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.xScale
push.v self.ar_actor
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.lerpValue
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.customcon
pushi.e 1
pop.v.i self.morphDone
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [23]

:[21]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.morphDone
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [34]

:[25]
pushi.e 135
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_npc
push.v self.su_actor
pushi.e -9
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 135
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_npc
push.v self.ra_actor
pushi.e -9
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e 135
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_npc
push.v self.qu_actor
pushi.e -9
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 105
conv.i.v
push.v self.ar_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ar_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ar_npc
pushi.e 67
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ar_actor
pushi.e -9
push.v [stacktop]self.depthbonus
push.v self.ar_npc
pushi.e -9
pop.v.v [stacktop]self.depthbonus
push.v self.ar_actor
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.ar_npc
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.ar_actor
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.ar_npc
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.ar_actor
pushi.e -9
push.v [stacktop]self.depth
push.v self.ar_npc
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.ar_actor
pushi.e -9
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 129
conv.i.v
push.v self.pb_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.pb_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pb_marker
pushi.e 2
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.pb_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.pb_marker
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.pb_actor
pushi.e -9
push.v [stacktop]self.depth
push.v self.pb_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[34]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [37]

:[35]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [37]

:[36]
pushi.e 0
pop.v.i global.interact
pushi.e 33
pop.v.i global.plot
pushi.e 3
pop.v.i self.con
pushi.e 287
conv.i.v
pushi.e 120
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefield_left
pushi.e 2
push.v self.forcefield_left
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 8
push.v self.forcefield_left
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 80000
push.v self.forcefield_left
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 287
conv.i.v
pushi.e 120
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefield_right
pushi.e 2
push.v self.forcefield_right
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 8
push.v self.forcefield_right
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 8000
push.v self.forcefield_right
pushi.e -9
pop.v.i [stacktop]self.depth

:[37]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [47]

:[38]
pushi.e 5
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 82
pushenv [40]

:[39]
pushi.e 0
pop.v.i self.visible

:[40]
popenv [39]
push.v self.su_npc
pushi.e -9
pushenv [42]

:[41]
pushi.e 0
pop.v.i self.visible

:[42]
popenv [41]
push.v self.ra_npc
pushi.e -9
pushenv [44]

:[43]
pushi.e 0
pop.v.i self.visible

:[44]
popenv [43]
push.v self.qu_npc
pushi.e -9
pushenv [46]

:[45]
pushi.e 0
pop.v.i self.visible

:[46]
popenv [45]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
push.v 82.y
push.v 82.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 654
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.su_npc
pushi.e -9
push.v [stacktop]self.y
push.v self.su_npc
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
pushi.e 826
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
push.v self.ra_npc
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_npc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 799
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.qu
pushi.e 893
conv.i.v
push.v self.qu_npc
pushi.e -9
push.v [stacktop]self.y
push.v self.qu_npc
pushi.e -9
push.v [stacktop]self.x
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 144
conv.i.v
pushi.e 271
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_586_0"@30698
conv.s.v
push.s "* You tried to use the arcade machine./%"@30699
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
pushi.e 1413
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_595_0"@30700
conv.s.v
push.s "* (You weren't tall or strong enough to use the controls...)/%"@30701
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_611_0"@30702
conv.s.v
push.s "\\EC* Self-Esteem Eradication Complete/"@30703
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_612_0"@30704
conv.s.v
push.s "\\EC* Running Laughing Protocol/%"@30705
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 283
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_620_0"@30706
conv.s.v
push.s "\\EP* Ha Ha Ha Ha Ha Ha Ha Ha Ha Ha/%"@30707
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_630_0"@30708
conv.s.v
push.s "\\EQ* Uh..^1. ummm..^1. it's ok^1, Kris..^1. err..^1. I'm short^1, too.../"@30709
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_631_0"@30710
conv.s.v
push.s "\\EK* K..^1. Kris...!^1! Wait^1, I have an idea!!/%"@30711
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
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
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 10.875
conv.d.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_653_0"@30712
conv.s.v
push.s "\\EJ* Kris^1, if we can combine our powers^1, then.../"@30713
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_654_0"@30714
conv.s.v
push.s "\\EH* Look!^1! I'll show you what I've been practicing!!/%"@30715
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 20
conv.i.v
push.s "fadeout"@9850
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd4(argc=6)
popz.v
pushi.e 226
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 141
conv.i.v
pushi.e 335
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 53
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 139
conv.i.v
pushi.e 275
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_670_0"@30716
conv.s.v
push.s "\\EH* \\cYMagical Stool Forme R\\cW!!/"@30717
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
push.s "obj_ch2_scene10_slash_Step_0_gml_672_0"@30718
conv.s.v
push.s "\\E2* Now we're talking!^1! Arright Kris^1, leave it to me!!/%"@30719
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 125
conv.i.v
pushi.e 385
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
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_683_0"@30720
conv.s.v
push.s "\\E2* Put your arms out!!/%"@30721
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 51
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
pushi.e 15
conv.i.v
pushi.e 180
conv.i.v
pushi.e 282
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3
conv.i.v
push.i [function]gml_Script_scr_afterimage
conv.i.v
push.v self.su_actor
call.i gml_Script_c_script_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e -100
conv.i.v
pushi.e 272
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 160
conv.i.v
pushi.e 272
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 150
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.i [function]gml_Script_scr_afterimage
conv.i.v
push.v self.su_actor
call.i gml_Script_c_script_instance_stop(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 59
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 153
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_715_0"@30722
conv.s.v
push.s "\\E2* \\cYPower Beast Forme S\\c0!!/%"@30723
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_720_0"@30724
conv.s.v
push.s "\\E2* Move your arms and I'll move 'em with ya!/"@30725
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_721_0"@30726
conv.s.v
push.s "\\E2* Let's go!!/%"@30727
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 94
conv.i.v
pushi.e 335
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 768
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 54
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 20
conv.i.v
pushi.e 113
conv.i.v
pushi.e 255
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 183
conv.i.v
pushi.e 245
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_741_0"@30728
conv.s.v
push.s "* Incredible/"@30729
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_742_0"@30730
conv.s.v
push.s "\\ED* Your Transformation Is Combining All Your Weak Points/"@30731
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_743_0"@30732
conv.s.v
push.s "\\E1* Self-Esteem Crushing Efficiency 300`% And Rising/%"@30733
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_748_0"@30734
conv.s.v
push.s "\\E7* Commence Virtual Combat/%"@30735
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[47]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [59]

:[48]
pushi.e 11
pop.v.i self.con
pushi.e 105
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[49]
pushi.e 105
pushenv [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
popenv [50]
pushi.e -4
pop.v.i self.ar_npc

:[52]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 82
pushenv [54]

:[53]
pushi.e 0
pop.v.i self.visible

:[54]
popenv [53]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.visible

:[56]
popenv [55]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [58]

:[57]
pushi.e 0
pop.v.i self.visible

:[58]
popenv [57]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 143
conv.i.v
pushi.e 261
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 654
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 143
conv.i.v
pushi.e 282
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 826
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
pushi.e 147
conv.i.v
pushi.e 231
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 799
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i self.qu
pushi.e 893
conv.i.v
pushi.e 90
conv.i.v
pushi.e 325
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 770
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 105
conv.i.v
pushi.e 190
conv.i.v
pushi.e 322
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ar_npc
pushi.e 67
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2000
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.depthbonus
pushi.e 2
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
add.i.v
push.v self.ar_npc
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 145
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pb_marker
pushi.e 2
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 64
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ar_npc
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5000
add.i.v
push.v self.pb_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 97
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autofacing(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 22
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
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
push.s "r"@6696
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
push.s "obj_ch2_scene10_slash_Step_0_gml_845_0"@30736
conv.s.v
push.s "\\EQ* Heh^1, thought you could beat US!?/%"@30737
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[59]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [61]

:[60]
push.v self.customcon
pushi.e 0
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [68]

:[63]
pushi.e 14
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 798
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_879_0"@30738
conv.s.v
push.s "\\ED* B..^1. Bosom...?/%"@30739
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
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
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_888_0"@30740
conv.s.v
push.s "\\E1* It Means Tity/"@30741
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_890_0"@30742
conv.s.v
push.s "* WE KNOW WHAT IT MEANS!!!/"@30743
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_891_0"@30744
conv.s.v
push.s "\\E5* We aren't helping you!!!/"@30745
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "C"@9479
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_893_0"@30746
conv.s.v
push.s "* Understood^1, Preference Settings Set To Perish/%"@30747
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 2.857
conv.d.v
pushi.e 16
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.d 18.4375
conv.d.v
pushi.e 16
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[65]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_908_0"@30748
conv.s.v
push.s "\\EH* (..^1. the hell did you say that so enthusiastically!?)/"@30749
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
push.s "obj_ch2_scene10_slash_Step_0_gml_910_0"@30750
conv.s.v
push.s "\\E2* Err^1, Queen..^1. aren't there any other options?/%"@30751
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_918_0"@30752
conv.s.v
push.s "\\E9* Yes..^1. You Can Also: Mega-Perish/"@30753
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
push.s "obj_ch2_scene10_slash_Step_0_gml_920_0"@30754
conv.s.v
push.s "* Yeah^1, uh^1, no. Perishing..^1. bites./"@30755
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "Q"@9489
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_922_0"@30756
conv.s.v
push.s "* You Could Say It: Mega-Bytes/"@30757
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_924_0"@30758
conv.s.v
push.s "\\EH* Would you get out of here already!?!?/"@30759
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "C"@9479
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_926_0"@30760
conv.s.v
push.s "* Understood. Preference Settings Set To \"Perish\"/%"@30761
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 2.857
conv.d.v
pushi.e 16
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.d 18.4375
conv.d.v
pushi.e 16
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[67]
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene10_slash_Step_0_gml_940_0"@30762
conv.s.v
push.s "\\EH* C'mon^1, let's go after her!/%"@30763
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

:[68]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [70]

:[69]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [75]

:[72]
push.v self.specialTimer
pushi.e 60
cmp.i.v LT
bf [74]

:[73]
pushi.e 1
pop.v.i self.specialDraw
push.v self.specialTimer
push.e 1
add.i.v
pop.v.v self.specialTimer
b [75]

:[74]
pushi.e 0
pop.v.i self.specialDraw
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.specialTimer
pushi.e 6
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[75]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [77]

:[76]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [84]

:[79]
push.v self.specialTimer
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1070
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.animeBG
pushi.e 0
push.v self.animeBG
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 15
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 19
push.v self.animeBG
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
pop.v.i self.specialTimer

:[81]
push.v self.animeBG
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [83]

:[82]
pushi.e 0
pop.v.i self.specialTimer
pushi.e 0
pop.v.i self.customcon
pushi.e 7
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
b [84]

:[83]
push.v self.animeBG
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.05
add.d.v
pop.i.v [stacktop]self.image_alpha

:[84]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [86]

:[85]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [92]

:[88]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.bgAlpha
push.d 0.1
sub.d.v
call.i clamp(argc=3)
pop.v.v self.bgAlpha
push.v self.animeBG
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.animeBG
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [92]

:[89]
push.v self.animeBG
pushi.e -9
pushenv [91]

:[90]
call.i instance_destroy(argc=0)
popz.v

:[91]
popenv [90]
pushi.e 3000
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.depthbonus
push.i 99999
push.v self.pb_marker
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 450
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.depthbonus
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.specialTimer
pushi.e 8
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[92]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [94]

:[93]
push.v self.customcon
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [99]

:[96]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [98]

:[97]
pushi.e 54
pop.v.i global.plot
pushi.e 20
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
b [99]

:[98]
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.kr_x_save
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.kr_y_save
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.su_x_save
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.su_y_save
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.ra_x_save
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.ra_y_save

:[99]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [107]

:[100]
pushi.e 9
pop.v.i self.con
pushi.e 82
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.visible

:[102]
popenv [101]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [104]

:[103]
pushi.e 0
pop.v.i self.visible

:[104]
popenv [103]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.visible

:[106]
popenv [105]
pushi.e 129
conv.i.v
push.v self.ra_y_save
push.v self.ra_x_save
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
pushi.e 52
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 129
conv.i.v
push.v self.su_y_save
push.v self.su_x_save
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
pushi.e 54
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 129
conv.i.v
push.v self.su_y_save
push.v self.su_x_save
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
pushi.e 54
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 90
conv.i.v
pushi.e 335
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
pushi.e 770
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 938
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[107]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [110]

:[108]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [114]

:[112]
push.v self.specialDraw
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
pushi.e 129
conv.i.v
push.v self.ar_npc
pushi.e -9
push.v [stacktop]self.y
pushi.e 90
sub.i.v
push.v self.ar_npc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion_marker
pushi.e 4
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 4
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.explosion_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2188
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1333
push.v self.explosion_marker
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 69
pop.v.i self.specialDraw
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[114]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [116]

:[115]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [122]

:[118]
push.v self.specialDraw
pushi.e 70
cmp.i.v EQ
bf [120]

:[119]
pushi.e 1014
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 71
pop.v.i self.specialDraw

:[120]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [122]

:[121]
pushi.e 13
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[122]
push.v self.specialDraw
pushi.e 69
cmp.i.v EQ
bf [132]

:[123]
push.v self.explosion_marker
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 0
cmp.i.v GT
bf [125]

:[124]
push.v self.ar_npc
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 67
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
pushi.e 70
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 200
push.v self.ar_npc
pushi.e -9
pop.v.i [stacktop]self.y

:[128]
push.v self.explosiontimer
push.e 1
add.i.v
pop.v.v self.explosiontimer
push.v self.explosiontimer
pushi.e 32
cmp.i.v EQ
bf [132]

:[129]
push.v self.explosion_marker
pushi.e -9
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]
pushi.e 70
pop.v.i self.specialDraw

:[132]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [138]

:[133]
pushi.e 171
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [137]

:[134]
pushi.e 171
pushenv [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
popenv [135]

:[137]
pushi.e 171
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 16
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[138]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [140]

:[139]
push.v self.customcon
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [147]

:[142]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [147]

:[143]
pushi.e 0
pop.v.i global.interact
pushi.e 55
pop.v.i global.plot
pushi.e 15
pop.v.i self.con
pushi.e 127
conv.i.v
pushi.e 127
conv.i.v
pushi.e 458
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.v self.forcefield_left
call.i instance_destroy(argc=1)
popz.v
push.v self.forcefield_right
call.i instance_destroy(argc=1)
popz.v
pushi.e 135
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [147]

:[144]
pushi.e 135
pushenv [146]

:[145]
call.i instance_destroy(argc=0)
popz.v

:[146]
popenv [145]

:[147]
push.v self.pause_music
conv.v.b
bf [end]

:[148]
pushi.e 0
pop.v.b self.pause_music
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[end]