.localvar 2 arguments

:[0]
b [3]

> gml_Script_snd_is_playing (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i audio_is_playing(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_snd_is_playing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_is_playing
popz.v

:[end]