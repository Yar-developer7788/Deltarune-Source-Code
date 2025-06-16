.localvar 2 arguments

:[0]
pushi.e 577
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.appearcon

:[2]
popenv [1]
pushi.e 332
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 332
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[end]