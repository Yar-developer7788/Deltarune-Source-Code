.localvar 2 arguments

:[0]
push.v self.weird
pushi.e 0
cmp.i.v EQ
bf [24]

:[1]
push.v 82.x
push.v self.x
cmp.v.v GTE
bf [3]

:[2]
push.v self.con
pushi.e -1
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
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 650
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1886
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
pushi.e -200
conv.i.v
pushi.e 0
conv.i.v
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
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.qu_flame
pushi.e 765
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 650
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.qu_flame_actor
push.s "qu_flame"@30470
conv.s.v
push.v self.qu_flame_actor
push.v self.qu_flame
call.i gml_Script_scr_actor_setup_nofacing(argc=3)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
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
pushi.e 935
conv.i.v
pushi.e 460
conv.i.v
pushi.e 963
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capsule1
pushi.e 0
push.v self.capsule1
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 935
conv.i.v
pushi.e 460
conv.i.v
pushi.e 764
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capsule2
pushi.e 0
push.v self.capsule2
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.capsule2
pushi.e -9
pop.v.i [stacktop]self.main
pushi.e 935
conv.i.v
pushi.e 460
conv.i.v
pushi.e 664
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capsule3
pushi.e 0
push.v self.capsule3
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 935
conv.i.v
pushi.e 460
conv.i.v
pushi.e 864
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capsule4
pushi.e 0
push.v self.capsule4
pushi.e -9
pop.v.i [stacktop]self.visible

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[7]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 200
conv.i.v
pushi.e 786
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
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
pushi.e 184
conv.i.v
pushi.e 698
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 182
conv.i.v
pushi.e 634
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
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
pushi.e 188
conv.i.v
pushi.e 578
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_69_0"@34983
conv.s.v
push.s "\\E0* Look!^1! We're finally close to the Fountain!/"@34984
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_70_0"@34985
conv.s.v
push.s "\\EH* It's Queen's mansion!!/%"@34986
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
call.i gml_Script_c_shakeobj(argc=0)
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
push.v self.ra
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
push.s "obj_ch2_city08_slash_Step_0_gml_78_0"@34987
conv.s.v
push.s "\\EB* H-huh!? W-wait^1, why did we come here!?/%"@34988
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
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.v self.no
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 10
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_92_0"@34989
conv.s.v
push.s "\\EQ* Kris You Brought Noelle Right To Me/"@34990
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_93_0"@34991
conv.s.v
push.s "\\E9* (I Knew Our Truce Was The Best)/"@34992
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_94_0"@34993
conv.s.v
push.s "\\E6* But Unfortunately/"@34994
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_95_0"@34995
conv.s.v
push.s "\\E7* That Means Trucies Are Over/"@34996
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_96_0"@34997
conv.s.v
push.s "\\E1* Noelle Get Over Here/"@34998
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 7
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_98_0"@34999
conv.s.v
push.s "\\E7* But I..^1. I.../"@35000
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_100_0"@35001
conv.s.v
push.s "\\E1* Noelle/"@35002
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_101_0"@35003
conv.s.v
push.s "\\ED* I Will Only Say It One Time/"@35004
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_102_0"@35005
conv.s.v
push.s "\\E1* Infinitely/"@35006
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_103_0"@35007
conv.s.v
push.s "\\E1* Get Over Here Get Over Here Get Over Here Get Over Here Get Over Here/%"@35008
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
push.s "obj_ch2_city08_slash_Step_0_gml_111_0"@35009
conv.s.v
push.s "\\E7* I..^1. I.../"@35010
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "F"@5969
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_113_0"@35011
conv.s.v
push.s "\\EF* Noelle Are You: Hesitating/"@35012
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_114_0"@35013
conv.s.v
push.s "\\E9* Let Me If-Then This For You/"@35014
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_115_0"@35015
conv.s.v
push.s "\\E1* How About: IF You Don't Listen THEN/"@35016
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_116_0"@35017
conv.s.v
push.s "\\EO* A Certain Bird Might Take A Ride In The Acid River/%"@35018
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
call.i gml_Script_c_shakeobj(argc=0)
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
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 4
cmp.i.v NEQ
bf [9]

:[8]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_132_0"@35019
conv.s.v
push.s "\\EC* B..^1. Berdly!?/%"@35020
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
b [10]

:[9]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_159_0_b"@35021
conv.s.v
push.s "\\EC* B..^1. Berdly!?/"@35022
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_160_0_b"@35023
conv.s.v
push.s "* (That's right^1, he was just with us...)/"@35024
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_161_0_b"@35025
conv.s.v
push.s "* (Queen must have captured him when we weren't looking...!?)/%"@35026
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v

:[10]
call.i gml_Script_c_talk_wait(argc=0)
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 195
conv.i.v
pushi.e 624
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 732
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.24
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 195
conv.i.v
pushi.e 918
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
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
push.s "obj_ch2_city08_slash_Step_0_gml_152_0"@35027
conv.s.v
push.s "\\E7* (...)/%"@35028
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 734
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_159_0"@35029
conv.s.v
push.s "\\E7* (I..^1. I'm sorry..^1. Kris^1, Susie..^1. I...)/"@35030
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_160_0"@35031
conv.s.v
push.s "\\E9* (I wish I could have stayed with you longer^1, but...)/"@35032
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_161_0"@35033
conv.s.v
push.s "\\E7* (I..^1. I can't let Berdly get hurt^1, y'know?)/"@35034
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "O"@9488
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_163_0"@35035
conv.s.v
push.s "\\EO* .../%"@35036
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 732
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 185
conv.i.v
pushi.e 980
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_173_0"@35037
conv.s.v
push.s "\\E0* Don't Be Sad Noelle Honey/"@35038
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_174_0"@35039
conv.s.v
push.s "\\E1* All That Remains Is The Final Step/%"@35040
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 220
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 40
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 40
conv.i.v
pushi.e 220
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_190_0"@35041
conv.s.v
push.s "\\E6* My splendorious Queen^1! There you are!/"@35042
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 4
cmp.i.v NEQ
bf [12]

:[11]
push.s "obj_ch2_city08_slash_Step_0_gml_191_0"@35043
conv.s.v
push.s "\\EI* Phew^1! I looked in every used game store for you!/%"@35044
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
b [13]

:[12]
push.s "obj_ch2_city08_slash_Step_0_gml_229_0"@35045
conv.s.v
push.s "\\EI* Sorry^1, I thought I saw you in a used game store^1, and.../%"@35046
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v

:[13]
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_199_0"@35047
conv.s.v
push.s "\\E3* Oh^1, Noelle. Are you okay? You look a little funny./%"@35048
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_214_0"@35049
conv.s.v
push.s "\\E1* Okay Plan B/%"@35050
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
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_instance(argc=3)
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
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 694
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 980
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 140
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_250_0"@35051
conv.s.v
push.s "\\E3* H-huh!?/"@35052
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_251_0"@35053
conv.s.v
push.s "\\EC* What are you doing!?/"@35054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_253_0"@35055
conv.s.v
push.s "\\EA* I See Now Her Will Must Be Unleashed By Force/"@35056
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_254_0"@35057
conv.s.v
push.s "\\E9* Perhaps If I Make Her Face Into A Robot One...?/%"@35058
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "berdlyunhappy"@10173
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_266_0"@35059
conv.s.v
push.s "\\EC* B-but..^1. you said you wouldn't do that if I.../"@35060
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_268_0"@35061
conv.s.v
push.s "\\EK* Variable Lying Set To True/%"@35062
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 699
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_277_0"@35063
conv.s.v
push.s "\\EB* We were going to be smart together!!! That's not fair!!!/"@35064
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
push.s "obj_ch2_city08_slash_Step_0_gml_279_0"@35065
conv.s.v
push.s "\\E1* Understood/"@35066
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_280_0"@35067
conv.s.v
push.s "\\E7* Fairness Activated/%"@35068
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule4
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 140
conv.i.v
pushi.e 440
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule4
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule4
call.i gml_Script_c_var_instance(argc=3)
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
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
push.v self.su_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 694
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
push.v self.be_actor
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
push.s "obj_ch2_city08_slash_Step_0_gml_313_0"@35069
conv.s.v
push.s "\\EZ* H-HEY!!!/"@35070
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "D"@9480
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_315_0"@35071
conv.s.v
push.s "\\ED* Good Thing I Calibrated Those Cages/"@35072
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "B"@3500
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_317_0"@35073
conv.s.v
push.s "\\EB* You..^1. you said I could trust you!!/"@35074
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_318_0"@35075
conv.s.v
push.s "\\EC* You said you were a GAMER!!!/"@35076
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "B"@3500
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_320_0"@35077
conv.s.v
push.s "\\EB* Berdly/"@35078
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_321_0"@35079
conv.s.v
push.s "\\E6* I Only Play Mobile Games/%"@35080
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 696
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
push.v self.be_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_333_0"@35081
conv.s.v
push.s "\\E3* NOOOOOOOO!!!!!!/"@35082
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_335_0"@35083
conv.s.v
push.s "\\E6* One Of You Is Going To Help Me With My Plan/"@35084
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_336_0"@35085
conv.s.v
push.s "\\E6* And It's Going To Be Noelle/"@35086
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_337_0"@35087
conv.s.v
push.s "\\ED* The Rest Of You/"@35088
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_338_0"@35089
conv.s.v
push.s "\\EC* Go To Your Rooms/%"@35090
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 786
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 140
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 698
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 140
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e -300
conv.i.v
pushi.e 140
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule4
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
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
pushi.e 15
conv.i.v
pushi.e 120
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -3
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_382_0"@35091
conv.s.v
push.s "\\EC* Wh..^1. What are you going to do with me?/%"@35092
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
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 165
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_403_0"@35093
conv.s.v
push.s "\\EI* Oh Damn/"@35094
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_404_0"@35095
conv.s.v
push.s "\\E1* You're Still Here/"@35096
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_405_0"@35097
conv.s.v
push.s "\\ED* I Only Made Four Cages Ha Ha Ha/"@35098
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_406_0"@35099
conv.s.v
push.s "\\EM* I Literally Don't Know Ha Ha Ha Ha/%"@35100
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
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
conv.b.v
push.s "circle_zoom_start"@34979
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 201
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[14]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[19]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [21]

:[20]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
pop.v.i self.con
pushi.e 99
pop.v.i global.plot
pushi.e 160
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
push.v self.weird
pushi.e 1
cmp.b.v EQ
bf [36]

:[25]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 129
conv.i.v
pushi.e 196
conv.i.v
pushi.e 858
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ralsei
pushi.e 799
push.v self.ralsei
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.ralsei
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ralsei
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.ralsei
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 129
conv.i.v
pushi.e 188
conv.i.v
pushi.e 916
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.susie
pushi.e 826
push.v self.susie
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.susie
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.susie
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.susie
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[27]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [30]

:[28]
push.v 82.x
pushi.e 1200
cmp.i.v LT
bf [30]

:[29]
pushi.e 1
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.ralsei
pushi.e -9
push.v [stacktop]self.y
pushi.e 900
add.i.v
push.v self.ralsei
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v self.susie
pushi.e -9
push.v [stacktop]self.y
pushi.e 900
add.i.v
push.v self.susie
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[30]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[32]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e -999
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1160
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 621
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 196
conv.i.v
pushi.e 858
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 900
conv.i.v
push.s "y"@52
conv.s.v
push.v self.susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 188
conv.i.v
pushi.e 916
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 900
conv.i.v
push.s "y"@52
conv.s.v
push.v self.ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 17
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_528_0"@35101
conv.s.v
push.s "\\E0* Looks like we finally found the fountain.../"@35102
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_530_0"@35103
conv.s.v
push.s "\\E0* Yeah^1, but where the hell is Kris...?/%"@35104
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
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
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
pushi.e 15
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_541_0"@35105
conv.s.v
push.s "\\E7* Kris!/%"@35106
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 32
conv.i.v
pushi.e 0
conv.i.v
pushi.e 805
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 204
conv.i.v
pushi.e 1104
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 208
conv.i.v
pushi.e 1048
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_551_0"@35107
conv.s.v
push.s "\\E5* Where the hell were you!?/"@35108
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "Q"@9489
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_553_0"@35109
conv.s.v
push.s "\\EQ* We were searching everywhere for you.../"@35110
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_554_0"@35111
conv.s.v
push.s "\\E2* Even Susie was worried!/%"@35112
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
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
push.s "obj_ch2_city08_slash_Step_0_gml_560_0"@35113
conv.s.v
push.s "\\EP* Huh!? No I wasn't!/%"@35114
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_566_0"@35115
conv.s.v
push.s "\\EO* Just^1, y'know^1, tell us if you're gonna.../%"@35116
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_570_0"@35117
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_571_0"@35118
conv.s.v
push.s "\\E1* Hey..^1. Kris^1, you^1, uh^1, ok?/"@35119
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_572_0"@35120
conv.s.v
push.s "\\E0* You look kinda.../%"@35121
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_577_0"@35122
conv.s.v
push.s "\\EH* Aww Kris^1, if you're hurt^1, Susie can heal you!/%"@35123
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_582_0"@35124
conv.s.v
push.s "\\E2* Yeah^1, that's right^1! I'm a healing master now^1, Kris!/"@35125
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_583_0"@35126
conv.s.v
push.s "\\EA* I'm even better than Ralsei^1, so.../%"@35127
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 198
conv.i.v
pushi.e 1100
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_591_0"@35128
conv.s.v
push.s "\\E3* If^1, uh^1, you hurt yourself or something^1, then.../%"@35129
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
pushi.e 214
conv.i.v
pushi.e 1046
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 813
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_599_0"@35130
conv.s.v
push.s "\\EG* You could try doing a hug like I did earlier!/%"@35131
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
pushi.e 204
conv.i.v
pushi.e 1110
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city08_slash_Step_0_gml_606_0"@35132
conv.s.v
push.s "\\EH* SHUT UP AND LET'S JUST GO ALREADY!/%"@35133
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 208
conv.i.v
pushi.e 1048
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 99
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[34]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [36]

:[35]
push.i 231204
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
pushi.e 24
pop.v.i global.entrance
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 11
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_spellget(argc=2)
popz.v
pushi.e 167
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
push.v self.circle_zoom_start
conv.v.b
bf [43]

:[37]
push.v self.circle_zoom_timer
push.e 1
add.i.v
pop.v.v self.circle_zoom_timer
push.v self.circle_zoom
pushi.e -1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 194
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
add.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.circle_zoom

:[39]
push.v self.circle_zoom_timer
pushi.e 60
cmp.i.v GTE
bf [43]

:[40]
pushi.e 0
pop.v.b self.circle_zoom_start
push.v self.circle_zoom
pushi.e -9
pushenv [42]

:[41]
pushi.e 1
pop.v.i self.finish

:[42]
popenv [41]

:[43]
push.v self.cityscape_parallax
conv.v.b
bf [end]

:[end]