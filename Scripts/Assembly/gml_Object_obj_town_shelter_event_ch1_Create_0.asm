.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.i 231459
setowner.e
push.s "mus_birdnoise.ogg"@14946
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
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
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[2]
pushi.e 372
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.dk
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.dk
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
push.d 0.15
conv.d.v
push.v self.dk
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[end]