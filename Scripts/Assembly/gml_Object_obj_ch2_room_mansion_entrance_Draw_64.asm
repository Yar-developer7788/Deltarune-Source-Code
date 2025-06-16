.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
push.v self.con
call.i string(argc=1)
call.i gml_Script_debug_printline(argc=2)
popz.v

:[end]