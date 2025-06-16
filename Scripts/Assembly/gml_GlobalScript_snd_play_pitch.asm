.localvar 2 arguments
.localvar 83 _mysnd 650

:[0]
b [3]

> gml_Script_snd_play_pitch (locals=1, argc=2)
:[1]
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
push.v arg.argument0
call.i audio_play_sound(argc=3)
pop.v.v local._mysnd
push.v arg.argument1
pushloc.v local._mysnd
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushloc.v local._mysnd
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_snd_play_pitch
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_play_pitch
popz.v

:[end]