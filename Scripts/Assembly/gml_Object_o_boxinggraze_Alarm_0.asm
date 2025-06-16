.localvar 2 arguments

:[0]
push.v self.tpgain
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.v other.tpgain
call.i gml_Script_scr_tensionheal(argc=1)
popz.v

:[2]
pushi.e 0
pop.v.i self.tpgain

:[end]