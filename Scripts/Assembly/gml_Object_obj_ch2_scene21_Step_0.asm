.localvar 2 arguments
.localvar 31973 swan_interact 16413
.localvar 6706 d 16414

:[0]
push.v 82.x
push.v self.x
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
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 287
conv.i.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ffield
pushi.e 2
push.v self.ffield
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 8
push.v self.ffield
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -30
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_31_0"@31957
conv.s.v
push.s "\\EL* A..^1. A giant lake of acid!?/%"@31958
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
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
push.v self.ra_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "turnon"@21123
conv.s.v
push.v self.queen_monitor
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_45_0"@31959
conv.s.v
push.s "\\E1* Oh You Mean The Free Pool/"@31960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_46_0"@31961
conv.s.v
push.s "\\ED* You Will Learn To Love It Like Family/"@31962
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_48_0"@31963
conv.s.v
push.s "\\EK* Why do you have this!?/"@31964
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "O"@9488
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_50_0"@31965
conv.s.v
push.s "\\EO* It Is My Mansion's Energy Source And Fun To Drink/"@31966
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_51_0"@31967
conv.s.v
push.s "\\EP* Bye Ha Ha Ha/%"@31968
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "turnoff"@21124
conv.s.v
push.v self.queen_monitor
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
push.s "obj_ch2_scene21_slash_Step_0_gml_58_0"@31969
conv.s.v
push.s "\\EL* .../"@31970
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_59_0"@31971
conv.s.v
push.s "\\EE* How..^1. should we pass this!?/%"@31972
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[12]
push.v self.release_swan
conv.v.b
bf [25]

:[13]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing

:[15]
push.v self.lever_timer
pushi.e 0
cmp.i.v EQ
bf [19]

:[16]
push.v self.lever
pushi.e -9
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.image_index

:[18]
popenv [17]

:[19]
push.v self.lever_timer
pushi.e 3
cmp.i.v EQ
bf [23]

:[20]
push.v self.lever
pushi.e -9
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.image_index

:[22]
popenv [21]

:[23]
push.v self.lever_timer
push.e 1
add.i.v
pop.v.v self.lever_timer
push.v self.swanboat
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 5
sub.i.v
pop.i.v [stacktop]self.y
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
pushi.e 177
cmp.i.v LTE
bf [25]

:[24]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.swanboat_init_y
pushi.e 0
pop.v.b self.release_swan
pushi.e 5
pop.v.i self.con
pushi.e 105
conv.i.v
pushi.e 177
conv.i.v
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swan_interact
pushi.e 0
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 6
pushloc.v local.swan_interact
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_109_0"@31974
conv.s.v
push.s "\\EJ* I suppose..^1. this..^1. works. Haha./%"@31975
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[25]
push.v self.remove_collider
conv.v.b
bf [27]

:[26]
pushi.e 0
pop.v.b self.remove_collider
pushi.e 1
pop.v.b self.queen_heckle_start

:[27]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [29]

:[28]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[32]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [41]

:[33]
push.v self.swanboat_talk
conv.v.b
bf [35]

:[34]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.queen_heckle_index
conv.v.i
push.v [array]self.monitor
pushi.e -9
push.v [stacktop]self.x
sub.v.v
call.i abs(argc=1)
pushi.e 500
cmp.i.v LTE
b [36]

:[35]
push.e 0

:[36]
bf [41]

:[37]
pushi.e 0
pop.v.b self.swanboat_talk
push.v self.swanboat
pushi.e -9
pushenv [39]

:[38]
pushi.e 1
pop.v.i self.dotalk
push.v self.talkcon
push.e 1
add.i.v
pop.v.v self.talkcon

:[39]
popenv [38]
push.v self.queen_heckle_index
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.b self.queen_heckle

:[41]
push.v self.queen_heckle_start
conv.v.b
bf [63]

:[42]
push.v self.queen_heckle
conv.v.b
bf [44]

:[43]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 0
pop.v.b self.queen_heckle
push.v self.queen_heckle_index
pushi.e 1
add.i.v
pop.v.v self.queen_heckle_con
push.i 234945
setowner.e
pushi.e 1
pushi.e -1
push.v self.queen_heckle_index
conv.v.i
push.v [array]self.monitor
pushi.e -9
pop.v.b [stacktop]self.turnon

:[47]
push.v self.queen_heckle_con
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 999
pop.v.i self.queen_heckle_con
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_173_0"@31976
conv.s.v
push.s "\\E1* Ohhh Wow I'm So Distracted Right Now/%"@31977
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
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[49]
push.v self.queen_heckle_con
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
pushi.e 999
pop.v.i self.queen_heckle_con
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_183_0"@31978
conv.s.v
push.s "\\E1* Just Tropical Villas For My Guests Isn't That Thoughtful/"@31979
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "X"@5605
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_185_0"@31980
conv.s.v
push.s "\\EX* ..^1. How would anybody fit inside?/"@31981
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_187_0"@31982
conv.s.v
push.s "\\E1* Shrink From The Acid/%"@31983
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[51]
push.v self.queen_heckle_con
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
pushi.e 999
pop.v.i self.queen_heckle_con
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_197_0"@31984
conv.s.v
push.s "\\E1* Kris Get The Banana/"@31985
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 14
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_199_0"@31986
conv.s.v
push.s "\\EE* Kr..^1. Kris isn't going to do what you say!/%"@31987
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[53]
push.v self.queen_heckle_con
pushi.e 4
cmp.i.v EQ
bf [55]

:[54]
push.v self.got_banana
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 7
pop.v.i self.con
pushi.e 999
pop.v.i self.queen_heckle_con
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_211_0"@31988
conv.s.v
push.s "\\E1* Fools I Wanted You To Avoid It/"@31989
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_212_0"@31990
conv.s.v
push.s "\\E6* Now You Will Become Potassium Deficient/%"@31991
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[58]
push.v self.queen_heckle_con
pushi.e 999
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
pushi.e 1
pop.v.b self.swanboat_talk
pushi.e 0
pop.v.i self.queen_heckle_con
push.i 234946
setowner.e
pushi.e 1
pushi.e -1
push.v self.queen_heckle_index
conv.v.i
push.v [array]self.monitor
pushi.e -9
pop.v.b [stacktop]self.turnoff
push.v self.queen_heckle_index
push.e 1
add.i.v
pop.v.v self.queen_heckle_index

:[63]
push.v self.got_banana
conv.v.b
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
pushi.e 7
pop.v.i self.con
pushi.e 0
pop.v.b self.got_banana
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_234_0"@31992
conv.s.v
push.s "\\EQ* Th-that's okay^1, Kris. It's good for you./%"@31993
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

:[68]
push.v self.con
pushi.e 7
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
bf [74]

:[72]
push.v self.swanboat
pushi.e -9
push.v [stacktop]self.x
pushi.e 3255
cmp.i.v GT
bf [74]

:[73]
pushi.e 8
pop.v.i self.con
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_scene21_slash_Step_0_gml_246_0"@31994
conv.s.v
push.s "\\EJ* ..^1. looks like we're coming up on a tunnel!/%"@31995
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

:[74]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [76]

:[75]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [end]

:[78]
pushi.e 99
pop.v.i self.con

:[end]