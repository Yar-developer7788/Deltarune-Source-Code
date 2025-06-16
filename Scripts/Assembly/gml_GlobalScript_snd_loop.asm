.localvar 2 arguments

:[0]
b [3]

> gml_Script_snd_loop (locals=0, argc=1)
:[1]
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
push.v arg.argument0
call.i audio_play_sound(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_snd_loop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_loop
popz.v

:[end]