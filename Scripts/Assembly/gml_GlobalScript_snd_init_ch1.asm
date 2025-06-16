.localvar 2 arguments

:[0]
b [3]

> gml_Script_snd_init_ch1 (locals=0, argc=1)
:[1]
push.s "mus/"@6306
push.v arg.argument0
add.v.s
pop.v.v self.initsongvar
push.v self.initsongvar
call.i audio_create_stream(argc=1)
pop.v.v self._mystream
pushi.e 1455
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self._astream
push.v self._mystream
push.v self._astream
pushi.e -9
pop.v.v [stacktop]self.mystream
push.v self._mystream
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_snd_init_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_init_ch1
popz.v

:[end]