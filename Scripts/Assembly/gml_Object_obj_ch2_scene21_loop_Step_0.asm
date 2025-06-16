.localvar 2 arguments
.localvar 15416 shadow 16459
.localvar 32128 rouxls_ypos 16462
.localvar 32196 battle_end 16468
.localvar 32293 swanboat_npc 16469
.localvar 32035 collider_right 16470
.localvar 19799 finish 16471

:[0]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [end]

:[1]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 540
cmp.i.v LT
bf [3]

:[2]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
push.v self.swan_shadow
pushi.e -9
pop.v.v [stacktop]self.x
b [9]

:[3]
push.v self.swan_shadow
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.swan_shadow
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.2
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.actor_shadow
push.d 0.2
add.d.v
call.i clamp(argc=3)
pop.v.v self.actor_shadow
push.v self.actor_shadow
pop.v.v local.shadow
pushi.e 893
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [9]

:[6]
pushi.e 893
pushenv [8]

:[7]
pushloc.v local.shadow
push.i 16777215
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_hsv(argc=3)
call.i merge_color(argc=3)
pop.v.v self.color_blend

:[8]
popenv [7]

:[9]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [13]

:[10]
pushi.e 0
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
pushi.e 893
pushenv [12]

:[11]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.color_blend

:[12]
popenv [11]

:[13]
push.v self.adjust_actors
conv.v.b
bf [20]

:[14]
pushi.e 893
pushenv [19]

:[15]
push.v self.name
push.s "kris"@68
cmp.s.v EQ
bf [17]

:[16]
push.v 124.x
pushi.e 88
add.i.v
pop.v.v self.x
push.v 124.y
pushi.e 20
add.i.v
pop.v.v self.y

:[17]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [19]

:[18]
push.v 124.x
pushi.e 45
add.i.v
pop.v.v self.x
push.v 124.y
pushi.e 8
add.i.v
pop.v.v self.y

:[19]
popenv [15]

:[20]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 240
cmp.i.v GT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing

:[25]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [31]

:[26]
pushi.e 10
pop.v.i self.con
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_auto_talk
pushi.e 971
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[27]
pushi.e 971
pushenv [29]

:[28]
pushi.e 1
pop.v.b self.auto_scroll_start

:[29]
popenv [28]

:[30]
pushi.e 1
pop.v.i global.interact

:[31]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [33]

:[32]
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_130_0"@32037
conv.s.v
push.s "\\EB* Kris..^1. hey^1, Kris./%"@32038
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1111
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[33]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [38]

:[34]
pushi.e 25
pop.v.i self.con
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_149_0"@32039
conv.s.v
push.s "\\ED* .../%"@31177
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_157_0"@32040
conv.s.v
push.s "\\E1* I'm happy hearing you say that^1, Kris.../%"@32041
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[36]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_169_0"@32042
conv.s.v
push.s "\\ED* Err^1, then^1, I^1, err -/%"@32043
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_177_0"@32044
conv.s.v
push.s "\\EU* Ah^1, s-sarcastic^1! I was just being sarcastic!/"@32045
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_178_0"@32046
conv.s.v
push.s "\\EQ* Haha^1, sorry about that!/%"@32047
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[38]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [58]

:[39]
pushi.e 25
pop.v.i self.con
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_193_0"@32048
conv.s.v
push.s "\\E2* Ah^1, just as I expected^1, haha./"@32049
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_194_0"@32050
conv.s.v
push.s "\\E1* I feel warm..^1. thinking about how you care about her./%"@32051
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_201_0"@32052
conv.s.v
push.s "\\E2* Kris^1, you can tell me anything anytime^1, OK?/"@32053
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_202_0"@32054
conv.s.v
push.s "\\E2* (...)/"@32055
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_203_0"@32056
conv.s.v
push.s "\\E2* (..^1. and they stopped talking...)/%"@32057
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[44]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_210_0"@32058
conv.s.v
push.s "\\E2* Ah^1, just as I expected^1, haha./"@32049
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_211_0"@32059
conv.s.v
push.s "\\E3* She's a nice girl^1, isn't she?/%"@32060
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_219_0"@32061
conv.s.v
push.s "\\EI* Even though she doesn't understand it^1,/"@32062
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_220_0"@32063
conv.s.v
push.s "\\E0* It seems she's already strong at this world's magic./"@32064
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_221_0"@32065
conv.s.v
push.s "\\E2* I believe she can control the \"Ice\" element./"@32066
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_222_0"@32067
conv.s.v
push.s "\\E0* ..^1. Kris^1, if you ask her nicely^1,/"@32068
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_223_0"@32069
conv.s.v
push.s "\\EJ* Maybe she'll make you a popsicle^1! Haha!/%"@32070
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[49]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 4
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_240_0"@32071
conv.s.v
push.s "\\EQ* That's^1, um...^1. That's right./"@32072
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_241_0"@32073
conv.s.v
push.s "\\EM* This ride^1, um..^1. it sort of looks like.../"@32074
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_242_0"@32075
conv.s.v
push.s "\\EJ* A bit bird-like?/"@32076
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_243_0"@32077
conv.s.v
push.s "\\EK* ... umm^1, what part of him are you thinking about?/"@32078
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_244_0"@32079
conv.s.v
push.s "\\EK* .../"@5000
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_245_0"@32080
conv.s.v
push.s "\\EK* (I suppose I don't mind no answer^, either...)/%"@32081
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[54]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_255_0"@32082
conv.s.v
push.s "\\ED* H..^1. huh!?/%"@32083
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
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_261_0"@32084
conv.s.v
push.s "\\E1* I mean^1, I'm thinking of you too^1, of course.../%"@32085
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_267_0"@32086
conv.s.v
push.s "\\ED* I mean^1, er -- you're right in front of me^1, but.../%"@32087
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[56]
pushglb.v global.choice
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_278_0"@32088
conv.s.v
push.s "\\E1* Oh^1, err^1, sorry^1! Did I say something strange?/%"@32089
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_285_0"@32090
conv.s.v
push.s "\\E2* I'm happy you and Susie are friends^1, Kris./"@32091
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_286_0"@32092
conv.s.v
push.s "\\E3* She's a nice girl^1, isn't she...?/%"@32093
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[58]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [60]

:[59]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 26
pop.v.i self.con
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
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_299_0"@32094
conv.s.v
push.s "\\EB* When we first met^1, I.../"@32095
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_300_0"@32096
conv.s.v
push.s "\\EQ* I was so nervous about first impressions./"@32097
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_301_0"@32098
conv.s.v
push.s "\\E1* I even hid my face so you wouldn't see.../"@32099
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_302_0"@32100
conv.s.v
push.s "\\EQ* \"How do I even be a friend...?\"/"@32101
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_303_0"@32102
conv.s.v
push.s "\\EJ* All I have to do is be nice..^1. is what I thought./"@32103
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_304_0"@32104
conv.s.v
push.s "\\EB* But I'm starting to realize^1, being friends.../"@32105
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_305_0"@32106
conv.s.v
push.s "\\E2* Is more than that^1, isn't it?/"@32107
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_306_0"@32108
conv.s.v
push.s "\\EJ* Susie..^1. sometimes she isn't nice at all!/"@32109
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_307_0"@32110
conv.s.v
push.s "\\EK* She's selfish^1, she's rude^1, she's sarcastic.../"@32111
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_308_0"@32112
conv.s.v
push.s "\\E1* But.../"@32113
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_309_0"@32114
conv.s.v
push.s "\\E2* Isn't it wonderful that she's..^1. her?/"@32115
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_310_0"@32116
conv.s.v
push.s "\\EI* Is what I..^1. started thinking^1, today./%"@32117
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1115
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[63]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [65]

:[64]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 29
pop.v.i self.con
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_322_0"@32118
conv.s.v
push.s "\\EI* .../"@32119
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_323_0"@32120
conv.s.v
push.s "\\EQ* I just wonder what..^1. being \"Ralsei-like\" even is...?/"@32121
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_324_0"@32122
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_325_0"@32123
conv.s.v
push.s "\\E2* Sorry^1! Haha^1, I got off-track./"@32124
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_326_0"@32125
conv.s.v
push.s "\\EQ* Let's just enjoy the ride^1, Kris. Haha./%"@32126
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[68]
push.v self.con
pushi.e 29
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
bf [76]

:[72]
pushi.e 200
pop.v.i self.con
pushi.e 971
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [76]

:[73]
pushi.e 971
pushenv [75]

:[74]
pushi.e 1
pop.v.b self.auto_scroll_stop

:[75]
popenv [74]

:[76]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [78]

:[77]
push.v 971.auto_scroll_stop
pushi.e 0
cmp.b.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [85]

:[80]
pushi.e 300
pop.v.i self.con
pushi.e 0
pop.v.b self.inside_tunnel
pushi.e 1
pop.v.b self.remove_shadow
pushi.e 1
pop.v.b self.shift_islands
push.v self.swanboat
pushi.e -9
pushenv [82]

:[81]
pushi.e 245
conv.i.v
pushi.e 110
conv.i.v
pushi.e 775
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[82]
popenv [81]
push.v self.swan_shadow
pushi.e -9
pushenv [84]

:[83]
pushi.e 245
conv.i.v
pushi.e 110
conv.i.v
pushi.e 775
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[84]
popenv [83]

:[85]
push.v self.shift_islands
conv.v.b
bf [89]

:[86]
push.v self.shift_islands_timer
push.e 1
add.i.v
pop.v.v self.shift_islands_timer
push.v self.shift_islands_timer
pushi.e 245
cmp.i.v GTE
bf [89]

:[87]
pushi.e 0
pop.v.b self.shift_islands
pushi.e 0
pop.v.b self.shiftacid
push.v self.rouxls_island
conv.v.b
not.b
bf [89]

:[88]
pushi.e 30
pop.v.i self.con

:[89]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [101]

:[90]
pushi.e 31
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 326
pop.v.v [array]self.flag
pushi.e 1
conv.b.v
push.s "TILES_Mansion_Hide_1"@32007
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.b.v
push.s "TILES_Mansion_Hide_2"@32008
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
pop.v.b self.rouxls_island
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_auto_talk
pushi.e 0
pop.v.b self.loopacid
pushi.e 730
conv.i.v
pushi.e 159
conv.i.v
pushi.e 1285
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.thrash
pushi.e 3
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.s
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.drawfeet
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.animate
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 835000
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.b [stacktop]self.draw_puddle
pushi.e 129
conv.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.y
pushi.e 74
add.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puddle
pushi.e 2070
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.thrash
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
pushi.e 2
conv.i.v
b [93]

:[92]
pushi.e 0
conv.i.v

:[93]
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 0
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [95]

:[94]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.y
pushi.e 45
add.i.v
b [96]

:[95]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.y
pushi.e 19
add.i.v

:[96]
pop.v.v local.rouxls_ypos
pushi.e -5
pushi.e 221
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.y
pushi.e 29
add.i.v
pop.v.v local.rouxls_ypos

:[98]
pushi.e 1047
conv.i.v
pushloc.v local.rouxls_ypos
push.v self.thrash
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rouxls
pushi.e 0
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.boatfront
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 830000
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 207
pushenv [100]

:[99]
push.i 850000
pop.v.i self.depth

:[100]
popenv [99]

:[101]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [103]

:[102]
pushi.e 32
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_435_0"@32130
conv.s.v
push.s "\\EJ* W..^1. wow^1, Kris^1! Look at all those houses!/"@32131
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_436_0"@32132
conv.s.v
push.s "\\E2* I wonder what'll happen if we change their color!/%"@32133
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
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
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[103]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [105]

:[104]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushi.e 33
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 42
pop.v.i global.typer
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_454_0"@32134
conv.s.v
push.s "* Ge hahahaha..^1. Thoust WORMS reallyst thoughtst.../"@32135
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_455_0"@32136
conv.s.v
push.s "* Thoust had seeneth the Lastest of Me???/%"@32137
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[108]
push.v self.release_rouxls
conv.v.b
bf [116]

:[109]
push.v self.rouxls_appear_timer
push.e 1
add.i.v
pop.v.v self.rouxls_appear_timer
push.v self.rouxls_appear
pushi.e -1
cmp.i.v EQ
bf [111]

:[110]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 43
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 96
conv.i.v
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rouxls_appear
pushi.e 0
push.v self.rouxls_appear
pushi.e -9
pop.v.i [stacktop]self.depth

:[111]
push.v self.rouxls_appear_timer
pushi.e 60
cmp.i.v GTE
bf [116]

:[112]
pushi.e 0
pop.v.b self.release_rouxls
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [114]

:[113]
push.i 231459
setowner.e
push.s "ruruskaado.ogg"@20924
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[114]
push.v self.rouxls_appear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [116]

:[115]
push.v self.rouxls_appear
call.i instance_destroy(argc=1)
popz.v

:[116]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [118]

:[117]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bt [121]

:[120]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [122]

:[121]
push.e 1

:[122]
bf [127]

:[123]
pushi.e 35
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
push.d 0.75
conv.d.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "release_rouxls"@32022
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.boatfront
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.puddle
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_511_0"@32138
conv.s.v
push.s "\\E3* Chips Ahoyeth^1, Landlubbers!/"@32139
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_512_0"@32140
conv.s.v
push.s "\\E2* Arrrrrr-t thou ready-eth to visiteth Davith Jones' Lockre???/"@32141
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 22
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_514_0"@32142
conv.s.v
push.s "\\EM* Could..^1. Could you NOT speak with more than one accent?/"@32143
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_516_0"@32144
conv.s.v
push.s "\\E1* Yeahth^1, alright./"@32145
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 12
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_518_0"@32146
conv.s.v
push.s "\\EC* Oh^1, Mr. Rouxls^1! I just remembered^1! Lancer^1! He's not well!/"@32147
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_520_0"@32148
conv.s.v
push.s "\\E6* O dear. Didst thou^1, erm^1, tryeth Burpinge him???/"@32149
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_521_0"@32150
conv.s.v
push.s "\\E1* Perhapsth give him a sip of Medieval Ginger Ale??/"@32151
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_522_0"@32152
conv.s.v
push.s "\\E0* ..^1. Waite^1! I hath NOT time to spare on such Frivolitese!/"@32153
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_523_0"@32154
conv.s.v
push.s "\\E1* I must Conquere this Islande and defeast Thou!/"@32155
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_524_0"@32156
conv.s.v
push.s "\\E4* Then^1, giftingeth her a succulent Island Presente^1,/"@32157
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_525_0"@32158
conv.s.v
push.s "\\E3* The Beautious Queene shall reward ME -/"@32159
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_526_0"@32160
conv.s.v
push.s "\\E5* By Makingeth Me Her Left-Hand-Man!!/"@32161
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_527_0"@32162
conv.s.v
push.s "\\E6* Hahaha!^1! Me!^1! The ULTIMATE Minion!!/"@32163
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_528_0"@32164
conv.s.v
push.s "\\E2* Now^1, beholdeth^1! The forme of thoun Destroyere!/%"@32165
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "fallnow"@32166
conv.s.v
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.boatfront
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.thrash
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_538_0"@32167
conv.s.v
push.s "\\E2* ..^1. whatevereth this Thing is!/%"@32168
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
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_546_0"@32169
conv.s.v
push.s "\\EU* Th..^1. This again!?/%"@32170
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
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_553_0"@32171
conv.s.v
push.s "\\E3* Haha^1, squirming with Jealousy at my Battle Caravane!?/"@32172
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_554_0"@32173
conv.s.v
push.s "\\E4* 'Tis an Effigie of an Ancient God of Combate^1,/"@32174
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_555_0"@32175
conv.s.v
push.s "\\E6* I rescuedeth it from The King's Trash Heape^1,/"@32176
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_556_0"@32177
conv.s.v
push.s "\\E1* And fixedeth it up in this Worldes' Scrap Shoppe!!/"@32178
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.v self.duckmode
conv.v.b
not.b
bf [125]

:[124]
pushi.e 22
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_561_0"@32179
conv.s.v
push.s "\\EM* It's^1, um..^1. It's actually a rejected^1, uh^1, design we made.../"@32180
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_563_0"@32181
conv.s.v
push.s "\\E3* Ha ha^1, and Soone^1, THOU shalt tasteth Rejection --/"@32182
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_564_0"@32183
conv.s.v
push.s "\\E1* Firsthandeth^1, in the form of varieth Bulletst!/%"@32184
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [126]

:[125]
pushi.e 22
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_569_0"@32185
conv.s.v
push.s "\\EM* Um..^1. that's..^1. just a duck./"@32186
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_571_0"@32187
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_572_0"@32188
conv.s.v
push.s "\\E6* I knoweth what it art^1, Ruffiane!!/"@32189
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_573_0"@32190
conv.s.v
push.s "\\E1* Go forth!^1! My Squeakie Duckie!!/%"@32191
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[126]
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 165
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1166
conv.i.v
push.s "sprite_index"@273
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.x
pushi.e 34
sub.i.v
push.s "x"@50
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.rouxls
pushi.e -9
push.v [stacktop]self.y
pushi.e 126
sub.i.v
push.s "y"@52
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 140
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1421
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "swan_swap"@32032
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[127]
push.v self.swan_swap
pushi.e 0
cmp.i.v GT
bf [131]

:[128]
push.v self.swan_swap
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 1183
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.swan_cover
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.image_index
push.v self.swan_cover
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.swan_cover
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.swan_cover
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.depth
pop.v.v self.swan_depth
pushi.e 2
pop.v.i self.swan_swap

:[130]
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.swanboat
pushi.e -9
pop.v.v [stacktop]self.depth

:[131]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [133]

:[132]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [138]

:[135]
pushi.e 39
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 232336
setowner.e
push.s "rouxls_battle.ogg"@20927
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 1
pop.v.i global.specialbattle
pushi.e 546
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 63
pop.v.i global.encounterno
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 63
conv.i.v
call.i gml_Script_scr_encountersetup(argc=1)
popz.v
pushi.e 357
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battle
pushi.e 1235
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlehey
pushi.e 2381
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.battle_swan
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.image_index
push.v self.battle_swan
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.battle_swan
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v 372.depth
pushi.e 1
add.i.v
push.v self.battle_swan
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.swan_swap
push.v 374.depth
pushi.e 10
sub.i.v
push.v self.swan_cover
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.swan_depth
push.v self.swanboat
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 893
pushenv [137]

:[136]
pushi.e 0
pop.v.i self.visible

:[137]
popenv [136]

:[138]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [140]

:[139]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [141]

:[140]
push.e 0

:[141]
bf [149]

:[142]
pushi.e 0
pop.v.b local.battle_end
pushi.e 357
pushenv [145]

:[143]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
pop.v.b local.battle_end

:[145]
popenv [143]
pushloc.v local.battle_end
conv.v.b
bf [149]

:[146]
push.v self.battlehey
pushi.e -9
pushenv [148]

:[147]
call.i instance_destroy(argc=0)
popz.v

:[148]
popenv [147]
pushi.e 41
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

:[149]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [170]

:[150]
pushi.e 43
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.customcon
push.v 372.x
pop.v.v 82.x
push.v 372.y
pop.v.v 82.y
push.v 372.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 372.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y
push.v 372.sprite_index
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 208
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.rouxls
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 34
add.i.v
pop.i.v [stacktop]self.x
push.v self.rouxls
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 126
add.i.v
pop.i.v [stacktop]self.y
push.v self.battle_swan
call.i instance_destroy(argc=1)
popz.v
push.v self.swan_cover
call.i instance_destroy(argc=1)
popz.v
pushi.e 893
pushenv [152]

:[151]
pushi.e 1
pop.v.i self.visible

:[152]
popenv [151]
pushi.e 730
pushenv [156]

:[153]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [155]

:[154]
call.i instance_destroy(argc=0)
popz.v
b [156]

:[155]
pushi.e 1
pop.v.i self.visible

:[156]
popenv [153]
pushi.e 129
pushenv [162]

:[157]
push.v self.sprite_index
pushi.e 2070
cmp.i.v EQ
bf [159]

:[158]
push.v self.visible
pushi.e 1
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [162]

:[161]
call.i instance_destroy(argc=0)
popz.v

:[162]
popenv [157]
pushi.e 1
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.visible
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
pushenv [164]

:[163]
call.i instance_destroy(argc=0)
popz.v

:[164]
popenv [163]
pushi.e 360
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
pushi.e 371
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [170]

:[169]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[170]
push.v self.rouxls_power_up
conv.v.b
bf [173]

:[171]
pushi.e 0
pop.v.b self.rouxls_power_up
pushi.e 42
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [173]

:[172]
push.v self.rouxls
pushi.e 42
conv.i.v
call.i gml_Script_scr_following_afterimage(argc=2)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth

:[173]
push.v self.rouxls_power_up_cancel
conv.v.b
bf [176]

:[174]
pushi.e 0
pop.v.b self.rouxls_power_up_cancel
pushi.e 42
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [176]

:[175]
pushi.e 42
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[176]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [178]

:[177]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [179]

:[178]
push.e 0

:[179]
bf [192]

:[180]
pushi.e 49
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
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_763_0"@32197
conv.s.v
push.s "\\E4* So thou hath beateneth The Crappeth out of Me./"@32198
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_764_0"@32199
conv.s.v
push.s "\\E3* I supposest that means thou thinkest thoust hath Won?/"@32200
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_766_0"@32201
conv.s.v
push.s "\\EK* Umm..^1. morally^1, no^1.&* Physically..^1. yes./"@32202
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_768_0"@32203
conv.s.v
push.s "\\E1* Well shivereth my timbereth^1, you little Bimbo!/"@32204
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_769_0"@32205
conv.s.v
push.s "\\E2* For in a battle of TRUE Powere^1, Rouxls..^1. shall RULE!/%"@32206
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [191]

:[182]
pushi.e -5
pushi.e 435
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [190]

:[183]
pushi.e -5
pushi.e 435
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [185]

:[184]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_730_0"@32207
conv.s.v
push.s "\\E2* Ah...^1. Ahh^1, ha ha ha...!/"@32208
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_731_0"@32209
conv.s.v
push.s "\\E6* So thou hast triumphed.../"@32210
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
b [186]

:[185]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_749_0"@32211
conv.s.v
push.s "\\E2* Ah...^1. Ahh^1, ha ha ha...!/"@32208
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_750_0"@32212
conv.s.v
push.s "\\E0* So we hath an EQUAL number of houses!/"@32213
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_751_0"@32214
conv.s.v
push.s "\\E4* I suppose thou THINKETH^1, that MEANSETH.../"@32215
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_752_0"@32216
conv.s.v
push.s "\\E2* Thou have matched my Abilitiese!/"@32217
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_754_0"@32218
conv.s.v
push.s "\\EK* (What abilities?)/"@32219
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v

:[186]
push.v self.duckmode
conv.v.b
not.b
bf [188]

:[187]
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_736_0"@32220
conv.s.v
push.s "\\E5* NOT!^1! You have only seen but One-Percentile of my Weapon's Abilities!!/%"@32221
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [189]

:[188]
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_740_0"@32222
conv.s.v
push.s "\\E5* NOT!^1! That plump duck art not but The Appetizemente!/"@32223
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_741_0"@32224
conv.s.v
push.s "\\E1* Watch!^1! Watch your growing and huge Destructione!!!/%"@32225
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[189]
b [191]

:[190]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_774_0"@32226
conv.s.v
push.s "\\E2* Finally^1, I've WON!^1! GEHAHAHAHA!!/"@32227
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_775_0"@32228
conv.s.v
push.s "\\E5* How doth it feeleth^1, WORMS!?/"@32229
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_776_0"@32230
conv.s.v
push.s "\\E3* To be bestedeth^1, by the Beste?/"@32231
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_777_0"@32232
conv.s.v
push.s "\\E4* To be laid LOWE^1, by the Duke of Puzzles?!/"@32233
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_778_0_b"@32234
conv.s.v
push.s "\\E5* Ahaha..^1. HAHAHAHAHA!!!/%"@32235
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_787_0"@32236
conv.s.v
push.s "\\EK* Er^1, um.../"@32237
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_788_0"@32238
conv.s.v
push.s "\\EJ* So^1, um^1, what happens now?/%"@32239
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "pause"@9836
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_796_0"@32240
conv.s.v
push.s "\\E1* What?/"@4007
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_798_0"@32241
conv.s.v
push.s "\\EJ* Umm^1, you had more houses..^1. so.../"@32242
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_799_0_b"@32243
conv.s.v
push.s "\\EK* What..^1. does that even do?/"@32244
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_801_0"@32245
conv.s.v
push.s "\\E3* Hahaha^1! Gladeth thou asked!/%"@32246
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_807_0"@32247
conv.s.v
push.s "\\EX* You don't have any plan^1, do you./%"@32248
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "resume"@9837
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_813_0_b"@32249
conv.s.v
push.s "\\E1* SHUTTETH YON UPPETH!/"@32250
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_814_0"@32251
conv.s.v
push.s "\\E5* And BEHOLD..^1. My TRUETH POWER!!!/%"@32252
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[191]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "rouxls_power_up"@32025
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 131
conv.i.v
push.s "loopsfx"@9844
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "loopsfxvolume"@9849
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 30
conv.i.v
push.d 0.7
conv.d.v
push.s "loopsfxvolume"@9849
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "loopsfxpitch"@9846
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 30
conv.i.v
push.d 0.9
conv.d.v
push.s "loopsfxpitchtime"@9847
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_757_0"@32253
conv.s.v
push.s "\\E2* Geh ha ha ha ha!!!/"@32254
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_758_0"@32255
conv.s.v
push.s "\\E1* Beholde^1, Worms...!!/"@32256
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_759_0"@32257
conv.s.v
push.s "\\E5* The REALE Power of Rouxls Kaard...!!!/%"@32258
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "fallnow"@32166
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "stop"@9833
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "loopsfxstop"@9848
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "rouxls_power_up_cancel"@32026
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "con"@829
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_778_0"@32259
conv.s.v
push.s "\\E5* GOD/%"@32260
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
conv.i.v
push.s "con"@829
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "timer"@5833
conv.s.v
push.v self.rouxls
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "explosion"@20234
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "flyaway"@26876
conv.s.v
push.v self.simcity
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_799_0"@32261
conv.s.v
push.s "\\E5* DAMMIT/%"@32262
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 20
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_811_0"@32263
conv.s.v
push.s "\\EK* Ah.../"@32264
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_812_0"@32265
conv.s.v
push.s "\\EM* That's right^1, Rouxls isn't compatible with this world^1, either./"@32266
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_813_0"@32267
conv.s.v
push.s "\\EJ* Well^1, let's go^1, Kris./%"@32268
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 100
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.thrash
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 110
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.puddle
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
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
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[192]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [194]

:[193]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [195]

:[194]
push.e 0

:[195]
bf [199]

:[196]
pushi.e 51
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 10000
push.v self.rouxls
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.b self.adjust_actors
push.v self.swanboat
pushi.e -9
pushenv [198]

:[197]
pushi.e 20
conv.i.v
pushi.e 100
conv.i.v
pushi.e 800
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[198]
popenv [197]

:[199]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [201]

:[200]
pushi.e 53
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move

:[201]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [203]

:[202]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 1244
cmp.i.v GTE
b [204]

:[203]
push.e 0

:[204]
bf [208]

:[205]
pushi.e 55
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
push.v self.swanboat
pushi.e -9
pushenv [207]

:[206]
pushi.e 20
conv.i.v
pushi.e 140
conv.i.v
pushi.e 1284
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[207]
popenv [206]

:[208]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [210]

:[209]
pushi.e 57
pop.v.i self.con
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move

:[210]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [212]

:[211]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 1745
cmp.i.v GTE
b [213]

:[212]
push.e 0

:[213]
bf [217]

:[214]
pushi.e 99
pop.v.i self.con
pushi.e 1
pop.v.b self.take_photo
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 99
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 276
pushenv [216]

:[215]
pushi.e 0
pop.v.i self.visible

:[216]
popenv [215]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[217]
push.v self.take_photo
conv.v.b
bf [233]

:[218]
push.v self.photocon
pushi.e 0
cmp.i.v EQ
bf [220]

:[219]
pushi.e -1
pop.v.i self.photocon
pushi.e 1117
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[220]
push.v self.photocon
pushi.e 1
cmp.i.v EQ
bf [222]

:[221]
pushi.e 10
pop.v.i self.photocon
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 325
pop.v.v [array]self.flag
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_879_0"@32269
conv.s.v
push.s "\\EQ* That's OK^1, Kris^1! Let's keep going./%"@32270
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[222]
push.v self.photocon
pushi.e 2
cmp.i.v EQ
bf [224]

:[223]
pushi.e 10
pop.v.i self.photocon
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 325
pop.v.v [array]self.flag
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 874
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
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 798
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_905_0"@32271
conv.s.v
push.s "\\ED* K..^1. Kris!?/%"@32272
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_camerax(argc=0)
push.s "x"@50
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "y"@52
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
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
pushi.e 204
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
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
pushi.e 60
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_927_0"@32273
conv.s.v
push.s "\\ED* D..^1. did it r-really take a picture of that!?/"@32274
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_928_0"@32275
conv.s.v
push.s "\\E1* Umm^1, l..^1. let's keep going!/%"@32276
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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

:[224]
push.v self.photocon
pushi.e 3
cmp.i.v EQ
bf [226]

:[225]
pushi.e 10
pop.v.i self.photocon
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 325
pop.v.v [array]self.flag
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 875
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
pushi.e 802
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
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
call.i gml_Script_camerax(argc=0)
push.s "x"@50
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "y"@52
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
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
pushi.e 204
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
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
pushi.e 60
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
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_975_0"@32277
conv.s.v
push.s "\\E2* I bet it must have been a wonderful picture.../"@32278
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_976_0"@32279
conv.s.v
push.s "\\EU* What? ... We were facing the wrong way?!/%"@32280
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[226]
push.v self.photocon
pushi.e 4
cmp.i.v EQ
bf [228]

:[227]
pushi.e 10
pop.v.i self.photocon
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 325
pop.v.v [array]self.flag
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
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 876
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1510
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_1005_0"@32281
conv.s.v
push.s "\\EL* K-Kris!?/%"@32282
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
call.i gml_Script_camerax(argc=0)
push.s "x"@50
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "y"@52
conv.s.v
push.v self.whiteall
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
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
pushi.e 204
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
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
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_1029_0"@32283
conv.s.v
push.s "\\EU* D..^1. did it r-really take a picture of that!?/%"@32284
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_1038_0"@32285
conv.s.v
push.s "\\EK* Umm^1, l..^1. let's keep going!/%"@32286
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[228]
push.v self.photocon
pushi.e 10
cmp.i.v EQ
bf [230]

:[229]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [231]

:[230]
push.e 0

:[231]
bf [233]

:[232]
pushi.e 0
pop.v.b self.take_photo
pushi.e -1
pop.v.i self.photocon
pushi.e 58
pop.v.i self.con
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[233]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [235]

:[234]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [236]

:[235]
push.e 0

:[236]
bf [238]

:[237]
pushi.e 59
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.con

:[238]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [240]

:[239]
pushi.e 61
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_1212_0"@32287
conv.s.v
push.s "\\E1* ART THOU JUST GOING TO LEAVETH ME HERE!?/"@32288
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_1213_0"@32289
conv.s.v
push.s "\\E6* THOU AREN'T EVEN GOING TO SHOWETH ME THE PICTURE!?/%"@32290
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[240]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.pause_x_move
conv.v.b
not.b
bf [242]

:[241]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 2280
cmp.i.v GTE
b [243]

:[242]
push.e 0

:[243]
bf [247]

:[244]
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
push.v self.swanboat
pushi.e -9
pushenv [246]

:[245]
pushi.e 80
conv.i.v
pushi.e 175
conv.i.v
pushi.e 2525
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[246]
popenv [245]

:[247]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [250]

:[248]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 2525
cmp.i.v GTE
bf [250]

:[249]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [251]

:[250]
push.e 0

:[251]
bf [253]

:[252]
pushi.e 63
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 326
pop.v.v [array]self.flag
pushi.e 99
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1
push.v self.swanboat
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 10
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
pushi.e 40
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_loop_slash_Step_0_gml_1106_0"@32291
conv.s.v
push.s "\\E2* ..^1. that was a nice boatride^1, wasn't it^1, Kris?/%"@32292
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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

:[253]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [255]

:[254]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [256]

:[255]
push.e 0

:[256]
bf [266]

:[257]
pushi.e 65
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 150
pop.v.i global.plot
pushi.e 99
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 0
push.v self.swanboat
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 82
pushenv [259]

:[258]
pushi.e 0
pop.v.i self.fun

:[259]
popenv [258]
pushi.e 276
pushenv [261]

:[260]
pushi.e 1
pop.v.i self.follow
pushi.e 0
pop.v.i self.fun

:[261]
popenv [260]
pushi.e 110
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swanboat_npc
pushi.e 2381
pushloc.v local.swanboat_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.15
pushloc.v local.swanboat_npc
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushloc.v local.swanboat_npc
pushi.e -9
pushenv [263]

:[262]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[263]
popenv [262]
push.v self.swanboat
pushi.e -9
pushenv [265]

:[264]
call.i instance_destroy(argc=0)
popz.v

:[265]
popenv [264]
pushi.e 68
conv.i.v
pushi.e 278
conv.i.v
pushi.e 2670
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.collider_right
pushi.e 10
pushloc.v local.collider_right
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[266]
push.v self.remove_island_obj
conv.v.b
bf [268]

:[267]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [269]

:[268]
push.e 0

:[269]
bf [273]

:[270]
pushi.e 0
pop.v.b self.remove_island_obj
pushi.e 1
pop.v.b self.set_flags_complete
pushi.e 947
pushenv [272]

:[271]
call.i instance_destroy(argc=0)
popz.v

:[272]
popenv [271]

:[273]
push.v self.explosion
conv.v.b
bf [290]

:[274]
push.v self.explodetimer
push.e 1
add.i.v
pop.v.v self.explodetimer
push.v self.explodetimer
pushi.e 1
cmp.i.v EQ
bf [280]

:[275]
pushi.e 129
conv.i.v
pushi.e 170
conv.i.v
pushi.e 1090
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
pushenv [277]

:[276]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[277]
popenv [276]
pushi.e 1
pop.v.b self.finish_thrash
push.v self.thrash
pushi.e -9
pushenv [279]

:[278]
pushi.e 90
pop.v.i self.direction
pushi.e 10
pop.v.i self.speed
push.d 0.1
pop.v.d self.gravity
pushi.e 1
pop.v.b self.launch
pushi.e 1
pop.v.b self.drawfeet

:[279]
popenv [278]
b [288]

:[280]
pushi.e 0
pop.v.b local.finish
pushi.e 129
pushenv [286]

:[281]
push.v self.sprite_index
pushi.e 2275
cmp.i.v EQ
bf [283]

:[282]
push.v self.image_index
pushi.e 16
cmp.i.v GTE
b [284]

:[283]
push.e 0

:[284]
bf [286]

:[285]
pushi.e 1
pop.v.b local.finish
call.i instance_destroy(argc=0)
popz.v

:[286]
popenv [281]
pushloc.v local.finish
conv.v.b
bf [288]

:[287]
pushi.e 0
pop.v.b self.explosion
pushi.e 0
pop.v.i self.explodetimer

:[288]
push.v self.explodetimer
pushi.e 5
cmp.i.v EQ
bf [290]

:[289]
pushi.e 0
conv.b.v
push.s "TILES_Island_Path"@32294
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.b.v
push.s "TILES_Island_Path_Animated"@32295
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[290]
push.v self.finish_thrash
conv.v.b
bf [end]

:[291]
push.v self.thrash
pushi.e -9
pushenv [293]

:[292]
push.v self.xx
pushi.e 15
add.i.v
pop.v.v self.xx
pushi.e 1
pop.v.b self.launch

:[293]
popenv [292]
push.v self.puddle
pushi.e -9
pushenv [295]

:[294]
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x

:[295]
popenv [294]
push.v self.thrash
pushi.e -9
push.v [stacktop]self.xx
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
pushi.e 200
add.i.v
cmp.v.v GT
bf [end]

:[296]
pushi.e 0
pop.v.b self.finish_thrash
push.v self.thrash
pushi.e -9
pushenv [298]

:[297]
call.i instance_destroy(argc=0)
popz.v

:[298]
popenv [297]
push.v self.puddle
pushi.e -9
pushenv [300]

:[299]
call.i instance_destroy(argc=0)
popz.v

:[300]
popenv [299]

:[end]