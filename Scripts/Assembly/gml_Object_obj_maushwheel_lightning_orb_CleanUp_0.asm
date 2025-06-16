.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 24
cmp.i.v LT
bf [2]

:[1]
pushi.e 137
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v

:[end]