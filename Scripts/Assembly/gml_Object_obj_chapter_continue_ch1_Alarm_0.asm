.localvar 2 arguments

:[0]
push.v self.choice_index
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i global.chapter_return
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[2]
push.v self.choice_index
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pop.v.i global.chapter_return
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[end]