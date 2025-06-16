.localvar 2 arguments

:[0]
push.v 898.cs_wait_custom
conv.v.b
bf [2]

:[1]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.customcon

:[end]