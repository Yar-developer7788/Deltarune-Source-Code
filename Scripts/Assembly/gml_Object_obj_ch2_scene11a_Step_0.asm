.localvar 2 arguments
.localvar 6706 d 16174
.localvar 107 i 16179
.localvar 19799 finish 16181

:[0]
push.v 82.x
pushi.e 440
cmp.i.v GT
bf [3]

:[1]
push.v 82.y
pushi.e 300
cmp.i.v LT
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
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object
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
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 697
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.qu_flame
pushi.e 765
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
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
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 935
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
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
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 729
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capsule2
pushi.e 0
push.v self.capsule2
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 935
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 649
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.capsule3
pushi.e 0
push.v self.capsule3
pushi.e -9
pop.v.i [stacktop]self.visible

:[6]
push.v self.auto_text
conv.v.b
bf [8]

:[7]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [59]

:[10]
push.v self.pan_timer
push.e 1
add.i.v
pop.v.v self.pan_timer
push.v self.noise_con
pushi.e -2
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pop.v.i self.noise_con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[12]
push.v self.noise_con
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[14]
push.v self.noise_con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 3
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 186
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[16]
push.v self.noise_con
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
pushi.e 5
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[18]
push.v self.noise_con
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
pushi.e 7
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[20]
push.v self.noise_con
pushi.e 8
cmp.i.v EQ
bf [22]

:[21]
pushi.e 9
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 67
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[22]
push.v self.noise_con
pushi.e 10
cmp.i.v EQ
bf [24]

:[23]
pushi.e 11
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[24]
push.v self.noise_con
pushi.e 12
cmp.i.v EQ
bf [26]

:[25]
pushi.e 13
pop.v.i self.noise_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 178
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[26]
push.v self.noise_con
pushi.e 14
cmp.i.v EQ
bf [28]

:[27]
pushi.e 99
pop.v.i self.noise_con
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[28]
push.v self.auto_con
pushi.e -1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.auto_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 5010
push.v self.coaster_entry
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 5000
push.v self.coaster_entry_hood
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.coaster_kris
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.visible

:[30]
push.v self.auto_con
pushi.e 1
cmp.i.v EQ
bf [33]

:[31]
pushi.e 2
pop.v.i self.auto_con
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.shortened
conv.v.b
not.b
bf [33]

:[32]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_131_0"@30871
conv.s.v
push.s "\\E6* Hey^1, what the hell are these things?/%"@30872
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[33]
push.v self.auto_con
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [41]

:[37]
pushi.e 4
pop.v.i self.auto_con
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 953
pushenv [39]

:[38]
pushi.e 1
pop.v.b self.fountain_active

:[39]
popenv [38]
push.v self.shortened
conv.v.b
not.b
bf [41]

:[40]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_142_0"@30874
conv.s.v
push.s "\\EJ* Hmm..^1. Looks like if we ride them.../%"@30875
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[41]
push.v self.auto_con
pushi.e 5
cmp.i.v EQ
bf [43]

:[42]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [44]

:[43]
push.e 0

:[44]
bf [47]

:[45]
pushi.e 6
pop.v.i self.auto_con
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.shortened
conv.v.b
not.b
bf [47]

:[46]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_153_0"@30876
conv.s.v
push.s "\\E2* They might bring us over to the Fountain!/%"@30877
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[47]
push.v self.auto_con
pushi.e 7
cmp.i.v EQ
bf [49]

:[48]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [53]

:[51]
pushi.e 8
pop.v.i self.auto_con
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.shortened
conv.v.b
not.b
bf [53]

:[52]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_166_0"@30878
conv.s.v
push.s "\\E7* Really?^1! Then let's get on!!/%"@30879
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[53]
push.v self.auto_con
pushi.e 9
cmp.i.v EQ
bf [56]

:[54]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [56]

:[55]
push.v self.pan_timer
pushi.e 350
cmp.i.v GTE
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 99
pop.v.i self.auto_con
pushi.e 0
pop.v.b self.auto_text
pushi.e 0
pop.v.i self.pan_timer
pushi.e 0
pop.v.i self.customcon
pushi.e 2
pop.v.i self.con

:[59]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 99
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
sub.i.v
pushi.e 478
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 478
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 37
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 478
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
pushi.e 26
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 47
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 350
conv.i.v
pushi.e 0
conv.i.v
pushi.e 650
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "auto_text"@30847
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[61]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
push.v self.customcon
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [68]

:[65]
pushi.e 3
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 1220
conv.i.v
push.v self.coaster_kris
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1220
conv.i.v
push.v self.coaster_susie
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1220
conv.i.v
push.v self.coaster_ralsei
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.08
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.09
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "looptrack"@30861
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "loopcity"@30860
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [67]

:[66]
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i self.tempcon
pushi.e 1849
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -52
conv.i.v
push.s "character_offset_x"@24235
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 1650
conv.i.v
pushi.e 1800
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
b [68]

:[67]
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 1790
conv.i.v
call.i gml_Script_c_setxy(argc=2)
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
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1585
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "queen.ogg"@20919
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_256_0"@30880
conv.s.v
push.s "\\E6* Enough You Foolish Children/"@30881
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_257_0"@30882
conv.s.v
push.s "\\E1* I Have Been Merciful To You Thus Far But Now Is Time For:/"@30883
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_258_0"@30884
conv.s.v
push.s "\\E7* Your Unwillful Imprisonment (Capture)/"@30885
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_259_0"@30886
conv.s.v
push.s "\\E6* Drop The Capturing Capsules/%"@30887
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1110
conv.i.v
push.s "x"@50
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1330
conv.i.v
push.s "x"@50
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1465
conv.i.v
push.s "x"@50
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "con"@829
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1881
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 300
add.i.v
pushi.e -200
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule1
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 300
add.i.v
pushi.e -200
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule2
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 300
add.i.v
pushi.e -200
conv.i.v
push.s "y"@52
conv.s.v
push.v self.capsule3
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 75
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1886
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 785
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_298_0"@30888
conv.s.v
push.s "\\EM* ..^1. err^1, you missed./"@30889
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
push.s "obj_ch2_scene11a_slash_Step_0_gml_300_0"@30890
conv.s.v
push.s "\\E1* That Was Not A Miss It Was A Tactical Calibration/"@30891
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_302_0"@30892
conv.s.v
push.s "\\EC* ..^1. so^1, uh^1, are you gonna try it again?/%"@30893
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 795
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 760
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
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_317_0"@30894
conv.s.v
push.s "\\EN* No I Only Have Like 4 Cages/%"@30895
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_331_0"@30896
conv.s.v
push.s "\\E1* OK Wait/"@30897
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_332_0"@30898
conv.s.v
push.s "\\ED* I Have A Small Plot Twist For You/"@30899
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_333_0"@30900
conv.s.v
push.s "\\E6* Come Forward My..^1. Peon/%"@30901
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
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
pushi.e 1585
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 845
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 215
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 1490
conv.i.v
pushi.e 1890
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 722
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_356_0"@30902
conv.s.v
push.s "\\E4* U..^1. um..^1. s-sorry^1, I just couldn't say no./"@30903
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
push.s "obj_ch2_scene11a_slash_Step_0_gml_358_0"@30904
conv.s.v
push.s "\\E6* Noelle!?/%"@30905
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 215
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_362_0"@30906
conv.s.v
push.s "\\EM* H..^1. hi^1, Susie. Umm^1, how are you?/"@30907
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
pushi.e 825
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_364_0"@30908
conv.s.v
push.s "\\EC* Umm^1, okay^1, I guess?/"@30909
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "M"@9486
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_366_0"@30910
conv.s.v
push.s "\\EM* Your..^1. um..^1. roller coaster is^1, um..^1. I like it!/"@30911
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_368_0"@30912
conv.s.v
push.s "\\EK* Uhh..^1. yours too?/"@30913
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "M"@9486
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_370_0"@30914
conv.s.v
push.s "\\EM* Th..^1. thanks!/"@30915
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_372_0"@30916
conv.s.v
push.s "\\EK* .../%"@30310
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_383_0"@30917
conv.s.v
push.s "\\ED* Okay This Isn't Working Bring In The Next Guy/%"@30918
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 684
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 1490
conv.i.v
pushi.e 1890
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 717
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_noelle
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[68]
push.v self.con
pushi.e 3
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
pushi.e 4
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.coaster_noelle
pushi.e -9
pushenv [74]

:[73]
pushi.e 2
pop.v.i self.gravity
pushi.e 70
pop.v.i self.gravity_direction

:[74]
popenv [73]
pushi.e 0
pop.v.i self.customcon

:[75]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [77]

:[76]
pushi.e 6
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 997
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1510
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_430_0"@30919
conv.s.v
push.s "\\E2* Fear not^1, my beloved Noelle!!/"@30920
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_431_0"@30921
conv.s.v
push.s "\\E6* This valiant warrior of brave intelligence/"@30922
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_432_0"@30923
conv.s.v
push.s "\\EF* Will be your knight in glow in the dark armor!/%"@30924
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 45
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 796
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "berdly_theme.ogg"@30925
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_443_0"@30926
conv.s.v
push.s "\\E5* Berdly!? You asked BERDLY to be on your team!?/"@30927
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
push.s "obj_ch2_scene11a_slash_Step_0_gml_445_0"@30928
conv.s.v
push.s "\\E1* (I Did Not Ask Him I Did Not Ask Him I Did Not Ask Him)/%"@30929
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 684
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 825
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_452_0"@30930
conv.s.v
push.s "\\E1* That's LORD Berdly to you simpletons!!/%"@30931
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 695
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_458_0"@30932
conv.s.v
push.s "\\EE* And soon..^1. SUPER Lord Berdly!/"@30933
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_460_0"@30934
conv.s.v
push.s "\\EC* ..^1. the hell does that mean?/"@30935
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "M"@9486
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_462_0"@30936
conv.s.v
push.s "\\EM* (I Have No Damn Clue Just Go With It)/%"@30937
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 674
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_469_0"@30938
conv.s.v
push.s "\\EE* You see^1, thanks to our WONDROUS Queen.../%"@30939
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 684
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_476_0"@30940
conv.s.v
push.s "\\E2* WE..^1. will soon RULE the WORLD!/%"@30941
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 668
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_483_0"@30942
conv.s.v
push.s "\\EJ* And turn this Land of Fools..^1. into a Smartopia./"@30943
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_484_0"@30944
conv.s.v
push.s "\\EK* A true Scientocracy^1, where the Geniuses of the world^1,/"@30945
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_485_0"@30946
conv.s.v
push.s "\\EE* Can bathe freely in pools of fresh fruit and ambrosia./%"@30947
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 162
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_491_0"@30948
conv.s.v
push.s "\\E7* No longer held back by protozoans like YOU!/%"@30949
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 684
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_498_0"@30950
conv.s.v
push.s "\\E1* And the key to that? Is US. Noelle and I./"@30951
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_499_0"@30952
conv.s.v
push.s "\\EE* Our power..^1. The \"Light Nerd's\" power.../%"@30953
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 785
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
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
push.s "obj_ch2_scene11a_slash_Step_0_gml_507_0"@30954
conv.s.v
push.s "\\EK* You mean..^1. \"Lightners?\"/%"@30955
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 795
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 674
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_518_0"@30956
conv.s.v
push.s "\\EI* Um^1, NO. Queen said \"Light Nerds.\"/%"@30957
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
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 760
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
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_534_0"@30958
conv.s.v
push.s "\\EO* I Actually Did/%"@30959
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 670
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_551_0"@30960
conv.s.v
push.s "\\EE* Berdly^1, Queen's just manipulating you!!/%"@30961
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 684
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_560_0"@30962
conv.s.v
push.s "\\E6* Heh..^1. that's what she SAID you'd say to me!/%"@30963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 670
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 760
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
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_579_0"@30964
conv.s.v
push.s "\\EO* I Actually Did/%"@30959
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 684
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1109
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[77]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [79]

:[78]
pushi.e 11
pop.v.i self.con
pushi.e 0
conv.i.v
push.s "siner"@6406
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 665
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -52
conv.i.v
push.s "character_offset_x"@24235
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -25
conv.i.v
push.s "character_offset_y"@24236
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 28
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1849
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "character_offset_y"@24236
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_616_0"@30965
conv.s.v
push.s "\\E7* Allow me to assist you!!/%"@30966
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
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 1650
conv.i.v
pushi.e 1490
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[79]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [81]

:[80]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [88]

:[83]
pushi.e 12
pop.v.i self.con
pushi.e -5
pushi.e 28
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 28
pop.v.v [array]self.tempflag

:[85]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 493
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 868
pushenv [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
popenv [86]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[88]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [90]

:[89]
pushi.e 357
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [91]

:[90]
push.e 0

:[91]
bf [101]

:[92]
push.v self.coaster_berdly
pushi.e -9
pushenv [94]

:[93]
pushi.e 1
pop.v.b self.visible

:[94]
popenv [93]
push.v self.coaster_kris
pushi.e -9
pushenv [96]

:[95]
pushi.e 1
pop.v.b self.visible

:[96]
popenv [95]
push.v self.coaster_susie
pushi.e -9
pushenv [98]

:[97]
pushi.e 1
pop.v.b self.visible

:[98]
popenv [97]
push.v self.coaster_ralsei
pushi.e -9
pushenv [100]

:[99]
pushi.e 1
pop.v.b self.visible

:[100]
popenv [99]
pushi.e 1
pop.v.i self.smokecon
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 61
pop.v.v [array]self.flag
pushi.e 14
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[101]
push.v self.smokecon
pushi.e 1
cmp.i.v EQ
bf [106]

:[102]
push.v self.smoketimer
push.e 1
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 15
cmp.i.v GT
bf [104]

:[103]
pushi.e 0
pop.v.i self.smoketimer
pushi.e 508
conv.i.v
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.depth

:[104]
pushi.e 189
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [106]

:[105]
pushi.e 0
pop.v.i self.smokecon

:[106]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [108]

:[107]
pushi.e 15
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1854
push.v self.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 5
push.v self.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.character_offset_x
pushi.e 3
push.v self.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.character_offset_y
pushi.e 0
conv.b.v
push.s "animate"@9828
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.1
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.08
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.09
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.09
conv.d.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_672_0"@30967
conv.s.v
push.s "\\E3* Wh..^1. what!? That's not fair!!!/"@30968
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_673_0"@30969
conv.s.v
push.s "\\E3* M..^1. My Queen..^1. Save me...!!!/%"@30970
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "explosion"@20234
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
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
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.y
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_berdly
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.y
pushi.e 150
sub.i.v
push.v self.coaster_berdly
pushi.e -9
push.v [stacktop]self.y
push.s "y"@52
conv.s.v
push.v self.be_actor
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[108]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [110]

:[109]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushi.e 17
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.be_actor
pushi.e -9
pushenv [114]

:[113]
pushi.e 16
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity

:[114]
popenv [113]
pushi.e 0
pop.v.i self.customcon

:[115]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [117]

:[116]
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 1790
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
pushi.e 10
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1585
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_733_0"@30971
conv.s.v
push.s "\\ED* In A Minute Dear/"@30972
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_734_0"@30973
conv.s.v
push.s "\\E1* Hello Everyone I Have Some News Updates/"@30974
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_735_0"@30975
conv.s.v
push.s "\\E1* You See/"@30976
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_736_0"@30977
conv.s.v
push.s "\\EA* This \"Roller\"^1, \"Coaster\"/"@30978
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_737_0"@30979
conv.s.v
push.s "\\E9* It's Not Actually/"@30980
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_738_0"@30981
conv.s.v
push.s "\\E1* \"Finished\"^1, Yet/%"@30982
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 45
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene11a_slash_Step_0_gml_744_0"@30983
conv.s.v
push.s "\\EH* WHAT DOES THAT MEAN!?!?/"@30984
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
push.s "obj_ch2_scene11a_slash_Step_0_gml_746_0"@30985
conv.s.v
push.s "\\E1* \"Pain\"/%"@30986
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
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
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.qu_flame
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 764
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 154
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 997
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1510
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_entry
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_entry_hood
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "stoplooptrack"@30863
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 1650
conv.i.v
pushi.e 1220
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 1650
conv.i.v
pushi.e 1220
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 1650
conv.i.v
pushi.e 1220
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 0
conv.i.v
push.s "siner_add0"@18089
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 20
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
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 67
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 80
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
pushi.e 1
conv.b.v
push.s "hide_border"@30864
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 120
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[117]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [119]

:[118]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 60
pop.v.i self.con
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 64
pop.v.i global.plot
pushi.e 120
conv.i.v
call.i room_goto(argc=1)
popz.v

:[122]
push.v self.loopcity
conv.v.b
bf [127]

:[123]
pushi.e 0
pop.v.b self.loopcity
pushi.e 953
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [127]

:[124]
pushi.e 953
pushenv [126]

:[125]
pushi.e 0
pop.v.b self.parallax
pushi.e 1
pop.v.b self.looping

:[126]
popenv [125]

:[127]
push.v self.looptrack
conv.v.b
bf [134]

:[128]
pushi.e 0
pop.v.b self.looptrack
pushi.e 953
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [134]

:[129]
pushi.e 953
pushenv [133]

:[130]
pushi.e -15
push.v self.coaster_bg_1
pushi.e -9
pop.v.i [stacktop]self.x_speed
push.d -0.5
push.v self.cityscape_bg_1
pushi.e -9
pop.v.d [stacktop]self.x_speed
pushi.e -1
push.v self.cityscape_bg_2
pushi.e -9
pop.v.i [stacktop]self.x_speed
pushi.e 0
pop.v.i local.i

:[131]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [133]

:[132]
push.i 234193
setowner.e
pushi.e -15
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.x_speed
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [131]

:[133]
popenv [130]

:[134]
push.v self.stoplooptrack
conv.v.b
bf [141]

:[135]
pushi.e 0
pop.v.b self.stoplooptrack
pushi.e 953
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [141]

:[136]
pushi.e 953
pushenv [140]

:[137]
pushi.e 0
push.v self.coaster_bg_1
pushi.e -9
pop.v.i [stacktop]self.x_speed
pushi.e 0
pop.v.i local.i

:[138]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [140]

:[139]
push.i 234193
setowner.e
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.x_speed
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [138]

:[140]
popenv [137]

:[141]
push.v self.explosion
pushi.e 0
cmp.i.v GT
bf [end]

:[142]
push.v self.explodetimer
push.e 1
add.i.v
pop.v.v self.explodetimer
push.v self.explodetimer
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 129
conv.i.v
pushi.e 155
conv.i.v
pushi.e 1650
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion_marker
pushi.e 2275
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 2.65
push.v self.explosion_marker
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 2.65
push.v self.explosion_marker
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v self.be_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
add.i.v
push.v self.explosion_marker
pushi.e -9
pop.v.v [stacktop]self.depth
b [end]

:[144]
pushi.e 0
pop.v.b local.finish
push.v self.explosion_marker
pushi.e -9
pushenv [150]

:[145]
push.v self.sprite_index
pushi.e 2275
cmp.i.v EQ
bf [147]

:[146]
push.v self.image_index
pushi.e 16
cmp.i.v GTE
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
pushi.e 1
pop.v.b local.finish
call.i instance_destroy(argc=0)
popz.v

:[150]
popenv [145]
pushloc.v local.finish
conv.v.b
bf [end]

:[151]
pushi.e 0
pop.v.i self.explosion
pushi.e 0
pop.v.i self.explodetimer

:[end]