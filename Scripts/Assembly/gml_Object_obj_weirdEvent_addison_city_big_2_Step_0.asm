.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [10]

:[5]
pushi.e -5
pushi.e 421
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
pushi.e 82
pushenv [9]

:[7]
pushi.e 1151
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [9]

:[8]
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[9]
popenv [7]

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
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e -1
pop.v.i self.con
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_28_0"@37911
conv.s.v
push.s "* If you're something else^1, maybe a Dating Shoes isn't right...?/"@37912
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_29_0"@37913
conv.s.v
push.s "* Maybe I could interest you in a FreezeRing?/%"@37914
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 364
conv.i.v
pushi.e 1140
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 346
conv.i.v
pushi.e 1082
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
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
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 8
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_44_0"@37915
conv.s.v
push.s "\\E2* Huh...? A ring...?/"@37916
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_46_0"@37917
conv.s.v
push.s "\\E8* Faha, sorry, I don't think WE need something like that!/"@37918
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_47_0"@37919
conv.s.v
push.s "* C'mon, angel! You can't get stronger without good equipment!/"@37920
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "D"@9480
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_49_0"@37921
conv.s.v
push.s "\\E1* Stronger...? R-right, I guess that's how it works here.../%"@37922
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 3
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
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[14]
push.v self.con
pushi.e 3
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
pushi.e 1208
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e -1
pop.v.i self.con

:[19]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [31]

:[23]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [25]

:[24]
pushi.e 30
conv.i.v
call.i gml_Script_scr_fadeout(argc=1)
pop.v.v self.fade

:[25]
push.v self.timer
pushi.e 75
cmp.i.v EQ
bf [29]

:[26]
pushi.e 103
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 252
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[29]
push.v self.timer
pushi.e 135
cmp.i.v EQ
bf [31]

:[30]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0"@37923
conv.s.v
push.s "* (You got the FreezeRing.)/%"@37924
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

:[31]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [34]

:[33]
push.e 0

:[34]
bf [41]

:[35]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [39]

:[36]
push.v self.fade
pushi.e -9
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 30
conv.i.v
call.i gml_Script_scr_fadein(argc=1)
popz.v

:[39]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [41]

:[40]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_117_0"@37925
conv.s.v
push.s "\\EB* (What..^1. what just happened?)/"@37926
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_118_0"@37927
conv.s.v
push.s "\\EB* (Did I actually just...)/"@37928
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_119_0"@37929
conv.s.v
push.s "\\E3* (No^1, they..^1. they must have given it to us. The ring.)/"@37930
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_120_0"@37931
conv.s.v
push.s "\\Ee* (...)/"@37932
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0_b"@37933
conv.s.v
push.s "\\Ed* (Besides..^1. it's good to get stronger^1, isn't it?)/"@37934
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_122_0"@37935
conv.s.v
push.s "\\E4* Th..^1. thanks^1, Kris!/%"@37936
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[41]
push.v self.con
pushi.e 8
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
bf [46]

:[45]
pushi.e 22
conv.i.v
call.i gml_Script_scr_weaponget(argc=1)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[46]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [48]

:[47]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0"@37937
conv.s.v
push.s "\\EQ* (Though^1, if Susie bought me a ring...)/%"@37938
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[51]
push.v self.con
pushi.e 73
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
bf [end]

:[55]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [57]

:[56]
call.i gml_Script_scr_sideb_fail(argc=0)
popz.v

:[57]
pushi.e 16
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]