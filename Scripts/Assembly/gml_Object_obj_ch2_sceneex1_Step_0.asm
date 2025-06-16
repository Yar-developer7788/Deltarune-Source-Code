.localvar 2 arguments

:[0]
push.v 82.x
pushi.e 970
cmp.i.v GTE
bf [7]

:[1]
push.v 82.x
pushi.e 1020
cmp.i.v LTE
bf [7]

:[2]
push.v 82.y
pushi.e 180
cmp.i.v LT
bf [7]

:[3]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [7]

:[4]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
bf [7]

:[5]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 155
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v 82.y
pushi.e 4
add.i.v
pop.v.v 82.y

:[10]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [13]

:[11]
pushi.e -5
pushi.e 358
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v 82.x
pushi.e 900
cmp.i.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 358
pop.v.v [array]self.flag
pushi.e 10
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [22]

:[17]
pushi.e 2
pop.v.i self.con
pushi.e 82
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.visible

:[19]
popenv [18]
pushi.e 276
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.visible

:[21]
popenv [20]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[22]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [27]

:[23]
pushi.e 3
pop.v.i self.con
pushi.e -5
pushi.e 358
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 358
pop.v.v [array]self.flag
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 180
conv.i.v
pushi.e 1030
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 13
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 175
conv.i.v
pushi.e 930
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 13
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_54_0"@34048
conv.s.v
push.s "\\E5* Kris...? You want us to stay here...?/"@34049
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_56_0"@34050
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_57_0"@34051
conv.s.v
push.s "\\E1* Sure^1, whatever./"@34052
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_58_0"@34053
conv.s.v
push.s "\\EA* Me n' Ralsei'll have fun without you./%"@34054
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
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
b [26]

:[25]
pushi.e -5
pushi.e 358
push.v [array]self.flag
popz.v
pushi.e -5
pushi.e 358
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v

:[26]
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[27]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [34]

:[31]
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [33]

:[32]
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v

:[33]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[34]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [36]

:[35]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 99
pop.v.i self.con
pushi.e 3
pop.v.i global.interact
pushi.e 20
pop.v.i global.entrance
call.i gml_Script_scr_losechar(argc=0)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 5
cmp.i.v LT
bf [40]

:[39]
push.i 231204
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag

:[40]
pushi.e 179
conv.i.v
call.i room_goto(argc=1)
popz.v

:[41]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [51]

:[42]
pushi.e 11
pop.v.i self.con
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
push.v 82.y
push.v 82.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 120
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 82
pushenv [44]

:[43]
pushi.e 0
pop.v.i self.visible

:[44]
popenv [43]
pushi.e 276
pushenv [46]

:[45]
pushi.e 0
pop.v.i self.visible

:[46]
popenv [45]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
push.v self.nise_susie
pushi.e -9
pushenv [48]

:[47]
pushi.e 0
pop.v.i self.visible

:[48]
popenv [47]
push.v self.nise_ralsei
pushi.e -9
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.visible

:[50]
popenv [49]
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
pushi.e 655
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.nise_susie
pushi.e -9
push.v [stacktop]self.y
push.v self.nise_susie
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
push.v self.nise_susie
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.nise_susie
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.image_speed
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
push.v self.nise_ralsei
pushi.e -9
push.v [stacktop]self.y
push.v self.nise_ralsei
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
push.v self.nise_ralsei
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.nise_ralsei
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.ra_actor
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 494
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.2
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
pushi.e 496
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.2
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v

:[51]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [53]

:[52]
pushi.e 12
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
pushi.e 30
conv.i.v
pushi.e 285
conv.i.v
pushi.e 735
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 35
conv.i.v
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
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
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_165_0"@34055
conv.s.v
push.s "* C'mon^1, Susie!^1! Give me my glasses back!!/"@34056
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "a"@7017
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_167_0"@34057
conv.s.v
push.s "\\Ea* Oooh^1, look at me^1, I'm a big dweeb that loves homework!!/%"@34058
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 495
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -3
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 497
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_184_0"@34059
conv.s.v
push.s "\\ES* C..^1. C'mon.../%"@34060
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_189_0"@34061
conv.s.v
push.s "\\Ea* .../"@34062
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_190_0"@34063
conv.s.v
push.s "\\EK* Fine^1, take them back!!/%"@34064
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
pushi.e 791
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 824
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_203_0"@34065
conv.s.v
push.s "\\EP* Thank you!/%"@34066
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
push.v self.su
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
push.s "obj_ch2_sceneex1_slash_Step_0_gml_214_0"@34067
conv.s.v
push.s "\\EJ* Oh^1, Kris^1! Everything OK?/%"@34068
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex1_slash_Step_0_gml_237_0"@34069
conv.s.v
push.s "\\EK* Whatever^1, let's go./%"@34070
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
pushi.e 20
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 694
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 20
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

:[53]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [55]

:[54]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 0
pop.v.i global.interact
pushi.e 99
pop.v.i self.con

:[58]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [60]

:[59]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con

:[63]
push.v self.disable_face
conv.v.b
bf [end]

:[64]
pushi.e 0
pop.v.b self.disable_face
pushi.e 0
pop.v.i global.fc

:[end]