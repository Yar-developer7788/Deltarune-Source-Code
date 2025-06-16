.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[5]
pushi.e 0
pop.v.i self.sndplay
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.i self.sndplay
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause_ch1(argc=1)
popz.v

:[7]
pushi.e 372
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 200
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[9]
pushi.e 1330
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 1331
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 7
pop.v.i self.con

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[15]
pushi.e 372
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
push.v self.sndplay
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume_ch1(argc=1)
popz.v

:[17]
push.i 231251
setowner.e
push.s "obj_darkphone_event_slash_Step_0_gml_42_0"@29632
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 6
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]