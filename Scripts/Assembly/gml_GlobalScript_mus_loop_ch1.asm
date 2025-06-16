.localvar 2 arguments

:[0]
b [3]

> gml_Script_mus_loop_ch1 (locals=0, argc=1)
:[1]
pushi.e 1
conv.i.v
pushi.e 90
conv.i.v
push.v arg.argument0
call.i audio_play_sound(argc=3)
pop.v.v self._xsndinstance
pushi.e 0
conv.i.v
pushi.e 1
pushi.e -5
pushi.e 16
push.v [array]self.flag
mul.v.i
push.v self._xsndinstance
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
push.v self._xsndinstance
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_mus_loop_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.mus_loop_ch1
popz.v

:[end]