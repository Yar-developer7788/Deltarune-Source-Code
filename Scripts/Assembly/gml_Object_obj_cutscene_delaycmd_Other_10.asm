.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e -1
pushi.e 0
push.v [array]self.command_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
call.i gml_Script_scr_cutscene_commands(argc=0)
popz.v

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]