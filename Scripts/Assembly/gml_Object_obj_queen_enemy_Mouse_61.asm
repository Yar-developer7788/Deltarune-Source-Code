.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
push.v self.difficultydebug
push.e 1
sub.i.v
pop.v.v self.difficultydebug
push.s "Queen difficulty = "@25161
push.v self.difficultydebug
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[end]