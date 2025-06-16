.localvar 2 arguments
.localvar 15466 xpos 17251
.localvar 14550 ypos 17252
.localvar 19799 finish 17254

:[0]
pushglb.v global.plot
pushi.e 85
cmp.i.v GTE
bf [2]

:[1]
pushglb.v global.plot
pushi.e 90
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [107]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 1000
add.i.v
push.v 82.x
pushi.e 60
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
call.i gml_Script_camerax(argc=0)
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v

:[8]
push.v self.realign
conv.v.b
bf [12]

:[9]
pushi.e 0
pop.v.b self.realign
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 82
add.i.v
pop.v.v local.xpos
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.ypos
pushi.e 82
pushenv [11]

:[10]
pushloc.v local.xpos
pop.v.v self.x
pushloc.v local.ypos
pop.v.v self.y

:[11]
popenv [10]

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.island_collider
call.i instance_destroy(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 190
conv.i.v
push.s "y"@52
conv.s.v
push.v self.queencar
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 3130
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
push.s "x"@50
conv.s.v
push.v self.queencar
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 205
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_68_0"@35417
conv.s.v
push.s "\\E1* Get In/%"@35418
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
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 3212
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 210
conv.i.v
pushi.e 3212
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 206
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
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
pushi.e 1
conv.b.v
push.s "realign"@26357
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [21]

:[18]
pushi.e 4
pop.v.i self.con
pushi.e 124
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.con

:[20]
popenv [19]
push.d -0.5
conv.d.v
push.s "BG_Cityscape"@35404
conv.s.v
call.i layer_hspeed(argc=2)
popz.v

:[21]
push.v self.con
pushi.e 5
cmp.i.v LTE
bf [23]

:[22]
pushi.e 124
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [32]

:[25]
pushi.e 124
pushenv [31]

:[26]
push.v self.x
pushi.e 3320
cmp.i.v GT
bf [28]

:[27]
push.v self.y
pushi.e 188
cmp.i.v GT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.i 9001210
pop.v.i self.depth

:[31]
popenv [26]

:[32]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [34]

:[33]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 3540
cmp.i.v GTE
b [35]

:[34]
push.e 0

:[35]
bf [62]

:[36]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.pause_x_move
conv.v.b
not.b
bf [42]

:[37]
pushi.e 1
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_auto_talk
pushi.e -4
conv.i.v
push.s "BG_Coaster_Railings"@35419
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
pushi.e -4
conv.i.v
push.s "BG_Coaster_Railings_Top"@35420
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
pushi.e -4
conv.i.v
push.s "BG_Bridge_Lining"@35421
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
push.d -4.5
conv.d.v
push.s "BG_Cityscape"@35404
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
push.v self.girder_marker
pushi.e -9
pushenv [39]

:[38]
pushi.e -4
pop.v.i self.hspeed

:[39]
popenv [38]
push.v self.girder_marker_2
pushi.e -9
pushenv [41]

:[40]
pushi.e -4
pop.v.i self.hspeed

:[41]
popenv [40]

:[42]
push.v self.car_convo
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.i self.car_convo
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_123_0"@35422
conv.s.v
push.s "\\E1* Kris We Have To Drive To Find Noelle/"@35423
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_124_0"@35424
conv.s.v
push.s "\\E6* Turn On The High Beams/%"@35425
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[44]
push.v self.car_convo
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [50]

:[48]
push.v self.talk_timer
push.e 1
add.i.v
pop.v.v self.talk_timer
push.v self.talk_timer
pushi.e 5
cmp.i.v EQ
bf [50]

:[49]
pushi.e 2
pop.v.i self.car_convo
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 1
push.v self.queen_beam
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[50]
push.v self.car_convo
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 98
pop.v.i self.car_convo
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_146_0"@35426
conv.s.v
push.s "\\E9* When She Sees The Queen Signal She Will Come Running/"@35427
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_148_0"@35428
conv.s.v
push.s "\\E2* W..^1. Why do you..^1. need to find Noelle so badly?/"@35429
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_150_0"@35430
conv.s.v
push.s "\\E2* What Are You Saying This City Is Dangerous/"@35431
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_151_0"@35432
conv.s.v
push.s "\\EB* Imagine Poor Noelle Clipping Into A Wall Somewhere/"@35433
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_152_0"@35434
conv.s.v
push.s "\\ED* Wasting Away From Potassium Deficiency/"@35435
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_154_0"@35436
conv.s.v
push.s "\\E2* Y..^1. you're actually worried about her?/"@35437
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_156_0"@35438
conv.s.v
push.s "\\E1* I Would Be If I Wasn't Going To Find Her/"@35439
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_158_0"@35440
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_159_0"@35441
conv.s.v
push.s "\\E2* B..^1. but why her?/"@35442
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_160_0"@35443
conv.s.v
push.s "\\E3* Wait^1, let me guess..^1. is it because.../"@35444
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_161_0"@35445
conv.s.v
push.s "\\E9* She's weak enough to make into your peon?/"@35446
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_163_0"@35447
conv.s.v
push.s "\\E1* Haha No/"@35448
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_164_0"@35449
conv.s.v
push.s "\\EA* Just The Opposite/"@35450
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_165_0"@35451
conv.s.v
push.s "\\EB* It's Because She's Strong/"@35452
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 11
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_167_0"@35453
conv.s.v
push.s "\\EB* H..^1. huh? What do you--/"@35454
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_169_0"@35455
conv.s.v
push.s "\\E2* Kris Stop The Car/%"@35456
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[55]
push.v self.crank_volume
conv.v.b
bf [57]

:[56]
pushi.e 0
pop.v.b self.crank_volume
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v

:[57]
push.v self.car_convo
pushi.e 99
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
pushi.e 0
push.v self.queen_beam
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 5
pop.v.i self.con
pushi.e 0
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 0
pop.v.b self.shift_road
pushi.e 0
conv.i.v
push.s "BG_Coaster_Railings"@35419
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "BG_Coaster_Railings_Top"@35420
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "BG_Bridge_Lining"@35421
conv.s.v
call.i layer_hspeed(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "BG_Cityscape"@35404
conv.s.v
call.i layer_hspeed(argc=2)
popz.v

:[62]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [64]

:[63]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 3590
cmp.i.v GTE
b [65]

:[64]
push.e 0

:[65]
bf [71]

:[66]
pushi.e 1
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_y_move
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pushi.e 180
cmp.i.v GT
bf [68]

:[67]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.y
b [69]

:[68]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 2
add.i.v
pop.i.v [stacktop]self.y

:[69]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pushi.e 180
sub.i.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [71]

:[70]
pushi.e 180
push.v self.queencar
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 30
pop.v.i self.con
pushi.e 0
push.v self.queencar
pushi.e -9
pop.v.i [stacktop]self.con
pushi.e 0
push.v self.queencar
pushi.e -9
pop.v.i [stacktop]self.active

:[71]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [73]

:[72]
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 140
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 194
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 178
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_setxy(argc=2)
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
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 141
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 335
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 194
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 230
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 178
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 175
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 101
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_263_0"@35457
conv.s.v
push.s "\\EC* What's..^1. wrong with it?/%"@35458
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.queencar
call.i gml_Script_c_var_instance(argc=3)
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
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 13
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.kr
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_284_0"@35459
conv.s.v
push.s "\\EB* Phew/"@35460
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_285_0"@35461
conv.s.v
push.s "\\E9* I Was Just Concerned Because It Hadn't Exploded Yet/%"@35462
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
push.s "obj_ch2_city_car_b_slash_Step_0_gml_293_0"@35463
conv.s.v
push.s "\\EA* Looks Like We'll Have To Split Up On Foot/%"@35464
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_300_0"@35465
conv.s.v
push.s "\\E5* .../%"@35466
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_307_0"@35467
conv.s.v
push.s "\\E9* Kris If You See Noelle/"@35468
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_308_0"@35469
conv.s.v
push.s "\\EA* Tell Her My Knowledge Of Her Preferences Is Absolute/"@35470
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_309_0"@35471
conv.s.v
push.s "\\ED* And If She Needs Proof/"@35472
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_310_0"@35473
conv.s.v
push.s "\\E1* Use This/%"@35474
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_317_0"@35475
conv.s.v
push.s "* (Queen's Mixtape was thrown into your KEY ITEMS.)/%"@35476
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 50
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_324_0"@35477
conv.s.v
push.s "\\E1* Toodles/%"@35478
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
pushi.e 65
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 64
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 98
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 65
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 65
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 65
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 66
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 110
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
pushi.e 10
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
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_340_0"@35479
conv.s.v
push.s "\\EI* Ph..^1. phew.../"@35480
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_341_0"@35481
conv.s.v
push.s "\\E9* .../"@3296
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_342_0"@35482
conv.s.v
push.s "\\E3* Somehow^1, I feel like..^1. we're almost out of here./"@35483
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_b_slash_Step_0_gml_343_0"@35484
conv.s.v
push.s "\\E4* Let's go^1, Kris!/%"@35485
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
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

:[73]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [75]

:[74]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 59
pop.v.i self.con
push.v self.con
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[78]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [80]

:[79]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [86]

:[82]
pushi.e 99
pop.v.i self.con
pushi.e 90
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1063
pushenv [84]

:[83]
pushi.e 1
pop.v.b self.release_hor_jam

:[84]
popenv [83]
push.v self.queencar
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [86]

:[85]
push.v self.queencar
call.i instance_destroy(argc=1)
popz.v

:[86]
push.v self.release_car
conv.v.b
bf [89]

:[87]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 5
add.i.v
pop.i.v [stacktop]self.x
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 400
cmp.i.v LTE
bf [89]

:[88]
pushi.e 0
pop.v.b self.release_car

:[89]
push.v self.explosion
conv.v.b
bf [102]

:[90]
push.v self.explodetimer
push.e 1
add.i.v
pop.v.v self.explodetimer
push.v self.explodetimer
pushi.e 1
cmp.i.v EQ
bf [94]

:[91]
pushi.e 129
conv.i.v
pushi.e 205
conv.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion_marker
pushi.e 2275
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.explosion_marker
pushi.e -9
pushenv [93]

:[92]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[93]
popenv [92]
b [102]

:[94]
pushi.e 0
pop.v.b local.finish
pushi.e 129
pushenv [100]

:[95]
push.v self.sprite_index
pushi.e 2275
cmp.i.v EQ
bf [97]

:[96]
push.v self.image_index
pushi.e 16
cmp.i.v GTE
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
pushi.e 1
pop.v.b local.finish
call.i instance_destroy(argc=0)
popz.v

:[100]
popenv [95]
pushloc.v local.finish
conv.v.b
bf [102]

:[101]
pushi.e 0
pop.v.b self.explosion
pushi.e 0
pop.v.i self.explodetimer

:[102]
push.v self.queen_beam
pushi.e -4
cmp.i.v NEQ
bf [104]

:[103]
push.v self.queen_beam
pushi.e -9
push.v [stacktop]self.visible
conv.v.b
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 52
add.i.v
push.v self.queen_beam
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pushi.e 170
sub.i.v
push.v self.queen_beam
pushi.e -9
pop.v.v [stacktop]self.y

:[107]
push.v self.cityscape_parallax
conv.v.b
bf [end]

:[108]
call.i gml_Script_camerax(argc=0)
push.d -0.0125
mul.d.v
push.v self.cityscape
call.i layer_x(argc=2)
popz.v

:[end]