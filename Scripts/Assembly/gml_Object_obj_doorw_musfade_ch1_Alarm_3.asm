.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free_ch1(argc=1)
popz.v

:[end]