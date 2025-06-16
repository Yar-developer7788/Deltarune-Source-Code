.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.init
pushi.e 129
conv.i.v
pushi.e 322
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bridge
pushi.e 1
push.v self.bridge
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 3253
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 700000
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.depth

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[3]
pushi.e 82
pushenv [8]

:[4]
pushi.e 1293
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [8]

:[5]
pushi.e 1293
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[8]
popenv [4]

:[9]
push.v self.weird
pushi.e 1
cmp.b.v EQ
bf [30]

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e -1
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 70
conv.i.v
pushi.e 164
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 24
conv.i.v
pushi.e 178
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_53_0"@37475
conv.s.v
push.s "\\E2* I'll..^1. go ahead and do the puzzle!/%"@37476
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
pushi.e 22
conv.i.v
pushi.e 32
conv.i.v
pushi.e 38
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 264
conv.i.v
pushi.e 38
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 32
conv.i.v
pushi.e 254
conv.i.v
pushi.e 198
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 16
conv.i.v
pushi.e 246
conv.i.v
pushi.e 198
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 729
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "noface"@37464
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_74_0_b"@37477
conv.s.v
push.s "* Isn't it a good thing?/"@37478
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_75_0_b"@37479
conv.s.v
push.s "* I'm solving things by myself. Taking new things for myself. Defeating enemies by myself./"@37480
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_76_0_b"@37481
conv.s.v
push.s "* And every time I do it.../"@37482
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_77_0"@37483
conv.s.v
push.s "* I'm getting stronger./"@37484
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_78_0"@37485
conv.s.v
push.s "* ..^1. what did I do when we got that ring? ..^1. when I solved that puzzle?/"@37486
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_79_0"@37487
conv.s.v
push.s "* ..^1. It..^1. It doesn't matter. It doesn't matter if I can't remember./"@37488
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_80_0"@37489
conv.s.v
push.s "* It doesn't matter if the battles are blurring together./"@37490
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_81_0"@37491
conv.s.v
push.s "* If Kris tells me to do it.../"@37492
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_82_0"@37493
conv.s.v
push.s "* I can do things I could never do before./"@37494
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_83_0"@37495
conv.s.v
push.s "* Isn't it a good thing?/"@37478
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_84_0"@37496
conv.s.v
push.s "* ... I'm getting stronger./"@37497
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_85_0"@37498
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_86_0"@37499
conv.s.v
push.s "* As long as I..^1. just do what they say./"@37500
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_87_0"@37501
conv.s.v
push.s "* As long as I.../%"@37502
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "noface"@37464
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 252
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "solve"@14300
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 26
conv.i.v
pushi.e 108
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_88_0"@37503
conv.s.v
push.s "\\E4* All finished^1, Kris^1. Should we find some more enemies?/%"@37504
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 197
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i global.facing
pushi.e 276
pushenv [17]

:[16]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[17]
popenv [16]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 379
pop.v.v [array]self.flag
pushi.e 78
pop.v.i global.plot
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 1
pop.v.i 178.update
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[18]
push.v self.noface
pushi.e 1
cmp.b.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i global.fc

:[20]
push.v self.solve
pushi.e 1
cmp.i.v EQ
bf [30]

:[21]
pushi.e 1
conv.b.v
push.s "BG_Tiles_HiddenPath"@37465
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.b.v
push.s "BG_Tiles_HiddenPath_Sidewalk"@37466
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
push.v self.fakeWall
pushi.e -9
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 0
pop.v.b self.drawshine
pushi.e 1184
pushenv [25]

:[24]
pushbltn.v builtin.room_height
pushi.e 480
add.i.v
pop.v.v self.y

:[25]
popenv [24]
pushi.e 1181
pushenv [27]

:[26]
pushi.e 1
conv.i.v
call.i gml_Script_scr_createFrozen(argc=1)
popz.v

:[27]
popenv [26]
push.v self.bridge
pushi.e -9
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e 2
pop.v.i self.solve

:[30]
push.v self.weird
pushi.e 0
cmp.b.v EQ
bf [end]

:[31]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noExit
pushi.e 2
push.v self.noExit
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.6
push.v self.noExit
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[33]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e -999
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 70
conv.i.v
pushi.e 164
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 24
conv.i.v
pushi.e 178
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_49_0"@37505
conv.s.v
push.s "\\E1* It's a dead end...?/%"@37506
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 32
conv.i.v
pushi.e 38
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
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
pushi.e 70
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 264
conv.i.v
pushi.e 38
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 220
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 254
conv.i.v
pushi.e 278
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 8
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
pushi.e 24
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1293
conv.i.v
call.i gml_Script_c_actortoobject(argc=1)
popz.v
pushi.e 6
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
push.d 5.5
pop.v.d self.con

:[35]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [40]

:[36]
pushi.e 0
pop.v.b 276.visible
pushi.e 1293
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[37]
pushi.e 1293
pushenv [39]

:[38]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v other.noelle
pushi.e 1
push.v other.noelle
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 724
push.v other.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v other.noelle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v other.noelle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v other.noelle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v other.noelle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 7
pop.v.i other.con
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]

:[40]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [51]

:[41]
push.v self.noelle
pushi.e -9
pushenv [43]

:[42]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[43]
popenv [42]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 32
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[45]
push.v self.timer
pushi.e 62
cmp.i.v EQ
bf [47]

:[46]
pushi.e 718
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[47]
push.v self.timer
pushi.e 92
cmp.i.v EQ
bf [49]

:[48]
pushi.e 728
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[49]
push.v self.timer
pushi.e 122
cmp.i.v EQ
bf [51]

:[50]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_129_0"@37507
conv.s.v
push.s "\\E5* Hmm..^1. the switch didn't seem to work?/%"@37508
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[51]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [53]

:[52]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 1149
conv.i.v
pushi.e 180
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leaveBlock
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[56]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [61]

:[57]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [61]

:[58]
pushi.e 62
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
push.v self.bridge
pushi.e -9
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
pushi.e 719
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[61]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [70]

:[62]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 24
cmp.i.v GT
bf [66]

:[63]
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
pushenv [65]

:[64]
push.v self.lx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x

:[65]
popenv [64]

:[66]
push.v self.timer
pushi.e 25
cmp.i.v EQ
bf [70]

:[67]
pushi.e 1184
pushenv [69]

:[68]
pushi.e 1
pop.v.i self.freeze

:[69]
popenv [68]
pushi.e 717
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 231459
setowner.e
push.s "creepychase.ogg"@15561
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_168_0"@37509
conv.s.v
push.s "\\EE* Kris!^1! The platform's falling!^1! H-help me!!/%"@37510
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[70]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [82]

:[71]
pushi.e 319
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [73]

:[72]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [79]

:[75]
pushi.e 319
pushenv [78]

:[76]
push.v self.fade_in
conv.v.b
not.b
bf [78]

:[77]
pushi.e 1
pop.v.b self.start
pushi.e 1
pop.v.b self.fade_in

:[78]
popenv [76]

:[79]
pushi.e 1183
pushi.e 0
push.v [array]self.plat
pushi.e -9
pushenv [81]

:[80]
push.v self.lx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x

:[81]
popenv [80]

:[82]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [87]

:[83]
pushi.e 1183
pushi.e 0
push.v [array]self.plat
pushi.e -9
pushenv [86]

:[84]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [86]

:[85]
push.v self.lx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x

:[86]
popenv [84]

:[87]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [89]

:[88]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 0
pop.v.i 1181.blocked
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i global.interact
pushi.e 287
conv.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefield
pushi.e 6
push.v self.forcefield
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.forcefield
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 10.depth
pushi.e 50
sub.i.v
push.v self.forcefield
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[92]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [94]

:[93]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [95]

:[94]
push.e 0

:[95]
bf [114]

:[96]
push.v 1181.rotate
pushi.e 1
cmp.b.v EQ
bf [103]

:[97]
push.v self.towerinit
pushi.e 0
cmp.b.v EQ
bf [103]

:[98]
pushi.e 1184
pushenv [100]

:[99]
pushi.e 0
pop.v.i self.freeze

:[100]
popenv [99]
pushi.e 1183
pushenv [102]

:[101]
pushi.e 1
pop.v.i self.init
push.i 237105
setowner.e
pushi.e 0
pushi.e -1
push.v self.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
pop.v.i [stacktop]self.falltimer

:[102]
popenv [101]
pushi.e 1
pop.v.b self.towerinit

:[103]
push.v self.exttrig
push.s "success"@21747
cmp.s.v EQ
bf [110]

:[104]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 1
pop.v.i 1181.blocked
pushi.e 1184
pushenv [106]

:[105]
pushi.e 1
pop.v.i self.freeze

:[106]
popenv [105]
pushi.e 1183
pushenv [108]

:[107]
pushi.e 1
pop.v.i self.freeze

:[108]
popenv [107]
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [110]

:[109]
push.d 15.9
pop.v.d self.con

:[110]
push.v self.exttrig
push.s "fell"@37411
cmp.s.v EQ
bf [114]

:[111]
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 1184
pushenv [113]

:[112]
pushi.e 1
pop.v.i self.freeze

:[113]
popenv [112]
pushi.e 1
pop.v.i 1181.blocked
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_208_0"@37511
conv.s.v
push.s "\\EE* KRIS!!!!!!!/"@37512
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_209_0"@37513
conv.s.v
push.s "\\E8* Gosh^1, you're lucky Dess isn't here!/"@37514
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_210_0"@37515
conv.s.v
push.s "\\E8* Otherwise YOU'D be facedown in a mousepile!/"@37516
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_211_0"@37517
conv.s.v
push.s "\\E8* .../"@631
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_212_0"@37518
conv.s.v
push.s "\\E6* S..^1. sorry^1, I didn't mean to get so mad./"@37519
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_213_0"@37520
conv.s.v
push.s "\\E0* Sure..^1. okay^1, we can try again./%"@37521
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 0
pop.v.i 1169.image_index
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[114]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [116]

:[115]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
push.i 231459
setowner.e
push.s "boxing_game.ogg"@21450
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 1.2
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 20
pop.v.i self.con

:[119]
push.v self.con
push.d 15.9
cmp.d.v EQ
bf [121]

:[120]
pushi.e 1544
pop.v.i 1169.sprite_index
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_230_0"@37522
conv.s.v
push.s "\\E8* Kris!^1! What are you doing!^1! You made me --/%"@37523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.timer
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 16
pop.v.i self.con

:[121]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [123]

:[122]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [124]

:[123]
push.e 0

:[124]
bf [131]

:[125]
pushi.e 1184
pushenv [127]

:[126]
pushi.e 1
pop.v.i self.freeze

:[127]
popenv [126]
pushi.e 1183
pushenv [129]

:[128]
pushi.e 1
pop.v.i self.freeze

:[129]
popenv [128]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [131]

:[130]
pushi.e 719
pop.v.i 1169.sprite_index
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_249_0"@37524
conv.s.v
push.s "\\E3* H..^1. huh?/%"@37525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[131]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [133]

:[132]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [134]

:[133]
push.e 0

:[134]
bf [139]

:[135]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [137]

:[136]
pushi.e 723
pop.v.i 1169.sprite_index
pushi.e 0
pop.v.i 1169.image_index
pushi.e 0
pop.v.i 1169.image_speed

:[137]
push.v self.timer
pushi.e 45
cmp.i.v EQ
bf [139]

:[138]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_270_0"@37526
conv.s.v
push.s "\\E6* S-sorry^1, Kris^1, you just saved me^1, didn't you...?/%"@37527
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[139]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [141]

:[140]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [142]

:[141]
push.e 0

:[142]
bf [151]

:[143]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 717
pop.v.i 1169.sprite_index
pushi.e 3
pop.v.i 1169.image_index
pushi.e 1169
pushenv [145]

:[144]
pushi.e 0
pop.v.i self.con

:[145]
popenv [144]
pushi.e 1183
pushenv [147]

:[146]
pushi.e 0
pop.v.i self.freeze

:[147]
popenv [146]
push.v self.timer
pushi.e 40
cmp.i.v EQ
bf [151]

:[148]
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
pushenv [150]

:[149]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[150]
popenv [149]
push.s "boxing_game.ogg"@21450
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 1.2
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_292_0"@37528
conv.s.v
push.s "\\EE* Th..^1. this one's falling^1, too!/"@37529
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_293_0"@37530
conv.s.v
push.s "\\E8* Kris^1, whatever you just did^1, keep doing it!!/%"@37531
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[151]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [153]

:[152]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [154]

:[153]
push.e 0

:[154]
bf [162]

:[155]
pushi.e 719
pop.v.i 1169.sprite_index
pushi.e 0
pop.v.i 1169.image_index
pushi.e 1184
pushenv [157]

:[156]
pushi.e 0
pop.v.i self.freeze

:[157]
popenv [156]
pushi.e 1184
pushenv [159]

:[158]
pushi.e 0
pop.v.i self.falltimer

:[159]
popenv [158]
pushi.e 1183
pushenv [161]

:[160]
push.i 237105
setowner.e
pushi.e 0
pushi.e -1
push.v self.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
pop.v.i [stacktop]self.falltimer

:[161]
popenv [160]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[162]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [164]

:[163]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [165]

:[164]
push.e 0

:[165]
bf [172]

:[166]
pushi.e 1184
pushenv [168]

:[167]
pushi.e 0
pop.v.i self.freeze

:[168]
popenv [167]
pushi.e 0
pop.v.i 1181.blocked
push.v self.micescore
pushi.e 2
cmp.i.v EQ
bf [170]

:[169]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[170]
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [172]

:[171]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[172]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [176]

:[173]
pushi.e 129
conv.i.v
pushi.e -120
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly
pushi.e 2
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.berdly
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 668
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.berdly
pushi.e -9
pushenv [175]

:[174]
pushi.e 48
conv.i.v
pushi.e 163
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[175]
popenv [174]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[176]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [183]

:[177]
push.v self.berdly
pushi.e -9
pushenv [179]

:[178]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[179]
popenv [178]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 48
cmp.i.v EQ
bf [181]

:[180]
pushi.e 0
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_index

:[181]
push.v self.timer
pushi.e 63
cmp.i.v EQ
bf [183]

:[182]
pushi.e 1190
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.monologue
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[183]
push.v self.berdly
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [185]

:[184]
pushi.e 1
push.v self.berdly
pushi.e -9
pop.v.b [stacktop]self.visible

:[185]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [196]

:[186]
push.v self.micescore
push.v self.micetarget
cmp.v.v GTE
bf [196]

:[187]
pushi.e 1184
pushenv [189]

:[188]
pushi.e 1
pop.v.i self.freeze

:[189]
popenv [188]
pushi.e 1
pop.v.i self.solve
pushi.e 1
pop.v.i 1181.blocked
pushi.e 0
pop.v.b 1181.rotate
push.v self.monologue
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [193]

:[190]
push.v self.monologue
pushi.e -9
pushenv [192]

:[191]
call.i instance_destroy(argc=0)
popz.v

:[192]
popenv [191]

:[193]
pushi.e 1
pop.v.i 10.image_index
pushi.e 1
conv.b.v
push.s "BG_Tiles_HiddenPath"@37465
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.b.v
push.s "BG_Tiles_HiddenPath_Sidewalk"@37466
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
push.v self.fakeWall
pushi.e -9
pushenv [195]

:[194]
call.i instance_destroy(argc=0)
popz.v

:[195]
popenv [194]
pushi.e 62
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
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[196]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [203]

:[197]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [203]

:[198]
pushi.e 38
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 676
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
pop.v.d self.image_speed
push.v self.berdly
pushi.e -9
pushenv [200]

:[199]
pushi.e 16
conv.i.v
pushi.e 38
conv.i.v
pushi.e 38
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[200]
popenv [199]
pushi.e 0
pop.v.i self.timer
pushi.e 1169
pushenv [202]

:[201]
pushi.e 718
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[202]
popenv [201]
push.d 24.1
pop.v.d self.con

:[203]
push.v self.con
push.d 24.1
cmp.d.v EQ
bf [205]

:[204]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [206]

:[205]
push.e 0

:[206]
bf [209]

:[207]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 16
cmp.i.v EQ
bf [209]

:[208]
pushi.e 674
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 45
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 38
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1
pop.v.i global.interact
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_419_0"@37532
conv.s.v
push.s "\\EN* What./"@37533
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_420_0"@37534
conv.s.v
push.s "\\EN* How did you.../%"@37535
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.timer
push.d 24.2
pop.v.d self.con

:[209]
push.v self.con
push.d 24.2
cmp.d.v EQ
bf [211]

:[210]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [212]

:[211]
push.e 0

:[212]
bf [216]

:[213]
push.v self.berdly
pushi.e -9
pushenv [215]

:[214]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[215]
popenv [214]
pushi.e 57
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 36
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 699
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 25
pop.v.i self.con

:[216]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [218]

:[217]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [219]

:[218]
push.e 0

:[219]
bf [222]

:[220]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [222]

:[221]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_445_0"@37536
conv.s.v
push.s "\\EC* HOW DID YOU SOLVE THAT??/%"@37537
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[222]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [224]

:[223]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [225]

:[224]
push.e 0

:[225]
bf [234]

:[226]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [230]

:[227]
push.v self.berdly
pushi.e -9
pushenv [229]

:[228]
pushi.e 273
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[229]
popenv [228]

:[230]
push.v self.timer
pushi.e 35
cmp.i.v EQ
bf [232]

:[231]
pushi.e 674
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[232]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [234]

:[233]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_466_0"@37538
conv.s.v
push.s "\\ED* Even a broken clock is right once a day./%"@37539
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.timer
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 27
pop.v.i self.con

:[234]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [236]

:[235]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [237]

:[236]
push.e 0

:[237]
bf [246]

:[238]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [242]

:[239]
pushi.e 674
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.berdly
pushi.e -9
pushenv [241]

:[240]
pushi.e 30
conv.i.v
push.v self.y
push.v self.x
pushi.e 255
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[241]
popenv [240]
push.d 0.25
push.v self.berdly
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[242]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [244]

:[243]
pushi.e 0
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.image_index

:[244]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [246]

:[245]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_487_0"@37540
conv.s.v
push.s "\\E9* And Kris^1, if anyone asks.../%"@37541
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.timer
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[246]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [248]

:[247]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [249]

:[248]
push.e 0

:[249]
bf [252]

:[250]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [252]

:[251]
pushi.e 698
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_500_0"@37542
conv.s.v
push.s "\\ED* I solved the puzzle!!/"@37543
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_501_0"@37544
conv.s.v
push.s "\\EC* It's not fair for YOU to get extra credit for a fluke!!/"@37545
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_502_0"@37546
conv.s.v
push.s "\\ED* Get it!? Let NO ONE think otherwise^1! ESPECIALLY Susie!/"@37547
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_503_0"@37548
conv.s.v
push.s "\\EC* You KNOW she'd just..^1. lord it over me!/%"@37549
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i self.timer
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[252]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [254]

:[253]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [255]

:[254]
push.e 0

:[255]
bf [259]

:[256]
pushi.e 675
push.v self.berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.berdly
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.berdly
pushi.e -9
pushenv [258]

:[257]
pushi.e 64
conv.i.v
push.v self.y
pushbltn.v builtin.room_width
pushi.e 64
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[258]
popenv [257]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[259]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [262]

:[260]
pushi.e 1
pop.v.i global.interact
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 64
cmp.i.v EQ
bf [262]

:[261]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[262]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [265]

:[263]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 25
cmp.i.v GTE
bf [265]

:[264]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[265]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [279]

:[266]
pushi.e 129
conv.i.v
pushi.e 320
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bridge
pushi.e 3253
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 2
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 890000
push.v self.bridge
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1184
pushenv [268]

:[267]
pushi.e 1
pop.v.i self.freeze

:[268]
popenv [267]
pushi.e 1183
pushenv [270]

:[269]
pushi.e 1
pop.v.i self.freeze

:[270]
popenv [269]
push.v self.noelle
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [274]

:[271]
push.v self.noelle
pushi.e -9
pushenv [273]

:[272]
call.i instance_destroy(argc=0)
popz.v

:[273]
popenv [272]

:[274]
pushi.e 129
conv.i.v
push.v 1169.y
push.v 1169.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelle
push.v 1169.sprite_index
push.v self.noelle
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.noelle
pushi.e -9
pushenv [276]

:[275]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[276]
popenv [275]
pushi.e 1169
pushenv [278]

:[277]
call.i instance_destroy(argc=0)
popz.v

:[278]
popenv [277]
pushi.e 0
pop.v.i self.timer
push.d 32.5
pop.v.d self.con

:[279]
push.v self.con
push.d 32.5
cmp.d.v EQ
bf [286]

:[280]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [286]

:[281]
pushi.e 0
pop.v.i self.timer
push.v self.noelle
pushi.e -9
push.v [stacktop]self.y
pushi.e 256
cmp.i.v GT
bf [283]

:[282]
pushi.e 728
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[283]
push.v self.noelle
pushi.e -9
push.v [stacktop]self.y
pushi.e 256
cmp.i.v LTE
bf [285]

:[284]
pushi.e 718
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[285]
pushi.e 33
pop.v.i self.con

:[286]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [290]

:[287]
push.v self.noelle
pushi.e -9
push.v [stacktop]self.y
pushi.e 256
sub.i.v
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.disttopt
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
push.v self.disttopt
call.i clamp(argc=3)
pop.v.v self.disttopt
push.s "disttopt="@37551
push.v self.disttopt
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
push.v self.noelle
pushi.e -9
pushenv [289]

:[288]
push.v other.disttopt
pushi.e 256
conv.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[289]
popenv [288]
push.d 0.25
push.v self.noelle
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[290]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [297]

:[291]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.disttopt
cmp.v.v EQ
bf [297]

:[292]
pushi.e 719
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.noelle
pushi.e -9
pushenv [294]

:[293]
pushi.e 64
conv.i.v
push.v self.y
pushi.e 36
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[294]
popenv [293]
pushi.e 276
pushenv [296]

:[295]
pushi.e 36
pop.v.i self.x
push.v other.noelle
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[296]
popenv [295]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[297]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [308]

:[298]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.noelle
pushi.e -9
push.v [stacktop]self.x
pushi.e 100
cmp.i.v LT
bf [300]

:[299]
push.v self.bridge
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.8
mul.d.v
pop.i.v [stacktop]self.image_alpha

:[300]
push.v self.timer
pushi.e 52
cmp.i.v EQ
bf [304]

:[301]
pushi.e 1184
pushenv [303]

:[302]
pushi.e 70
conv.i.v
pushi.e 69
conv.i.v
pushi.e 68
conv.i.v
pushi.e 67
conv.i.v
pushi.e 66
conv.i.v
pushi.e 65
conv.i.v
pushi.e 64
conv.i.v
pushi.e 63
conv.i.v
pushi.e 62
conv.i.v
call.i choose(argc=9)
pushbltn.v builtin.room_height
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[303]
popenv [302]

:[304]
push.v self.timer
pushi.e 64
cmp.i.v EQ
bf [308]

:[305]
pushi.e 724
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_631_0"@37552
conv.s.v
push.s "\\E2* Gosh./"@37553
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_632_0"@37554
conv.s.v
push.s "\\E3* ..^1. Y'know^1, I don't think I'm afraid of mice anymore./"@37555
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_633_0"@37556
conv.s.v
push.s "\\E6* Actually^1, I think they might be kind of..^1. cute?/"@37557
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_634_0"@37558
conv.s.v
push.s "\\E8* Anyways^1, let's keep going./%"@37559
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.timer
push.v self.bridge
pushi.e -9
pushenv [307]

:[306]
call.i instance_destroy(argc=0)
popz.v

:[307]
popenv [306]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[308]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [310]

:[309]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [311]

:[310]
push.e 0

:[311]
bf [315]

:[312]
pushi.e 728
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.noelle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.noelle
pushi.e -9
pushenv [314]

:[313]
pushi.e 12
conv.i.v
push.v 276.y
push.v 276.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[314]
popenv [313]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[315]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [325]

:[316]
push.v self.noelle
pushi.e -9
push.v [stacktop]self.x
push.v 276.x
cmp.v.v EQ
bf [318]

:[317]
push.v self.noelle
pushi.e -9
push.v [stacktop]self.y
push.v 276.y
cmp.v.v EQ
b [319]

:[318]
push.e 0

:[319]
bf [325]

:[320]
push.v self.leaveBlock
pushi.e -9
pushenv [322]

:[321]
call.i instance_destroy(argc=0)
popz.v

:[322]
popenv [321]
pushi.e 1
pop.v.b 276.visible
push.v self.noelle
pushi.e -9
pushenv [324]

:[323]
call.i instance_destroy(argc=0)
popz.v

:[324]
popenv [323]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_city_mice3_slash_Step_0_gml_660_0"@37560
conv.s.v
push.s "* (Noelle is now immune to mice.)/%"@37561
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[325]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [331]

:[326]
pushi.e 178
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [330]

:[327]
pushi.e 178
pushenv [329]

:[328]
call.i instance_destroy(argc=0)
popz.v

:[329]
popenv [328]

:[330]
pushi.e 178
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[331]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [333]

:[332]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [334]

:[333]
push.e 0

:[334]
bf [end]

:[335]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 276
pushenv [337]

:[336]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[337]
popenv [336]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.b 1181.rotate
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 379
pop.v.v [array]self.flag
pushi.e 78
pop.v.i global.plot
push.v self.noExit
pushi.e -9
pushenv [339]

:[338]
call.i instance_destroy(argc=0)
popz.v

:[339]
popenv [338]
push.v self.forcefield
pushi.e -9
pushenv [341]

:[340]
call.i instance_destroy(argc=0)
popz.v

:[341]
popenv [340]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 127
conv.i.v
pushi.e 40
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tempsave
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]