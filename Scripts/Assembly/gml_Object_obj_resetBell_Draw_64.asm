.localvar 2 arguments

:[0]
pushi.e 8
conv.i.v
push.v self.timer
call.i string(argc=1)
call.i gml_Script_debug_printline(argc=2)
popz.v

:[end]