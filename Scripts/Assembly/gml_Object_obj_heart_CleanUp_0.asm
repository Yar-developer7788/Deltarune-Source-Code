.localvar 2 arguments

:[0]
pushi.e 131
conv.i.v
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 131
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[end]