.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_9_0"@36159
conv.s.v
push.s "\\E7* Heck yeah^1, I didn't know there was moss here!/"@36160
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_10_0"@36161
conv.s.v
push.s "\\EA* It's totally uneaten^1, too.../"@36162
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_11_0"@36163
conv.s.v
push.s "\\E1* ..^1. wait a sec./"@36164
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_12_0"@36165
conv.s.v
push.s "\\E0* ..^1. Kris.../%"@36166
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "play_song"@36156
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_28_0"@36167
conv.s.v
push.s "\\EK* Were you..^1. saving this for me?/"@36168
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_29_0"@36169
conv.s.v
push.s "\\EQ* ..^1. Heh./"@36170
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_30_0"@36171
conv.s.v
push.s "\\E2* Guess even you've got your good moments.../%"@36172
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "play_power"@36157
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_43_0"@36173
conv.s.v
push.s "* (You ate the moss..^1. together.)/%"@36174
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "play_stop"@36158
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_city_moss_slash_Step_0_gml_56_0"@36175
conv.s.v
push.s "\\EX* (..^1. uh?)/%"@36176
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[5]
push.v self.play_song
conv.v.b
bf [9]

:[6]
pushi.e 0
pop.v.b self.play_song
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v

:[8]
push.i 173293
setowner.e
push.s "noelle_school.ogg"@30114
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.coolsong
pushi.e -1
pushi.e 0
push.v [array]self.coolsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.coolsong

:[9]
push.v self.play_power
conv.v.b
bf [11]

:[10]
pushi.e 0
pop.v.b self.play_power
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[11]
push.v self.play_stop
conv.v.b
bf [13]

:[12]
pushi.e 0
pop.v.b self.play_power
pushi.e -1
pushi.e 0
push.v [array]self.coolsong
call.i gml_Script_snd_free(argc=1)
popz.v

:[13]
push.v self.con
pushi.e 8
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
bf [20]

:[17]
pushi.e 99
pop.v.i self.con
pushglb.v global.is_console
conv.v.b
bf [19]

:[18]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v

:[19]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
pushi.e 133
conv.i.v
call.i instance_activate_object(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[20]
push.v self.dumpster_con
pushi.e 10
cmp.i.v EQ
bf [22]

:[21]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 99
pop.v.i self.dumpster_con
push.i 68097
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.dumpster
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[26]
popenv [25]

:[end]