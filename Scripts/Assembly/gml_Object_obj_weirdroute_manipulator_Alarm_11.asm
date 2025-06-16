.localvar 2 arguments

:[0]
call.i gml_Script_scr_sideb_checkencounters(argc=0)
pop.v.v self.failcount
push.v self.failcount
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
pushi.e 1
conv.i.v
call.i gml_Script_scr_sideb_fail(argc=1)
popz.v

:[end]