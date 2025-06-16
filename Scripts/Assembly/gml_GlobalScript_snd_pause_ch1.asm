.localvar 2 arguments

:[0]
b [4]

> gml_Script_snd_pause_ch1 (locals=0, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_snd_volume(argc=3)
popz.v

:[3]
push.v arg.argument0
call.i audio_pause_sound(argc=1)
popz.v
exit.i

:[4]
push.i [function]gml_Script_snd_pause_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_pause_ch1
popz.v

:[end]