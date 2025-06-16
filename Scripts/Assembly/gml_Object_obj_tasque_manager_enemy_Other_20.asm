.localvar 2 arguments

:[0]
pushi.e 448
pushenv [2]

:[1]
push.v self.myself
call.i gml_Script_scr_spare(argc=1)
popz.v

:[2]
popenv [1]
call.i gml_Script_scr_spareanim(argc=0)
popz.v
call.i gml_Script_scr_recruit(argc=0)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]