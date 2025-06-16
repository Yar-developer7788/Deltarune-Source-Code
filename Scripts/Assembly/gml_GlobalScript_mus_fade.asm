.localvar 2 arguments

:[0]
b [2]

> gml_Script_mus_fade (locals=0, argc=2)
:[1]
push.v arg.argument1
pushi.e 1000
mul.i.v
pushbltn.v builtin.fps
div.v.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i audio_sound_gain(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_mus_fade
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.mus_fade
popz.v

:[end]