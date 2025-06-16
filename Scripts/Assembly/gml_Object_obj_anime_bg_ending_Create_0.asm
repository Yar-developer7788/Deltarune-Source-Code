.localvar 2 arguments

:[0]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 245
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]