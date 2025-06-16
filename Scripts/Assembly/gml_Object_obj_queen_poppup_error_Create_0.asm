.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.state
pushi.e 3307
conv.i.v
pushi.e 3324
conv.i.v
call.i choose(argc=2)
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.scale
pushi.e 0
pop.v.i self.blockstate
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mock
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.mocktimer
pushi.e 58
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]