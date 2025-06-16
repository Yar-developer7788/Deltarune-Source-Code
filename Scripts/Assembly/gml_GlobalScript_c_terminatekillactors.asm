.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_terminatekillactors (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "terminatekillactors"@9908
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_terminatekillactors
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_terminatekillactors
popz.v

:[end]