.localvar 2 arguments

:[0]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.boxing_game_music
call.i gml_Script_snd_free(argc=1)
popz.v

:[end]