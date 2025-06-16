.localvar 2 arguments

:[0]
b [2]

> gml_Script_snd_pitch_ch1 (locals=0, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
call.i audio_sound_pitch(argc=2)
popz.v
exit.i

:[2]
push.i [function]gml_Script_snd_pitch_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_pitch_ch1
popz.v

:[end]