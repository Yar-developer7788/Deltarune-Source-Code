.localvar 2 arguments
.localvar 10437 _n 17007
.localvar 32196 battle_end 17008

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.trackx
pushi.e 1
pop.v.i self.init

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v 82.x
push.v self.start_xpos
cmp.v.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [15]

:[6]
push.v self.shortened
conv.v.b
not.b
bf [8]

:[7]
push.d 0.4
conv.d.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
push.d 0.6
conv.d.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
push.d 0.8
conv.d.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v

:[8]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
pushi.e 697
conv.i.v
pushi.e -300
conv.i.v
push.v 82.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sneo
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.myself
pushi.e -1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.facing
push.v self.shortened
conv.v.b
bf [10]

:[9]
pushi.e 0
conv.i.v
b [11]

:[10]
pushi.e 4
conv.i.v

:[11]
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.gravity
push.v self.shortened
conv.v.b
bf [13]

:[12]
pushi.e 0
conv.i.v
b [14]

:[13]
pushi.e 1
conv.i.v

:[14]
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.shadow_amount
pushi.e 30
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [33]

:[16]
push.v self.shortened
conv.v.b
not.b
bf [28]

:[17]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v 82.y
pushi.e 120
sub.i.v
cmp.v.v GTE
bf [27]

:[18]
pushi.e 1160
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 1158
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.ignoreFreeze
pushi.e 1
pop.v.i self.ignoreCutscene

:[22]
popenv [21]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sneo
pushi.e -9
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[24]
popenv [23]
pushi.e 82
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.fun
pushi.e 540
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 18
pop.v.i self.hspeed
push.d 0.8
pop.v.d self.friction

:[26]
popenv [25]
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[27]
b [33]

:[28]
pushi.e 1160
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 1158
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.ignoreFreeze
pushi.e 1
pop.v.i self.ignoreCutscene

:[32]
popenv [31]
pushi.e 5
pop.v.i self.con

:[33]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [49]

:[34]
pushi.e 1158
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [38]

:[35]
pushi.e 1158
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]

:[38]
pushi.e 82
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.cutscene

:[40]
popenv [39]
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
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
push.v 82.x
pushi.e 60
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
push.v 82.x
pushi.e 100
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [42]

:[41]
pushi.e 0
pop.v.i self.visible

:[42]
popenv [41]
pushi.e 2057
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_empty1
push.v self.coaster_empty1
pushi.e -9
pushenv [44]

:[43]
push.i 98900
pop.v.i self.depth

:[44]
popenv [43]
pushi.e 2057
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_empty2
push.v self.coaster_empty2
pushi.e -9
pushenv [46]

:[45]
push.i 98000
pop.v.i self.depth

:[46]
popenv [45]
pushi.e 2057
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.coaster_empty3
push.v self.coaster_empty3
pushi.e -9
pushenv [48]

:[47]
push.i 98000
pop.v.i self.depth

:[48]
popenv [47]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.d 5.1
pop.v.d self.con

:[49]
push.v self.con
push.d 5.1
cmp.d.v EQ
bt [51]

:[50]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [52]

:[51]
push.e 1

:[52]
bf [66]

:[53]
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 200
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 200
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [55]

:[54]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 173
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 173
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "ralseiunhappy"@10174
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 230
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 230
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
b [58]

:[55]
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 540
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
pushi.e 1
conv.i.v
push.s "shake_head"@25883
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "shake_head"@25883
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "shake_head"@25883
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 115
conv.i.v
push.s "y"@52
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 31
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 216
conv.i.v
pushi.e 830
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_98_0"@34100
conv.s.v
push.s "* HOLY [[Cungadero]] DO I FEEL GOOD .../%"@14832
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 33
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "shadow_amount"@14404
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "spamton_neo_meeting.ogg"@14408
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 1.3
conv.d.v
push.s "pitch"@9842
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_111_0"@34101
conv.s.v
push.s "* HERE I AM!^1! KRIS!!/%"@34102
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_119_0"@34103
conv.s.v
push.s "* BIG/%"@34104
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 16
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_127_0"@34105
conv.s.v
push.s "* BIG^1,/%"@34106
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 17
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_135_0"@34107
conv.s.v
push.s "* [[BIGGER AND BETTER THAN EVER]]/%"@34108
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
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_148_0"@34109
conv.s.v
push.s "* HA HA HA ..^1. THIS POWER IS/%"@34110
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_156_0"@34111
conv.s.v
push.s "* FREEDOM./%"@34112
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_163_0"@34113
conv.s.v
push.s "* I WON'T HAVE TO BE^1 &* JUST A PUPPET^1 &* ANY MORE!!!!/"@34114
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_166_0"@34115
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "facing"@341
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_174_0"@34116
conv.s.v
push.s "* OR..^1. so..^1. I..^1. thought./%"@34117
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 22
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_183_0"@34118
conv.s.v
push.s "* WHAT ARE THESE STRINGS!^1? &* WHY AM I NOT [BIG] ENOUGH!^1? &* It's still DARK..^1. SO DARK!/%"@34119
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -1
conv.i.v
push.s "facing"@341
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 200
add.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
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
pushi.e 25
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_209_0"@34120
conv.s.v
push.s "* KRIS./%"@34121
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 21
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 430
add.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 200
add.i.v
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_228_0"@34122
conv.s.v
push.s "* KRIS^1. &* KRIS^1. &* KRIS./"@34123
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_229_0"@34124
conv.s.v
push.s "* THAT'S RIGHT^1. &* YOU^1. &* I NEED YOU./%"@34125
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 23
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 630
add.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 430
add.i.v
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_248_0"@34126
conv.s.v
push.s "* TO BE BIG.^3 &* WITH ME./%"@34127
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 24
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_257_0"@34128
conv.s.v
push.s "* VERY   VERY    BIG/"@34129
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_258_0"@34130
conv.s.v
push.s "* SO BIG WE'LL STAND UP TALL AND SEE PAST THE DARK/"@34131
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_259_0"@34132
conv.s.v
push.s "* STAND UP WITH OUR HEADS IN THE CLOUDS AND LOOK INTO/%"@34133
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 25
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 740
add.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 600
add.i.v
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 0
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1590
conv.i.v
pushi.e 1430
conv.i.v
push.s "x"@50
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 540
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_279_0"@34134
conv.s.v
push.s "* H E A V E N/%"@34135
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1300
conv.i.v
pushi.e 1380
conv.i.v
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_287_0"@34136
conv.s.v
push.s "* I^3 &* JUST NEED^3 &* THAT LITTLE,/%"@34137
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 13
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_298_0"@34138
conv.s.v
push.s "* [[SOUL]]^3 &* Y O U HAVE/%"@34139
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 120
conv.i.v
pushi.e 1420
conv.i.v
pushi.e 1300
conv.i.v
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 120
conv.i.v
pushi.e 140
conv.i.v
pushi.e 115
conv.i.v
push.s "y"@52
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 249
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
pop.v.i local._n
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [57]

:[56]
pushi.e 0
conv.i.v
push.d 1.3
pushloc.v local._n
pushi.e 15
conv.i.d
div.d.v
add.v.d
push.s "pitch"@9842
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [56]

:[57]
popz.i
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
pushi.e 109
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "rudebuster"@31820
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 20
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "sneo_fly"@34085
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 45
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
pushi.e 173
conv.i.v
pushi.e 1000
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 173
conv.i.v
pushi.e 1300
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "ralseiunhappy"@10174
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 230
conv.i.v
pushi.e 1000
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1200
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_411_0"@34140
conv.s.v
push.s "\\E4* Kris!/%"@34141
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
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 173
conv.i.v
pushi.e 1550
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "ralseiunhappy"@10174
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1506
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1258
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 22
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_341_0"@34142
conv.s.v
push.s "\\E4* The hell was that weirdo!?/"@34143
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
push.s "obj_ch2_sceneex2_slash_Step_0_gml_343_0"@34144
conv.s.v
push.s "\\EQ* Kris^1, we were worried about you^1, so.../%"@34145
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
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
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "drawblack"@19806
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_442_0"@34146
conv.s.v
push.s "* KRIS!!^1! YOU HAVE [Friends]!?/"@34147
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_443_0"@34148
conv.s.v
push.s "* WHY DON'T YOU TELL THEM ABOUT MY [3 for One Specil]!/"@34149
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_418_0"@34150
conv.s.v
push.s "* TODAY^1, THE WHOLE FAMILY CAN TAKE A LITTLE [Ride Around Town].../%"@34151
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 210
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_empty1
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 270
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_empty2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 330
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_empty3
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 2000
conv.i.v
pushi.e 1100
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_empty1
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 2000
conv.i.v
pushi.e 1100
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_empty2
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 2000
conv.i.v
pushi.e 1100
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_empty3
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 10
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
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -15
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1580
conv.i.v
pushi.e 1550
conv.i.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_var_lerp(argc=6)
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
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 1600
conv.i.v
pushi.e 1496
conv.i.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_var_lerp(argc=6)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1640
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 544
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
pushi.e 48
conv.i.v
pushi.e 1720
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 542
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
pushi.e 120
conv.i.v
pushi.e 1720
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 783
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
pushi.e 244
conv.i.v
pushi.e 1720
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e -15
conv.i.v
pushi.e 0
conv.i.v
push.s "trackspeed"@26198
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1700
conv.i.v
pushi.e 2000
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_empty1
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1700
conv.i.v
pushi.e 2000
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_empty2
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1700
conv.i.v
pushi.e 2000
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_empty3
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 100
conv.i.v
pushi.e 210
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_empty1
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 180
conv.i.v
pushi.e 270
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_empty2
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 260
conv.i.v
pushi.e 330
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_empty3
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 70
conv.i.v
pushi.e 180
conv.i.v
push.s "tracky0"@34073
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 150
conv.i.v
pushi.e 240
conv.i.v
push.s "tracky1"@34074
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 230
conv.i.v
pushi.e 300
conv.i.v
push.s "tracky2"@34075
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "shinkansen.ogg"@34152
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.s "pitch"@9842
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.d 0.5
conv.d.v
push.d 0.8
conv.d.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.d 1.1
conv.d.v
push.d 0.8
conv.d.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.d 1.4
conv.d.v
push.d 0.8
conv.d.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
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
pushi.e 1721
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1718
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 125
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1727
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 215
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_ralsei
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
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1413
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1521
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -10
conv.i.v
push.s "character_offset_x"@24235
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 997
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_empty1
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_empty2
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_empty3
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 236
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_553_0"@34153
conv.s.v
push.s "* [Attention Customers! Clean up on Aisle 3!]/"@34154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_554_0"@34155
conv.s.v
push.s "* SOMEONE LEFT [There] SOULS^1, [Lyeing Around......]/%"@34156
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "special_scene"@34084
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "pause"@9836
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
push.s "resume"@9837
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v

:[58]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.shortened
conv.v.b
not.b
bf [60]

:[59]
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_570_0"@34157
conv.s.v
push.s "* Kris!?!^1? WAS THAT A [BIG SHOT] JUST NOW!?/"@34158
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_571_0"@34159
conv.s.v
push.s "* WOW!!^1!&* I'M SO [Proud] OF YOU^1, I COULD [Killed] YOU!/"@34160
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_495_0"@34161
conv.s.v
push.s "* [Heaven]^1, are you WATCHING?/"@34162
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex2_slash_Step_0_gml_496_0"@34163
conv.s.v
push.s "* IT'S TIME TO MAKE A VERY [Specil] DEAL.../%"@34164
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [61]

:[60]
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
pushi.e 997
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1521
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v

:[61]
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 249
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.shortened
conv.v.b
not.b
bf [63]

:[62]
pushi.e 41
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[63]
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.shortened
conv.v.b
bf [65]

:[64]
pushi.e 5
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1640
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
pushi.e 0
conv.i.v
push.s "trackspeed"@26198
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
pushi.e 70
conv.i.v
pushi.e 180
conv.i.v
push.s "tracky0"@34073
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
pushi.e 150
conv.i.v
pushi.e 240
conv.i.v
push.s "tracky1"@34074
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
pushi.e 230
conv.i.v
pushi.e 300
conv.i.v
push.s "tracky2"@34075
conv.s.v
push.v self.id
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 1721
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 60
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1718
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 125
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1727
conv.i.v
push.s "x"@50
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 215
conv.i.v
push.s "y"@52
conv.s.v
push.v self.coaster_ralsei
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
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1413
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_kris
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1521
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e -10
conv.i.v
push.s "character_offset_x"@24235
conv.s.v
push.v self.coaster_ralsei
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 997
conv.i.v
push.s "character_sprite"@24161
conv.s.v
push.v self.coaster_susie
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v

:[65]
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[66]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [68]

:[67]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.special_scene
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [89]

:[73]
pushi.e 8
pop.v.i self.con
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 32
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 32
pop.v.v [array]self.tempflag

:[75]
pushi.e 1121
pushenv [77]

:[76]
pushi.e 0
pop.v.i self.visible

:[77]
popenv [76]
pushi.e 693
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.b self.cityscape_active
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "spamton_neo_mix_ex_wip.ogg"@14431
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
push.i 231204
setowner.e
pushi.e 571
conv.i.v
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sneo
pushi.e 1
conv.i.v
pushi.e 61
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
push.v self.shortened
conv.v.b
bf [81]

:[78]
pushi.e 0
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 275
pushenv [80]

:[79]
pushi.e 14
pop.v.i self.counttimer
push.i 133618
setowner.e
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 28
sub.i.v
pop.i.v [stacktop]self.y
pushi.e 2
pop.v.i self.fightcon

:[80]
popenv [79]
b [86]

:[81]
pushi.e 275
pushenv [83]

:[82]
pushi.e 9
pop.v.i self.counttimer
push.i 133618
setowner.e
pushi.e -1
pushi.e 2
push.v [array]self.c
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 28
sub.i.v
pop.i.v [stacktop]self.y

:[83]
popenv [82]
pushi.e 1096
pushenv [85]

:[84]
push.i 68097
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 9
sub.i.v
pop.i.v [array]self.alarm

:[85]
popenv [84]

:[86]
pushi.e 868
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag

:[89]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.v self.special_scene
pushi.e 0
cmp.i.v GT
b [92]

:[91]
push.e 0

:[92]
bf [100]

:[93]
push.v self.special_scene
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1000
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.special_scene

:[95]
push.v self.special_scene
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1000
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.special_scene
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[100]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [102]

:[101]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [103]

:[102]
push.e 0

:[103]
bf [111]

:[104]
pushi.e 0
pop.v.b local.battle_end
pushi.e 357
pushenv [107]

:[105]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [107]

:[106]
pushi.e 1
pop.v.b local.battle_end

:[107]
popenv [105]
pushloc.v local.battle_end
conv.v.b
bf [111]

:[108]
pushi.e 10
pop.v.i self.con
pushi.e 694
pushenv [110]

:[109]
pushi.e 2
pop.v.i self.lerpstate

:[110]
popenv [109]
pushi.e 653
push.v self.coaster_kris
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 825
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 796
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.character_sprite
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[111]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [119]

:[112]
pushi.e 12
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 360
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [116]

:[115]
pushi.e 1
pop.v.i 868.destroy

:[116]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [118]

:[117]
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[118]
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

:[119]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [121]

:[120]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [122]

:[121]
push.e 0

:[122]
bt [127]

:[123]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [125]

:[124]
push.v self.forcend
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
b [128]

:[127]
push.e 1

:[128]
bf [134]

:[129]
pushi.e 49
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 653
push.v self.coaster_kris
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 825
push.v self.coaster_susie
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e 796
push.v self.coaster_ralsei
pushi.e -9
pop.v.i [stacktop]self.character_sprite
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
pushi.e 371
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 63
pushenv [133]

:[132]
pushi.e 1
pop.v.i self.side

:[133]
popenv [132]

:[134]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [136]

:[135]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
pushi.e 59
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[139]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [141]

:[140]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [142]

:[141]
push.e 0

:[142]
bf [146]

:[143]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 697
pushenv [145]

:[144]
call.i instance_destroy(argc=0)
popz.v

:[145]
popenv [144]
pushi.e 0
pop.v.i global.fighting
pushi.e 187
conv.i.v
call.i room_goto(argc=1)
popz.v

:[146]
push.v self.rudebuster
conv.v.b
bf [148]

:[147]
pushi.e 0
pop.v.b self.rudebuster
pushi.e 861
conv.i.v
pushi.e 275
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rudebusteranim
push.v self.sneo
push.v self.rudebusteranim
pushi.e -9
pop.v.v [stacktop]self.target

:[148]
push.v self.sneo_fly
conv.v.b
bf [153]

:[149]
push.v self.sneo
pushi.e -9
pushenv [151]

:[150]
pushi.e -2
pop.v.i self.gravity

:[151]
popenv [150]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
bf [153]

:[152]
pushi.e 0
pop.v.b self.sneo_fly
pushi.e 0
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 840
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.x
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.y

:[153]
push.v self.sneo_release
conv.v.b
bf [end]

:[154]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.gravity
pushi.e 0
cmp.i.v EQ
bf [156]

:[155]
pushi.e 2
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.facing
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[156]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
cmp.i.v GTE
bf [end]

:[157]
pushi.e 0
pop.v.b self.sneo_release
push.v self.sneo
pushi.e -9
pushenv [159]

:[158]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[159]
popenv [158]

:[end]