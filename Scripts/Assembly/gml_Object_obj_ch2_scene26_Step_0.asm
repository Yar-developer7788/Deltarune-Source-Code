.localvar 2 arguments
.localvar 32951 bigqueen 16604
.localvar 107 i 16610
.localvar 338 _i 16611
.localvar 33074 rockstart 16613

:[0]
push.v 82.x
pushi.e 1120
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
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
pushi.e 4
pop.v.i self.qu
pushi.e 893
conv.i.v
pushi.e 130
conv.i.v
pushi.e 1670
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 306
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
pushi.e 5
pop.v.i self.no
pushi.e 893
conv.i.v
pushi.e 167
conv.i.v
pushi.e 2146
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 718
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.queenhand
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 6
pop.v.i self.qu_flame
pushi.e 765
conv.i.v
pushi.e 130
conv.i.v
pushi.e 1670
conv.i.v
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
pushi.e 300
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pushi.e 1600
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queenwinehand
push.i 1000100
push.v self.queenwinehand
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.queenwinehand
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.queenwinehand
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 268
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pushi.e 1770
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queenfistleft
push.i 1000240
push.v self.queenfistleft
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.queenfistleft
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 280
conv.i.v
pushi.e 266
conv.i.v
pushi.e 1680
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.damage1
push.i 950000
push.v self.damage1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.damage1
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 280
conv.i.v
pushi.e 266
conv.i.v
pushi.e 2100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.damage2
push.i 950000
push.v self.damage2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.damage2
pushi.e -9
pop.v.i [stacktop]self.visible

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 15
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
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "set_queen_voice"@32752
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_98_0"@32800
conv.s.v
push.s "* The Knight/"@32801
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_99_0"@32802
conv.s.v
push.s "* The Roaring Knight.../%"@32803
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_100_0"@32804
conv.s.v
push.s "* Today^1, It Deigned To Create This World/%"@32805
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [10]

:[8]
push.v 986.cityscape_reveal
conv.v.b
bf [10]

:[9]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 4
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
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
pushi.e 173
conv.i.v
pushi.e 1581
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_101_0"@32807
conv.s.v
push.s "* Reaching Its Long Hand To The Sky/%"@32808
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[13]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [16]

:[14]
push.v 986.hand_both_reveal_finish
conv.v.b
bf [16]

:[15]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 6
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 2
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_102_0"@32810
conv.s.v
push.s "* It Coursed Its Will Into Its Blade/%"@32811
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [22]

:[20]
push.v 986.knife_hover
conv.v.b
bf [22]

:[21]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [30]

:[24]
pushi.e 10
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 3
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_103_0"@32813
conv.s.v
push.s "* And Made/%"@32814
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 130
conv.i.v
pushi.e 1670
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_104_0"@32815
conv.s.v
push.s "* Thrusting The Fountain From The Earth/%"@32816
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
push.s "obj_ch2_scene26_slash_Step_0_gml_115_0"@32817
conv.s.v
push.s "* .../"@897
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_116_0"@32818
conv.s.v
push.s "* Unfortunately The World They Created/"@32819
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_117_0"@32820
conv.s.v
push.s "* Is Trapped Within The Confines Of The Library/"@32821
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_118_0"@32822
conv.s.v
push.s "* If Only We Had A Way To Make More Darkness/"@32823
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_119_0"@32824
conv.s.v
push.s "* We Might Be Able To Cover The Whole World/"@32825
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_120_0"@32826
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_131_0"@32827
conv.s.v
push.s "* That Is When I Realized/"@32828
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_132_0"@32829
conv.s.v
push.s "* This Power..^1. This Power Of The Will/"@32830
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_133_0"@32831
conv.s.v
push.s "* This Power Of Determination.../%"@32832
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 5
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 6
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_146_0"@32833
conv.s.v
push.s "* Is This Not Something That All Lightners Possess...?/"@32834
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_159_0"@32835
conv.s.v
push.s "* If One Was Simply/"@32836
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_160_0"@32837
conv.s.v
push.s "* Determined Enough/%"@32838
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 7
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_161_0"@32839
conv.s.v
push.s "* Could Not Anyone Make A Dark Fountain?/"@32840
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_172_0"@32841
conv.s.v
push.s "* So Then/"@32842
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_173_0"@32843
conv.s.v
push.s "* If The Knight Has Taken Its Leave/"@32844
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_184_0"@32845
conv.s.v
push.s "* Then I Will Simply.../%"@32846
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_185_0"@32847
conv.s.v
push.s "* Make A New One/%"@32848
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
pushi.e 5
conv.i.v
push.s "laser_con"@32753
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [29]

:[25]
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 766
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 43
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_207_0"@32849
conv.s.v
push.s "\\EB* Noelle Honey Darling Sweetie Gravy/"@32850
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_208_0"@32851
conv.s.v
push.s "\\E1* How Do You Find The Giant Hand?/%"@32852
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.s "obj_ch2_scene26_slash_Step_0_gml_210_0"@32853
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "enable_face"@32751
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_212_0"@32854
conv.s.v
push.s "\\E1* Great And How Do You Feel About Worlddomination?/%"@32855
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
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pushi.e 2442
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 9500000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_235_0"@32856
conv.s.v
push.s "\\E8* Oooooo Ouchie Mama/%"@32857
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1700
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 226
conv.i.v
pushi.e 1800
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1700
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 210
conv.i.v
pushi.e 1870
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1700
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 214
conv.i.v
pushi.e 1725
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 272
conv.i.v
push.s "sprite_index"@273
conv.s.v
push.v self.queenhand
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 713
conv.i.v
pushi.e 717
conv.i.v
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
pushi.e 210
conv.i.v
pushi.e 2105
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 713
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
push.v self.queenhand
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.queenhand
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 716
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_277_0"@32858
conv.s.v
push.s "\\EN* S-Susie...^1! You..^1. you came to save me!/%"@32859
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
pushi.e 715
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_285_0"@32860
conv.s.v
push.s "\\E6* Somehow^1, I..^1. I..^1. I knew you would.../%"@32861
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_292_0"@32862
conv.s.v
push.s "\\E3* Uh^1, you did?/%"@32863
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
push.s "obj_ch2_scene26_slash_Step_0_gml_298_0"@32864
conv.s.v
push.s "\\EP* Umm^1, I mean..^1. I..^1. umm.. well.../"@32865
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_306_0"@32866
conv.s.v
push.s "\\EL* .../%"@31925
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
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.su
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
push.s "obj_ch2_scene26_slash_Step_0_gml_319_0"@32867
conv.s.v
push.s "\\EB* W..^1. Wait^1! Wait wait wait!!/"@32868
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_320_0"@32869
conv.s.v
push.s "\\EE* You need to get out of here!^1! Hurry!!/%"@32870
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "ralseiunhappy"@10174
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
push.s "obj_ch2_scene26_slash_Step_0_gml_333_0"@32871
conv.s.v
push.s "\\E6* H-huh?!/%"@32872
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "shakeloop"@32735
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.bg_cover
call.i gml_Script_c_var_lerp_instance(argc=5)
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
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
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
push.s "giant_queen_appears.ogg"@32873
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "release_queen"@32754
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "rockanim"@32728
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "rockdog"@32731
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
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
pushi.e 814
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 844
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 737
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.b.v
push.s "shakeloop"@32735
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_start"@32755
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_stop"@32756
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_436_0"@32874
conv.s.v
push.s "\\EC* Q..^1. Queen!?/"@32875
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "B"@3500
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_438_0"@32876
conv.s.v
push.s "\\EB* Seems That You Failed To Notice/"@32877
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_439_0"@32878
conv.s.v
push.s "\\E6* The Giant Freaking Robot In The Middle Of My Palace/"@32879
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "C"@9479
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_441_0"@32880
conv.s.v
push.s "\\EC* Th..^1. this isn't good..^1. she's..^1. she's invincible like this!!/"@32881
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_443_0"@32882
conv.s.v
push.s "\\EK* Huh?/"@32883
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "B"@3500
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_445_0"@32884
conv.s.v
push.s "\\EB* She..^1. she's been bragging about her final form all day!!/%"@32885
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_464_0"@32886
conv.s.v
push.s "\\E4* H..^1. heh.../%"@32887
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
push.s "obj_ch2_scene26_slash_Step_0_gml_475_0"@32888
conv.s.v
push.s "\\EH* You think growing a few inches is gonna help!?/"@32889
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
push.s "obj_ch2_scene26_slash_Step_0_gml_477_0"@32890
conv.s.v
push.s "\\EO* Yes/%"@32891
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 149
conv.i.v
push.v self.queenwinehand
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "inout"@30031
conv.s.v
pushi.e 3
conv.i.v
pushi.e 15
conv.i.v
pushi.e 1600
conv.i.v
pushi.e 1850
conv.i.v
push.s "x"@50
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
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
pushi.e 1
conv.b.v
push.s "winelaser"@32734
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.i 96849
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
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
pushi.e 7
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e -35
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1413
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1447
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 713
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.queenwinehand
pushi.e -9
push.v [stacktop]self.y
pushi.e 149
conv.i.v
push.s "y"@52
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "inout"@30031
conv.s.v
pushi.e 3
conv.i.v
pushi.e 15
conv.i.v
pushi.e 1850
conv.i.v
pushi.e 1600
conv.i.v
push.s "x"@50
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.queenwinehand
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_645_0"@32892
conv.s.v
push.s "\\E9* Are We Cool To Take Over The World Now/%"@32893
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
push.s "obj_ch2_scene26_slash_Step_0_gml_651_0"@32894
conv.s.v
push.s "\\EA* S..^1. Susie..^1. let's just give up and.../%"@32895
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
push.s "obj_ch2_scene26_slash_Step_0_gml_659_0"@32896
conv.s.v
push.s "\\EH* Hell if we're giving up now!!/%"@32897
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
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
push.s "obj_ch2_scene26_slash_Step_0_gml_671_0"@32898
conv.s.v
push.s "\\EF* S..^1. Susie...?/%"@32899
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
push.s "obj_ch2_scene26_slash_Step_0_gml_682_0"@32900
conv.s.v
push.s "\\EQ* So what if you got another form!?/"@32901
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_683_0"@32902
conv.s.v
push.s "\\E5* We've got one too!!/%"@32903
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e -50
conv.i.v
pushi.e 35
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 10
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_700_0"@32904
conv.s.v
push.s "\\EN* Kris^1, Ralsei^1, c'mon!!/%"@32905
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
pushi.e 10
conv.i.v
call.i gml_Script_c_delaycmd4(argc=6)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 225
conv.i.v
pushi.e 1910
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 53
conv.i.v
call.i gml_Script_c_sprite(argc=1)
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
pushi.e 210
conv.i.v
pushi.e 1960
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 20
conv.i.v
pushi.e 180
conv.i.v
pushi.e 1890
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 54
conv.i.v
call.i gml_Script_c_sprite(argc=1)
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
push.s "obj_ch2_scene26_slash_Step_0_gml_740_0"@32906
conv.s.v
push.s "\\EK* Wh..^1. what are you doing!?/"@32907
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_742_0"@32908
conv.s.v
push.s "\\E1* This is our ultimate.../"@32909
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_743_0"@32910
conv.s.v
push.s "\\EK* Uh...^1. w-wait a sec^1, now that you mention it.../%"@32911
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_750_0"@32912
conv.s.v
push.s "\\EB* Oh No It Appears I Am Evenly Matched/"@32913
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_751_0"@32914
conv.s.v
push.s "\\E7* I Hope You Won't Mind If I Don't Hold Back/%"@32915
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.queenfistleft
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.i 1000100
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.queenfistleft
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 25
conv.i.v
push.v self.queenfistleft
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.queenfistleft
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.i 900000
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.queenfistleft
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 15
conv.i.v
pushi.e 25
conv.i.v
push.s "y"@52
conv.s.v
push.v self.queenfistleft
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "fist_explode"@32736
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
pushi.e 187
conv.i.v
pushi.e 15
conv.i.v
push.s "y"@52
conv.s.v
push.v self.queenfistleft
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.queenhand
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 220
conv.i.v
pushi.e 1890
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 536
conv.i.v
pushi.e 536
conv.i.v
pushi.e 30
conv.i.v
pushi.e 40
conv.i.v
pushi.e 720
conv.i.v
pushi.e 2023
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
pushi.e 536
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1521
conv.i.v
pushi.e 1521
conv.i.v
pushi.e 30
conv.i.v
pushi.e 40
conv.i.v
pushi.e 720
conv.i.v
pushi.e 1830
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
pushi.e 1521
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.d 0.5
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.ra_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 820
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 846
conv.i.v
pushi.e 846
conv.i.v
pushi.e 30
conv.i.v
pushi.e 40
conv.i.v
pushi.e 720
conv.i.v
pushi.e 1938
conv.i.v
call.i gml_Script_c_jump_sprite(argc=6)
popz.v
pushi.e 846
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.d 0.5
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.su_actor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "wallanimstart"@32739
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "rockanimstop"@32730
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "rockdogstop"@32733
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "wallcon"@32741
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_756_0"@32916
conv.s.v
push.s "\\EU* We're falling!!/"@32917
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 14
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_758_0"@32918
conv.s.v
push.s "\\EE* Any bright ideas on how we're getting out of this one?!/"@32919
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 30
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_760_0"@32920
conv.s.v
push.s "\\EU* Um^1, we could try flapping our arms...?/%"@32921
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "top"@6226
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
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_820_0"@32922
conv.s.v
push.s "* Fear not!!/"@32923
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_821_0"@32924
conv.s.v
push.s "* Your knight in glow in the dark armor is here!!/%"@32925
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "enable_face"@32751
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_823_0"@32926
conv.s.v
push.s "\\E6* Berdly!?/%"@32927
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_coaster_start"@32747
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 187
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "wallcon"@32741
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
push.v self.bg_cover
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "gigaqueen_pre.ogg"@32928
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_ch2_scene26_slash_Step_0_gml_846_0"@32929
conv.s.v
push.s "\\EG* Kris^1, Susie..^1. I can't do much for you like this.../"@32930
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
b [28]

:[27]
push.s "obj_ch2_scene26_slash_Step_0_gml_809_0"@32931
conv.s.v
push.s "\\EG* Kris^1, Susie..^1. My energy is still too low to help you fight.../"@32932
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v

:[28]
push.s "obj_ch2_scene26_slash_Step_0_gml_847_0"@32933
conv.s.v
push.s "\\E4* So I found help for you!^1! Behold!^1! Comrades!!/%"@32934
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_850_0"@32935
conv.s.v
push.s "I shalt also take Credite for This"@32936
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "left"@5994
conv.s.v
pushi.e 1
conv.i.v
push.s "rouxls"@6221
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_855_0"@32937
conv.s.v
push.s "\\m1		*On your quest against Queen,/"@32938
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_856_0"@32939
conv.s.v
push.s "\\m3		*You've made all sorts of&	buddies, right?!/"@32940
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_857_0"@32941
conv.s.v
push.s "\\m1		*Using our junk-making&	skills.../"@32942
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_858_0"@32943
conv.s.v
push.s "\\m3		*We modified everyone.../"@32944
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_859_0"@32945
conv.s.v
push.s "\\m2		*To work together!\\f0/%"@32946
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_coaster_leave"@32748
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.anime_bg
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 59
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 720
conv.i.v
pushi.e 1910
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 90000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 53
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 770
conv.i.v
pushi.e 1940
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_891_0"@32947
conv.s.v
push.s "\\E4* Kris!^1! Susie!^1! Behold!!/"@32948
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_892_0"@32949
conv.s.v
push.s "\\EL* The ULTIMATE Group Project!!/%"@32950
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
b [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 988
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.bigqueen
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 1730
conv.i.v
push.s "head_x_pos"@32952
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 464
conv.i.v
push.s "head_y_pos"@32953
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 464
conv.i.v
push.s "rem_head_y_pos"@32954
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 43
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_849_0"@32955
conv.s.v
push.s "* But Here I Am/"@32956
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_850_0_b"@32957
conv.s.v
push.s "* Still Empty Handed In My Quest/"@32958
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_851_0"@32959
conv.s.v
push.s "* Noelle Is In No Condition To Assist Me Now/"@32960
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_852_0"@32961
conv.s.v
push.s "* She Must Rest/"@32962
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_853_0"@32963
conv.s.v
push.s "* And Bird Boy/"@32964
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_854_0"@32965
conv.s.v
push.s "* I Searched For Him For Ages But/"@32966
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_855_0_b"@32967
conv.s.v
push.s "* My Sensors Cannot Detect Him Anywhere/"@32968
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_856_0_b"@32969
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1600
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 226
conv.i.v
pushi.e 1740
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1600
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 210
conv.i.v
pushi.e 1830
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1600
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 214
conv.i.v
pushi.e 1662
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 765
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_888_0"@32970
conv.s.v
push.s "\\E1* How Thoughtful You Two Have Come To Help Me/"@32971
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_889_0"@32972
conv.s.v
push.s "\\ED* Kris^1, Susie/"@32973
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_890_0"@32974
conv.s.v
push.s "\\E7* Which One Of You Wants To Be The New Knight/%"@32975
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 230
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 55
conv.i.v
pushi.e -2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_900_0"@32976
conv.s.v
push.s "\\E1* Get out of our way./"@32977
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_901_0"@32978
conv.s.v
push.s "\\E4* Noelle needs to wake up!/"@32979
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_903_0"@32980
conv.s.v
push.s "\\E1* Wake? No^1, She Has Already Awakened Too Much/"@32981
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_904_0"@32982
conv.s.v
push.s "\\ED* Let Her Close Her Eyes And Sleep Away/"@32983
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_905_0"@32984
conv.s.v
push.s "\\E0* Into A Darker^1, Darker Dream/%"@32985
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 760
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 100
conv.i.v
pushi.e 2300
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 200
add.i.v
push.v self.queenhand
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.queenhand
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.b.v
push.s "queen_afterimage"@32768
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.b.v
push.s "queen_afterimage"@32768
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
pushi.e -55
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "climb"@32986
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_start"@32755
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 814
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 844
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "queen_laugh_stop"@32756
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_995_0"@32987
conv.s.v
push.s "\\E1* Now^1, Which One Of You/"@32988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_996_0"@32989
conv.s.v
push.s "\\E6* Wants To Help Me Cover This World In Darkness!?/%"@32990
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1009_0"@32991
conv.s.v
push.s "\\EE* Queen^1, why.../"@32992
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1010_0"@32993
conv.s.v
push.s "\\EF* Why do you want to unleash the Roaring so much?!/%"@32994
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1017_0"@32995
conv.s.v
push.s "\\E1* What Is That/"@32996
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 22
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1019_0"@32997
conv.s.v
push.s "\\EM* Um..^1. the Roaring./"@32998
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1021_0"@32999
conv.s.v
push.s "\\E1* Yeah That What Is That/"@33000
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1023_0"@33001
conv.s.v
push.s "\\E5* If too much darkness is released.../"@33002
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1024_0"@33003
conv.s.v
push.s "\\E5* Titans will emerge from the fountain.../"@33004
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1025_0"@33005
conv.s.v
push.s "\\E5* And destroy everything./"@33006
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1026_0"@33007
conv.s.v
push.s "\\E7* All Darkners will turn into statues.../"@33008
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1027_0"@33009
conv.s.v
push.s "\\E7* And all Lightners will be lost in eternal chaos./%"@33010
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 296
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "surprised"@33011
conv.s.v
pushloc.v local.bigqueen
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
push.s "obj_ch2_scene26_slash_Step_0_gml_1039_0"@33012
conv.s.v
push.s "\\E8* Holy Circuits Are You Serious/"@33013
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1041_0"@33014
conv.s.v
push.s "\\EL* You REALLY didn't know that!?/%"@33015
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1047_0"@33016
conv.s.v
push.s "\\EF* No/%"@33017
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "leave"@33018
conv.s.v
pushloc.v local.bigqueen
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_stickto_stop(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 165
conv.i.v
pushi.e 2300
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 3292
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
pushi.e 90
conv.i.v
pushi.e 165
conv.i.v
pushi.e 2015
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 91
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imageindex"@9827
conv.s.v
pushi.e 91
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 10
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
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1079_0"@33019
conv.s.v
push.s "\\EG* Well My Plans Are Shot/"@33020
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1080_0"@33021
conv.s.v
push.s "\\EF* My One Idea To Help Noelle^1, Failed/"@33022
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1081_0"@33023
conv.s.v
push.s "\\ED* Go Ahead Kris^1, Seal The Fountain/"@33024
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1082_0"@33025
conv.s.v
push.s "\\EB* I Will Not Stay In Your Way Any Longer/%"@33026
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
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "make_npc_a"@32770
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[30]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [32]

:[31]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 16
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[35]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [38]

:[36]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [38]

:[37]
push.v self.skipbattle
pushi.e 1
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 0
pop.v.i self.con
pushi.e 170
pop.v.i global.plot
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 208
conv.i.v
call.i room_goto(argc=1)
popz.v

:[41]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [44]

:[42]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [44]

:[43]
push.v self.skipbattle
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 17
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 170
pop.v.i global.plot

:[47]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [67]

:[48]
pushi.e 19
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
pushi.e 981
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]
pushi.e 202
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e 730
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
pushi.e 1070
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
pushi.e 987
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]
pushi.e 986
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
pushi.e 209
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [64]

:[61]
pushi.e 209
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]

:[64]
push.v self.anime_bg
pushi.e -9
pushenv [66]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[66]
popenv [65]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231118
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 551
pop.v.i self.encounterflag
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 84
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray_set(argc=1)
popz.v

:[67]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [69]

:[68]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [70]

:[69]
push.e 0

:[70]
bf [76]

:[71]
push.v self.whiteall
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [76]

:[72]
push.v self.whiteall
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.whiteall
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LT
bf [76]

:[73]
push.v self.whiteall
pushi.e -9
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]

:[76]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [78]

:[77]
pushi.e 21
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

:[78]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [92]

:[79]
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
pushi.e 392
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushi.e 360
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
pushi.e 371
pushenv [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
popenv [84]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [89]

:[86]
pushi.e 868
pushenv [88]

:[87]
pushi.e 1
pop.v.i self.destroy

:[88]
popenv [87]

:[89]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [91]

:[90]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[91]
call.i gml_Script_scr_tempsave(argc=0)
popz.v
pushi.e 208
conv.i.v
call.i room_goto(argc=1)
popz.v

:[92]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [106]

:[93]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [104]

:[94]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [97]

:[96]
push.e 0

:[97]
bf [103]

:[98]
pushi.e 12
pop.v.i self.con
push.v self.power_up
pushi.e -4
cmp.i.v EQ
bf [103]

:[99]
pushi.e 981
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.power_up
pushi.e 986
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [103]

:[100]
pushi.e 986
pushenv [102]

:[101]
pushi.e 0
pop.v.b self.auto_scroll

:[102]
popenv [101]

:[103]
b [106]

:[104]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [106]

:[105]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 30
pop.v.i self.con
pushi.e 1
pop.v.b self.kris_active

:[106]
push.v self.make_npc_a
conv.v.b
bf [110]

:[107]
pushi.e 0
pop.v.b self.make_npc_a
pushi.e 105
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_npc
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.queen_npc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.queen_npc
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.queen_npc
pushi.e -9
pushenv [109]

:[108]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[109]
popenv [108]

:[110]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [113]

:[111]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [113]

:[112]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
b [114]

:[113]
push.e 0

:[114]
bf [126]

:[115]
push.v self.kris_active
conv.v.b
bf [126]

:[116]
push.v 82.x
pushi.e 1650
cmp.i.v LT
bf [118]

:[117]
push.v 82.x
pushi.e 8
add.i.v
pop.v.v 82.x
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1292_0_b"@33028
conv.s.v
push.s "\\E2* Kris^1, the Fountain is right over there!/%"@33029
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 1
pop.v.i self.extra_con

:[118]
push.v self.extra_con
pushi.e 0
cmp.i.v GT
bf [124]

:[119]
push.v self.extra_con
push.e 1
add.i.v
pop.v.v self.extra_con
push.v self.extra_con
pushi.e 2
cmp.i.v GT
bf [121]

:[120]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.extra_con

:[124]
push.v 82.x
pushi.e 2300
cmp.i.v GT
bf [126]

:[125]
pushi.e 0
pop.v.b self.kris_active
pushi.e 31
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
push.v self.queen_npc
pushi.e -9
pop.v.i [stacktop]self.visible

:[126]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [128]

:[127]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
b [129]

:[128]
push.e 0

:[129]
bf [131]

:[130]
pushi.e 32
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 4
pop.v.i self.qu
pushi.e 893
conv.i.v
push.v self.queen_npc
pushi.e -9
push.v [stacktop]self.y
push.v self.queen_npc
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
pushi.e 770
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
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
push.s "obj_ch2_scene26_slash_Step_0_gml_1328_0"@33030
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 200
conv.i.v
pushi.e 2105
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
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
pushi.e 10
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1349_0"@33031
conv.s.v
push.s "\\E0* ..^1. Uh^1, hey. Hey^1, wait./%"@33032
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1357_0_b"@33033
conv.s.v
push.s "\\EC* You don't have to..^1. I mean.../%"@33034
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1368_0"@33035
conv.s.v
push.s "\\ED* Uh^1, it doesn't have to be..^1. goodbye^1, you know?/"@33036
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1370_0"@33037
conv.s.v
push.s "\\EL* Error: I Have No Idea What You're Talking About/%"@33038
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
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1379_0"@33039
conv.s.v
push.s "\\E3* We..^1. have our own Dark World./"@33040
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1380_0"@33041
conv.s.v
push.s "\\EA* You can stay there^1, you know?/"@33042
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1381_0"@33043
conv.s.v
push.s "\\E1* Who knows^1, maybe someday you'll even.../%"@33044
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
push.s "obj_ch2_scene26_slash_Step_0_gml_1388_0"@33045
conv.s.v
push.s "\\E0* Get to meet Noelle again?/%"@33046
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1399_0"@33047
conv.s.v
push.s "\\E1* Really/%"@33048
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
pushi.e -6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1411_0"@33049
conv.s.v
push.s "\\EK* Uhh^1, maybe?/%"@33050
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1424_0"@33051
conv.s.v
push.s "\\EP* Fatal Exception \"Sweet\" In Oh Hell Yeah.EXE/"@33052
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1425_0"@33053
conv.s.v
push.s "\\EQ* Susie I Knew You Were A Nice Girl/%"@33054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_c_addxy(argc=2)
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
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
push.s "obj_ch2_scene26_slash_Step_0_gml_1448_0"@33055
conv.s.v
push.s "\\EG* Hey^1, uhh^1, I'm just.../%"@33056
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
pushi.e 45
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1459_0"@33057
conv.s.v
push.s "\\EH* Kris^1, go seal the fountain!/%"@33058
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1468_0"@33059
conv.s.v
push.s "\\E0* I.../%"@33060
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
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1479_0"@33061
conv.s.v
push.s "\\E1* ..^1. I'm gonna go..^1. see Noelle before you do./%"@33062
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 10
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 245
conv.i.v
pushi.e 2042
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1496_0"@33063
conv.s.v
push.s "\\EQ* Umm^1, Kris^1, I'll tell Queen about our town!/%"@33064
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene26_slash_Step_0_gml_1509_0"@33065
conv.s.v
push.s "\\EN* Kris I Look Forward To Being Your Wacky Roommate/%"@33066
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "make_npc_b"@32771
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[131]
push.v self.make_npc_b
conv.v.b
bf [135]

:[132]
pushi.e 0
pop.v.b self.make_npc_b
call.i gml_Script_scr_losechar(argc=0)
popz.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.queen_npc
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.queen_npc
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.queen_npc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.queen_npc
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 1
push.v self.queen_npc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ralsei_npc
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.ralsei_npc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.ralsei_npc
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.ralsei_npc
pushi.e -9
pushenv [134]

:[133]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[134]
popenv [133]

:[135]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [137]

:[136]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
pushi.e 99
pop.v.i self.con
pushi.e 170
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[140]
push.v self.rudebuster
conv.v.b
bf [142]

:[141]
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
push.v self.qu_actor
push.v self.rudebusteranim
pushi.e -9
pop.v.v [stacktop]self.target

:[142]
push.v self.winelaser
conv.v.b
bf [144]

:[143]
pushi.e 984
conv.i.v
push.v self.queenwinehand
pushi.e -9
push.v [stacktop]self.y
push.v self.queenwinehand
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self._winelaser
pushi.e 0
pop.v.b self.winelaser
pushi.e -10
push.v self._winelaser
pushi.e -9
pop.v.i [stacktop]self.timer
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self._winelaser
pushi.e -9
pop.v.v [stacktop]self.noelle_x

:[144]
push.v self.shakeloop
conv.v.b
bf [147]

:[145]
push.v self.shakecon
conv.v.b
bf [147]

:[146]
pushi.e 0
pop.v.b self.shakecon
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[147]
push.v self.fist_explode
conv.v.b
bf [149]

:[148]
pushi.e 0
pop.v.b self.fist_explode
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[149]
push.v self.platform_fall
conv.v.b
bf [156]

:[150]
push.v self.platform_timer
push.e 1
add.i.v
pop.v.v self.platform_timer
push.v self.platform_timer
pushi.e 15
cmp.i.v GT
bf [152]

:[151]
pushi.e 0
pop.v.b self.platform_fall
b [156]

:[152]
push.v self.platform_y
pushi.e 30
add.i.v
pop.v.v self.platform_y
push.v self.platform_y
push.s "TILES"@32763
conv.s.v
call.i layer_y(argc=2)
popz.v
pushi.e 987
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [156]

:[153]
pushi.e 987
pushenv [155]

:[154]
push.v self.looping_coaster_top
pushi.e -9
dup.i 4
push.v [stacktop]self.y_pos
pushi.e 30
add.i.v
pop.i.v [stacktop]self.y_pos
push.v self.looping_coaster
pushi.e -9
dup.i 4
push.v [stacktop]self.y_pos
pushi.e 30
add.i.v
pop.i.v [stacktop]self.y_pos

:[155]
popenv [154]

:[156]
push.v self.hand_shake
conv.v.b
bf [162]

:[157]
pushi.e 0
pop.v.b self.hand_shake
pushi.e 0
pop.v.i local.i

:[158]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [162]

:[159]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.hand_platform
pushi.e -9
pushenv [161]

:[160]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[161]
popenv [160]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [158]

:[162]
push.v self.hand_catch
conv.v.b
bf [172]

:[163]
pushi.e 0
pop.v.i local.i

:[164]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [172]

:[165]
pushloc.v local.i
pop.v.v local._i
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.hand_platform
pushi.e -9
pushenv [171]

:[166]
push.d 0.125
conv.d.v
pushi.e 70
pushloc.v local._i
pushi.e 100
mul.i.v
add.v.i
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
pushloc.v local._i
pushi.e 2
cmp.i.v EQ
bf [168]

:[167]
push.v self.y
pushi.e 270
cmp.i.v GTE
b [169]

:[168]
push.e 0

:[169]
bf [171]

:[170]
pushi.e 0
pop.v.b self.hand_catch

:[171]
popenv [166]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [164]

:[172]
push.v self.cityscape_fall
conv.v.b
bf [177]

:[173]
pushi.e 0
pop.v.b self.cityscape_fall
pushi.e 986
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [177]

:[174]
pushi.e 986
pushenv [176]

:[175]
pushi.e 1
pop.v.b self.auto_scroll_y

:[176]
popenv [175]

:[177]
push.v self.disable_face
conv.v.b
bf [179]

:[178]
pushi.e 0
pop.v.b self.disable_face
pushi.e 0
pop.v.i global.fc

:[179]
push.v self.enable_face
conv.v.b
bf [181]

:[180]
pushi.e 0
pop.v.b self.enable_face
pushi.e 1
pop.v.i global.fc

:[181]
push.v self.set_queen_voice
conv.v.b
bf [183]

:[182]
pushi.e 0
pop.v.b self.set_queen_voice
pushi.e 62
pop.v.i global.typer

:[183]
push.v self.rockanim
conv.v.b
bf [185]

:[184]
call.i gml_Script_camerax(argc=0)
push.s "BG_rocks"@33072
conv.s.v
call.i layer_x(argc=2)
popz.v
pushi.e 979
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -5
conv.i.v
push.s "BG_rocks"@33072
conv.s.v
call.i layer_vspeed(argc=2)
popz.v
call.i gml_Script_camerax(argc=0)
push.s "BG_Rocks_Small"@33073
conv.s.v
call.i layer_x(argc=2)
popz.v
pushi.e 979
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 420
add.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
pop.v.v local.rockstart
pushi.e 1
pushloc.v local.rockstart
pushi.e -9
pop.v.b [stacktop]self.smallrocks
pushi.e -2
conv.i.v
push.s "BG_Rocks_Small"@33073
conv.s.v
call.i layer_vspeed(argc=2)
popz.v
pushi.e 0
pop.v.b self.rockanim

:[185]
push.v self.rockdog
conv.v.b
bf [187]

:[186]
pushi.e 0
pop.v.b self.rockdog
pushi.e 980
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 6
add.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 545
add.i.v
pushi.e 12
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rockdogobj

:[187]
push.v self.rockdogstop
conv.v.b
bf [189]

:[188]
pushi.e 0
pop.v.b self.rockdogstop
push.v self.rockdogobj
call.i instance_destroy(argc=1)
popz.v

:[189]
push.v self.rockanimstop
conv.v.b
bf [191]

:[190]
pushi.e 0
pop.v.b self.rockanimstop
pushi.e 0
conv.i.v
push.s "BG_rocks"@33072
conv.s.v
call.i layer_vspeed(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "BG_rocks"@33072
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "BG_Rocks_Small"@33073
conv.s.v
call.i layer_vspeed(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "BG_Rocks_Small"@33073
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[191]
push.v self.queen_afterimage
conv.v.b
bf [196]

:[192]
push.v self.qu_actor
pushi.e -4
cmp.i.v NEQ
bf [196]

:[193]
push.v self.qu_actor
pushi.e -9
pushenv [195]

:[194]
call.i gml_Script_scr_afterimagefast(argc=0)
popz.v

:[195]
popenv [194]

:[196]
push.v self.wallanimstart
conv.v.b
bf [211]

:[197]
push.v self.wallcon
pushi.e 1
cmp.i.v EQ
bf [202]

:[198]
pushi.e 99
pop.v.i self.wallcon
pushi.e 987
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [202]

:[199]
pushi.e 987
pushenv [201]

:[200]
pushi.e 1
pop.v.i self.wall_con

:[201]
popenv [200]

:[202]
push.v self.wallcon
pushi.e 2
cmp.i.v EQ
bf [211]

:[203]
pushi.e 99
pop.v.i self.wallcon
pushi.e 0
pop.v.b self.wallanimstart
pushi.e 987
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [207]

:[204]
pushi.e 987
pushenv [206]

:[205]
pushi.e 3
pop.v.i self.wall_con

:[206]
popenv [205]

:[207]
pushi.e 986
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [211]

:[208]
pushi.e 986
pushenv [210]

:[209]
pushi.e 1
pop.v.b self.auto_scroll

:[210]
popenv [209]

:[211]
push.v self.berdly_coaster_start
conv.v.b
bf [213]

:[212]
pushi.e 0
pop.v.b self.berdly_coaster_start
pushi.e 1069
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_coaster

:[213]
push.v self.berdly_coaster_leave
conv.v.b
bf [217]

:[214]
pushi.e 0
pop.v.b self.berdly_coaster_leave
push.v self.berdly_coaster
pushi.e -9
pushenv [216]

:[215]
pushi.e 4
pop.v.i self.con

:[216]
popenv [215]

:[217]
push.v self.laser_con
pushi.e 0
cmp.i.v GTE
bf [250]

:[218]
push.v self.laser_con
pushi.e 0
cmp.i.v EQ
bf [222]

:[219]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [221]

:[220]
pushi.e 1
pop.v.b self.show_laser_outline

:[221]
popenv [220]

:[222]
push.v self.laser_con
pushi.e 1
cmp.i.v EQ
bf [226]

:[223]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [225]

:[224]
pushi.e 1
pop.v.b self.show_hands
pushi.e 1
pop.v.b self.hand_both_reveal

:[225]
popenv [224]

:[226]
push.v self.laser_con
pushi.e 2
cmp.i.v EQ
bf [230]

:[227]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [229]

:[228]
pushi.e 1
pop.v.b self.knife_reveal

:[229]
popenv [228]

:[230]
push.v self.laser_con
pushi.e 3
cmp.i.v EQ
bf [234]

:[231]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [233]

:[232]
pushi.e 1
pop.v.b self.knife_stab

:[233]
popenv [232]

:[234]
push.v self.laser_con
pushi.e 5
cmp.i.v EQ
bf [238]

:[235]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [237]

:[236]
pushi.e 1
pop.v.b self.fade_away

:[237]
popenv [236]

:[238]
push.v self.laser_con
pushi.e 6
cmp.i.v EQ
bf [242]

:[239]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [241]

:[240]
pushi.e 1
pop.v.b self.show_lightners

:[241]
popenv [240]

:[242]
push.v self.laser_con
pushi.e 7
cmp.i.v EQ
bf [246]

:[243]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [245]

:[244]
pushi.e 1
pop.v.b self.show_mini_fountains

:[245]
popenv [244]

:[246]
push.v self.laser_con
pushi.e 8
cmp.i.v EQ
bf [250]

:[247]
pushi.e 99
pop.v.i self.laser_con
pushi.e 986
pushenv [249]

:[248]
pushi.e 1
pop.v.b self.merge_lightners

:[249]
popenv [248]

:[250]
push.v self.release_queen
conv.v.b
bf [255]

:[251]
pushi.e 0
pop.v.b self.release_queen
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [255]

:[252]
pushi.e 988
pushenv [254]

:[253]
pushi.e 1
pop.v.b self.release

:[254]
popenv [253]

:[255]
push.v self.queen_laugh_start
conv.v.b
bf [260]

:[256]
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [260]

:[257]
pushi.e 988
pushenv [259]

:[258]
pushi.e 1
pop.v.b self.laugh

:[259]
popenv [258]

:[260]
push.v self.queen_laugh_stop
conv.v.b
bf [265]

:[261]
pushi.e 0
pop.v.b self.queen_laugh_stop
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [265]

:[262]
pushi.e 988
pushenv [264]

:[263]
pushi.e 0
pop.v.b self.laugh

:[264]
popenv [263]

:[265]
push.v self.hand_release
conv.v.b
bf [272]

:[266]
pushi.e 0
pop.v.b self.hand_release
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [272]

:[267]
pushi.e 990
pushenv [271]

:[268]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [270]

:[269]
pushi.e 1
pop.v.b self.release
b [271]

:[270]
pushi.e 1
pop.v.b self.release_normal

:[271]
popenv [268]

:[272]
push.v self.hand_leave
conv.v.b
bf [277]

:[273]
pushi.e 0
pop.v.b self.hand_leave
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [277]

:[274]
pushi.e 990
pushenv [276]

:[275]
pushi.e 1
pop.v.b self.leave

:[276]
popenv [275]

:[277]
push.v self.su_struggle
conv.v.b
bf [282]

:[278]
pushi.e 0
pop.v.b self.su_struggle
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [282]

:[279]
pushi.e 990
pushenv [281]

:[280]
pushi.e 1
pop.v.b self.su_struggle

:[281]
popenv [280]

:[282]
push.v self.su_shocked
conv.v.b
bf [287]

:[283]
pushi.e 0
pop.v.b self.su_shocked
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [287]

:[284]
pushi.e 990
pushenv [286]

:[285]
pushi.e 1
pop.v.b self.su_shocked

:[286]
popenv [285]

:[287]
push.v self.su_look_left
conv.v.b
bf [292]

:[288]
pushi.e 0
pop.v.b self.su_look_left
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [292]

:[289]
pushi.e 990
pushenv [291]

:[290]
pushi.e 1
pop.v.b self.su_look_left

:[291]
popenv [290]

:[292]
push.v self.su_look_right
conv.v.b
bf [297]

:[293]
pushi.e 0
pop.v.b self.su_look_right
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [297]

:[294]
pushi.e 990
pushenv [296]

:[295]
pushi.e 1
pop.v.b self.su_look_right

:[296]
popenv [295]

:[297]
push.v self.su_grin_1
conv.v.b
bf [302]

:[298]
pushi.e 0
pop.v.b self.su_grin_1
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [302]

:[299]
pushi.e 990
pushenv [301]

:[300]
pushi.e 1
pop.v.b self.su_grin_1

:[301]
popenv [300]

:[302]
push.v self.su_grin_2
conv.v.b
bf [307]

:[303]
pushi.e 0
pop.v.b self.su_grin_2
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [307]

:[304]
pushi.e 990
pushenv [306]

:[305]
pushi.e 1
pop.v.b self.su_grin_2

:[306]
popenv [305]

:[307]
push.v self.su_squint_1
conv.v.b
bf [312]

:[308]
pushi.e 0
pop.v.b self.su_squint_1
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [312]

:[309]
pushi.e 990
pushenv [311]

:[310]
pushi.e 1
pop.v.b self.su_squint_1

:[311]
popenv [310]

:[312]
push.v self.su_squint_2
conv.v.b
bf [317]

:[313]
pushi.e 0
pop.v.b self.su_squint_2
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [317]

:[314]
pushi.e 990
pushenv [316]

:[315]
pushi.e 1
pop.v.b self.su_squint_2

:[316]
popenv [315]

:[317]
push.v self.su_concerned
conv.v.b
bf [322]

:[318]
pushi.e 0
pop.v.b self.su_concerned
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [322]

:[319]
pushi.e 990
pushenv [321]

:[320]
pushi.e 1
pop.v.b self.su_concerned

:[321]
popenv [320]

:[322]
push.v self.ra_struggle
conv.v.b
bf [327]

:[323]
pushi.e 0
pop.v.b self.ra_struggle
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [327]

:[324]
pushi.e 990
pushenv [326]

:[325]
pushi.e 1
pop.v.b self.ra_struggle

:[326]
popenv [325]

:[327]
push.v self.ra_huh
conv.v.b
bf [332]

:[328]
pushi.e 0
pop.v.b self.ra_huh
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [332]

:[329]
pushi.e 990
pushenv [331]

:[330]
pushi.e 1
pop.v.b self.ra_huh

:[331]
popenv [330]

:[332]
push.v self.ra_look
conv.v.b
bf [337]

:[333]
pushi.e 0
pop.v.b self.ra_look
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [337]

:[334]
pushi.e 990
pushenv [336]

:[335]
pushi.e 1
pop.v.b self.ra_look

:[336]
popenv [335]

:[337]
push.v self.ra_smile
conv.v.b
bf [342]

:[338]
pushi.e 0
pop.v.b self.ra_smile
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [342]

:[339]
pushi.e 990
pushenv [341]

:[340]
pushi.e 1
pop.v.b self.ra_smile

:[341]
popenv [340]

:[342]
push.v self.ra_scared
conv.v.b
bf [347]

:[343]
pushi.e 0
pop.v.b self.ra_scared
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [347]

:[344]
pushi.e 990
pushenv [346]

:[345]
pushi.e 1
pop.v.b self.ra_scared

:[346]
popenv [345]

:[347]
push.v self.ra_stern
conv.v.b
bf [352]

:[348]
pushi.e 0
pop.v.b self.ra_stern
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [352]

:[349]
pushi.e 990
pushenv [351]

:[350]
pushi.e 1
pop.v.b self.ra_stern

:[351]
popenv [350]

:[352]
push.v self.ra_mu
conv.v.b
bf [357]

:[353]
pushi.e 0
pop.v.b self.ra_mu
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [357]

:[354]
pushi.e 990
pushenv [356]

:[355]
pushi.e 1
pop.v.b self.ra_mu

:[356]
popenv [355]

:[357]
push.v self.ra_shake
conv.v.b
bf [362]

:[358]
pushi.e 0
pop.v.b self.ra_shake
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [362]

:[359]
pushi.e 990
pushenv [361]

:[360]
pushi.e 1
pop.v.b self.ra_shake

:[361]
popenv [360]

:[362]
push.v self.shake_hand
conv.v.b
bf [367]

:[363]
pushi.e 0
pop.v.b self.shake_hand
pushi.e 990
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [367]

:[364]
pushi.e 990
pushenv [366]

:[365]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[366]
popenv [365]

:[367]
push.v self.queen_laugh_start
conv.v.b
bf [372]

:[368]
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [372]

:[369]
pushi.e 988
pushenv [371]

:[370]
pushi.e 1
pop.v.b self.laugh

:[371]
popenv [370]

:[372]
push.v self.queen_laugh_stop
conv.v.b
bf [377]

:[373]
pushi.e 0
pop.v.b self.queen_laugh_stop
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [377]

:[374]
pushi.e 988
pushenv [376]

:[375]
pushi.e 0
pop.v.b self.laugh

:[376]
popenv [375]

:[377]
push.v self.queen_surprised
conv.v.b
bf [382]

:[378]
pushi.e 0
pop.v.b self.queen_surprised
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [382]

:[379]
pushi.e 988
pushenv [381]

:[380]
pushi.e 1
pop.v.b self.surprised

:[381]
popenv [380]

:[382]
push.v self.queen_leave
conv.v.b
bf [387]

:[383]
pushi.e 0
pop.v.b self.queen_leave
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [387]

:[384]
pushi.e 988
pushenv [386]

:[385]
pushi.e 1
pop.v.b self.leave

:[386]
popenv [385]

:[387]
push.v self.queen_leave_fast
conv.v.b
bf [392]

:[388]
pushi.e 0
pop.v.b self.queen_leave_fast
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [392]

:[389]
pushi.e 988
pushenv [391]

:[390]
pushi.e 1
pop.v.b self.leave_fast

:[391]
popenv [390]

:[392]
push.v self.queen_release_fast
conv.v.b
bf [end]

:[393]
pushi.e 0
pop.v.b self.queen_release_fast
pushi.e 988
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[394]
pushi.e 988
pushenv [396]

:[395]
pushi.e 1
pop.v.b self.release_fast

:[396]
popenv [395]

:[end]