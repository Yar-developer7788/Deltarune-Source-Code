.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.shieldhurt
pushi.e 6
pop.v.i self.shieldhurttimer
pushi.e 8
pop.v.i self.shaketimer
pushi.e 87
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]