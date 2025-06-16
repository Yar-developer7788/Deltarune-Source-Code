.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.bomsfallsfx
call.i gml_Script_snd_stop(argc=1)
popz.v

:[end]