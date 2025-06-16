.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 33
cmp.i.v EQ
bf [10]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 160
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 164
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 661
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.tor
pushi.e 893
conv.i.v
pushi.e 238
conv.i.v
pushi.e 192
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tor_actor
push.s "toriel"@544
conv.s.v
push.v self.tor_actor
push.v self.tor
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 898
push.v self.tor_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.car
pushi.e 893
conv.i.v
pushi.e 240
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.car_actor
push.s "car"@10175
conv.s.v
push.v self.car_actor
push.v self.car
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 886
push.v self.car_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_fe(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_35_0"@30043
conv.s.v
push.s "* Well^1, shall we go?/%"@30044
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 249
conv.i.v
pushi.e 115
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 99
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 999
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
pop.v.i self.con

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
bf [9]

:[8]
pushi.e 2
pop.v.i global.plot

:[9]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 61
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v builtin.room
pushi.e 60
cmp.i.v EQ
bf [49]

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 661
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 109
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 193
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.su
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 16
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 237
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 183
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.y
push.i 232203
setowner.e
pushi.e 14
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 0
pop.v.v [array]self.specialsprite
pushi.e 15
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 1
pop.v.v [array]self.specialsprite
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_101_0"@30045
conv.s.v
push.s "\\EQ* ..^1. well LOOK who it is. The school zombie./"@30046
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_102_0"@30047
conv.s.v
push.s "\\E2* You were sleeping like a corpse all class./"@30048
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_103_0"@30049
conv.s.v
push.s "\\EA* Heh^1, what's the matter?/"@30050
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_104_0"@30051
conv.s.v
push.s "\\E2* Had trouble going beddy-bye last night?/%"@30052
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 2
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
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
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_111_0"@30053
conv.s.v
push.s "\\EQ* Heh.../%"@30054
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 12
conv.i.v
pushi.e 198
conv.i.v
pushi.e 127
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_122_0"@30055
conv.s.v
push.s "\\EH* ME TOO^1, KRIS!!/"@30056
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_123_0"@30057
conv.s.v
push.s "\\E5* Like I could SLEEP after yesterday!?/"@30058
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_124_0"@30059
conv.s.v
push.s "\\EP* Just waiting for today felt like..^1. years!!/"@30060
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_125_0"@30061
conv.s.v
push.s "\\EO* Did..^1. all that stuff really happen!?/"@30062
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_126_0"@30063
conv.s.v
push.s "\\EO* Lancer^1, Ralsei^1, everyone..^1. are they still.../%"@30064
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_131_0"@30065
conv.s.v
push.s "\\EQ* ..^1. Look./"@30066
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_132_0"@30067
conv.s.v
push.s "\\E2* You've been wondering the same thing^1, right?/%"@30068
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
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 199
conv.i.v
pushi.e 112
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 219
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 6
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_143_0"@30069
conv.s.v
push.s "\\EH* C'MON ALREADY!!!/%"@30070
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
pushi.e 30
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
pop.v.i self.con

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i global.plot
pushi.e 3
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [24]

:[19]
push.v self.toriel
pushi.e -9
pushenv [23]

:[20]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 894
pop.v.i self.sprite_index
b [23]

:[22]
pushi.e 898
pop.v.i self.sprite_index

:[23]
popenv [20]

:[24]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [27]

:[25]
push.v 82.y
pushi.e 150
cmp.i.v GTE
bf [27]

:[26]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [33]

:[29]
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 303
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_183_0"@30071
conv.s.v
push.s "\\E0* ..^1. and how is Kris doing?/"@30072
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_185_0"@30073
conv.s.v
push.s "\\E0* Th-they're great^1, Tori!/"@30074
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_186_0"@30075
conv.s.v
push.s "\\E7* One of my favorite students. A real star!/"@30076
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 9
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_188_0"@30077
conv.s.v
push.s "\\E9* Oh^1, how wonderful!/"@30078
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_189_0"@30079
conv.s.v
push.s "\\E1* ..^1. They have not been up to anything strange?/"@30080
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 7
conv.i.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_191_0"@30081
conv.s.v
push.s "\\E7* Haha^1, no^1, they've been.../%"@30082
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 51
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 303
pop.v.v [array]self.flag
b [32]

:[31]
pushi.e 55
pop.v.i self.con
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_199_0"@30083
conv.s.v
push.s "* (Can't let mom find out you're balancing a giant trash orb!)/%"@30084
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[32]
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[33]
push.v self.con
pushi.e 51
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
bf [40]

:[37]
push.v self.alphys
pushi.e -9
pushenv [39]

:[38]
pushi.e 920
pop.v.i self.sprite_index

:[39]
popenv [38]
pushi.e 52
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[40]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [44]

:[41]
push.v self.alphys
pushi.e -9
pushenv [43]

:[42]
pushi.e 923
pop.v.i self.sprite_index

:[43]
popenv [42]
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_222_0"@30085
conv.s.v
push.s "\\E6* They're normal./"@30086
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_224_0"@30087
conv.s.v
push.s "\\E0* Well^1, that is relieving. I have just been.../"@30088
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_225_0"@30089
conv.s.v
push.s "\\E1* A little concerned lately./"@30090
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 10
conv.i.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_227_0"@30091
conv.s.v
push.s "* (Just lately?)/"@30092
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_230_0"@30093
conv.s.v
push.s "\\E1* ..^1. You take it easy too^1, Alphys./"@30094
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_231_0"@30095
conv.s.v
push.s "\\E9* I am always cheering you on^1, alright?/"@30096
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 11
conv.i.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_233_0"@30097
conv.s.v
push.s "\\EB* Uhhh..^1. th..^1. th..^1. th..^1. thanks!!/%"@30098
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 55
pop.v.i self.con

:[44]
push.v self.con
pushi.e 55
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
bf [49]

:[48]
pushi.e 148
pop.v.i 82.y
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 50
pop.v.i self.con

:[49]
pushbltn.v builtin.room
pushi.e 62
cmp.i.v EQ
bf [end]

:[50]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [55]

:[51]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 663
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 285
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 252
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.y
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.su
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
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
pushi.e 313
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 246
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.y
push.i 232203
setowner.e
pushi.e 20
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 0
pop.v.v [array]self.specialsprite
pushi.e 21
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 1
pop.v.v [array]self.specialsprite
pushi.e 21
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 1
pop.v.v [array]self.specialsprite
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.no
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 752
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 252
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 17
conv.i.v
push.v self.no_actor
pushi.e -9
pushi.e 0
pop.v.v [array]self.specialsprite
pushi.e 18
conv.i.v
push.v self.no_actor
pushi.e -9
pushi.e 1
pop.v.v [array]self.specialsprite
pushi.e 0
conv.i.v
push.s "creepydoor.ogg"@14934
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_291_0"@30099
conv.s.v
push.s "\\E3* Alright^1, Kris. This is it. Moment of truth./"@30100
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_292_0"@30101
conv.s.v
push.s "\\E0* Everything we've been waiting for is just behind this.../"@30102
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_293_0"@30103
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_294_0"@30104
conv.s.v
push.s "\\EK* If we^1, uh^1, open this and there's nothing inside.../"@30105
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_295_0"@30106
conv.s.v
push.s "\\E3* Will^1, uh^1, we still be.../%"@30107
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_304_0"@30108
conv.s.v
push.s "\\EH* Screw it^1! Let's just open it already!!/"@30109
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_306_0"@30110
conv.s.v
push.s "\\E3* Umm^1, S..^1. Susie...?/%"@30111
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
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
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i gml_Script_c_fe(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_323_0"@30112
conv.s.v
push.s "\\E7* YEAHHHH????/%"@30113
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "noelle_school.ogg"@30114
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 3
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
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
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_335_0"@30115
conv.s.v
push.s "\\E7* Noelle..^1. hey.../"@30116
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_336_0"@30117
conv.s.v
push.s "\\E7* What..^1. the HELL..^1. are you doing here...?/"@30118
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_338_0"@30119
conv.s.v
push.s "\\E4* Umm..^1. s-sorry to bother you^1, but^1, ummm^1, I.../"@30120
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_339_0"@30121
conv.s.v
push.s "\\E3* Well^1, I just..^1. Berdly and I were going to the Library to.../"@30122
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_340_0"@30123
conv.s.v
push.s "\\E6* Do some r-research for our group projects^1, and.../"@30124
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_341_0"@30125
conv.s.v
push.s "\\EQ* If it's OK^1, um..^1. would you..^1. want to come too...?/%"@30126
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 18
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_348_0"@30127
conv.s.v
push.s "\\E2* Oh^1, Kris^1, you can come too I mean!/%"@30128
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 2
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_355_0"@30129
conv.s.v
push.s "\\E7* Uhhhhhhhhhhh..^1. I mean.../"@30130
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_356_0"@30131
conv.s.v
push.s "\\EK* We're like^1, uhhh..^1. busy^1, with^1, uh.../%"@30132
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1002
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_368_0"@30133
conv.s.v
push.s "\\E2* O-oh...? Umm^1, well..^1. er..^1. that sounds^1, um^1, just.../%"@30134
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_373_0"@30135
conv.s.v
push.s "\\E4* Have fun^1, you two^1! I'll^1, um^1, be at the Library!/%"@30136
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
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_378_0"@30137
conv.s.v
push.s "\\E9* (Kris^1, if you could bring her by later...)/"@30138
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_379_0"@30139
conv.s.v
push.s "\\EQ* (It would mean a lot to me...!)/%"@30140
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.noelle_chalk
pushi.e 1
cmp.b.v EQ
bf [53]

:[52]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_386_0"@30141
conv.s.v
push.s "\\EQ* Ummm..^1. actually^1, wait..^1. wait a second!!/"@30142
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_387_0"@30143
conv.s.v
push.s "\\E8* Susie^1, I^1, um..^1. I..^1. have something for you!/"@30144
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_389_0"@30145
conv.s.v
push.s "\\E6* ???/%"@30146
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 90
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_399_0"@30147
conv.s.v
push.s "\\EM* OK see you bye!!!/%"@30148
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_403_0"@30149
conv.s.v
push.s "\\EE* ..?/"@30150
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_404_0"@30151
conv.s.v
push.s "\\E6* It's..^1. a lunchbox...?/%"@30152
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_410_0"@30153
conv.s.v
push.s "\\EB* ..^1. full of CHALK?/"@30154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_411_0"@30155
conv.s.v
push.s "\\EF* ...!/"@30156
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_412_0"@30157
conv.s.v
push.s "\\ER* SHE HAD CHALK THE WHOLE TIME!?/"@30158
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_413_0"@30159
conv.s.v
push.s "\\E5* AND DIDN'T GIVE IT TO ALPHYS!?!?/"@30160
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_414_0"@30161
conv.s.v
push.s "\\EH* WHAT THE HELL^1, KRIS!?/%"@30162
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
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
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_421_0"@30163
conv.s.v
push.s "\\EM* Here^1, YOU hold onto this./"@30164
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_423_0"@30165
conv.s.v
push.s "* (You got the Chalk.)/%"@30166
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [54]

:[53]
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[54]
push.v self.kr
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
pushi.e 19
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.2
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_445_0"@30167
conv.s.v
push.s "\\E5* Wait^1, Kris^1! What the HELL was that!??!?!/"@30168
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_446_0"@30169
conv.s.v
push.s "\\EN* Why would NOELLE?? Ask ME??/"@30170
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_447_0"@30171
conv.s.v
push.s "\\EP* To do HOMEWORK?? With HER?!??/"@30172
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_448_0"@30173
conv.s.v
push.s "\\EA* Deathwish much? Does she WANNA fail?/"@30174
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_449_0"@30175
conv.s.v
push.s "\\E0* .../%"@3988
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
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_458_0"@30176
conv.s.v
push.s "\\EB* ..^1. wait a second. WAIT a second./"@30177
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_459_0"@30178
conv.s.v
push.s "\\EC* Kris^1, did you notice how nervous she was...?/"@30179
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_460_0"@30180
conv.s.v
push.s "\\E6* And like..^1. blushing and stuff?/"@30181
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_461_0"@30182
conv.s.v
push.s "\\EM* Kris^1, you don't think..^1. she..^1. uh.../%"@30183
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_467_0"@30184
conv.s.v
push.s "\\E5* She's onto our secret identities!?/%"@30185
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_471_0"@30186
conv.s.v
push.s "\\E2* Y'know. This..^1. Dark World stuff./%"@30187
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_475_0"@30188
conv.s.v
push.s "\\E3* Damn..^1. We gotta keep this under wraps^1, Kris./"@30189
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_476_0"@30190
conv.s.v
push.s "\\E2* This is OUR thing^1, y'know?/%"@30191
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_483_0"@30192
conv.s.v
push.s "\\EA* Anyway^1, enough waiting already^1, right!?/"@30193
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_lw_cutscenes_short_slash_Step_0_gml_484_0"@30194
conv.s.v
push.s "\\E2* Let's go!/%"@30195
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[55]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [58]

:[57]
push.e 0

:[58]
bf [end]

:[59]
pushi.e 893
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.visible

:[61]
popenv [60]
pushi.e 944
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushglb.v global.plot
pushi.e 7
cmp.i.v LT
bf [63]

:[62]
pushi.e 7
pop.v.i global.plot

:[63]
pushi.e 3
pop.v.i self.con
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
push.v self.noelle_chalk
pushi.e 1
cmp.b.v EQ
bf [65]

:[64]
pushi.e 23
conv.i.v
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[65]
call.i instance_destroy(argc=0)
popz.v

:[end]