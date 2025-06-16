.localvar 2 arguments

:[0]
push.i 231459
setowner.e
push.s "cybercity.ogg"@19764
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.97
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_gain(argc=3)
popz.v

:[end]