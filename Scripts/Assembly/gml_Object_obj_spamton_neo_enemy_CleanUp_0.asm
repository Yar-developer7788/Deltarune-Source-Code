.localvar 2 arguments

:[0]
pushi.e 137
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[2]
pushi.e 4
pop.v.i global.sp
pushi.e 223
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 223
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[end]