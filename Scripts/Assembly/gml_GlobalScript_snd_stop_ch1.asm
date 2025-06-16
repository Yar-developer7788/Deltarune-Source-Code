.localvar 2 arguments

:[0]
b [2]

> gml_Script_snd_stop_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i audio_stop_sound(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_snd_stop_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_stop_ch1
popz.v

:[end]