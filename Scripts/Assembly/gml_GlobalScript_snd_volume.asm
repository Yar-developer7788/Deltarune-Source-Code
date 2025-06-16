.localvar 2 arguments

:[0]
b [2]

> gml_Script_snd_volume (locals=0, argc=3)
:[1]
push.v arg.argument2
pushi.e 1000
mul.i.v
pushbltn.v builtin.fps
div.v.v
push.v arg.argument1
push.v arg.argument0
call.i audio_sound_gain(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_snd_volume
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_volume
popz.v

:[end]