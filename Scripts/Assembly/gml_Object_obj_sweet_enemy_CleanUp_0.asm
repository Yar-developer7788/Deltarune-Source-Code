.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 130
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[end]