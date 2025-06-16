.localvar 2 arguments

:[0]
push.v self.toggled
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.toggled
pushi.e 1212
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e 1
pop.v.i 1212.spawnVaseTrig

:[end]