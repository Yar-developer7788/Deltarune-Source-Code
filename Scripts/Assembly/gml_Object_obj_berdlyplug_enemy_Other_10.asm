.localvar 2 arguments

:[0]
pushi.e 10
pop.v.i self.shake
pushi.e 102
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.4
conv.d.v
pushi.e 102
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[end]