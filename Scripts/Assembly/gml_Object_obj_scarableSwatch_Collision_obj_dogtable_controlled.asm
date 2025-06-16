.localvar 2 arguments

:[0]
push.v self.con
pushi.e 69
cmp.i.v LT
bf [end]

:[1]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 69
pop.v.i self.con

:[end]