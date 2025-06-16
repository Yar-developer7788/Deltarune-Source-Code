.localvar 2 arguments

:[0]
b [10]

> gml_Script_c_actorsetsprites (locals=0, argc=5)
:[1]
push.v arg.argument1
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
push.v arg.argument1
push.s "usprite"@6694
conv.s.v
push.v arg.argument0
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[3]
push.v arg.argument2
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v arg.argument2
push.s "rsprite"@6693
conv.s.v
push.v arg.argument0
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[5]
push.v arg.argument3
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.v arg.argument3
push.s "dsprite"@3440
conv.s.v
push.v arg.argument0
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[7]
push.v arg.argument4
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
push.v arg.argument4
push.s "lsprite"@6695
conv.s.v
push.v arg.argument0
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_c_actorsetsprites
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_actorsetsprites
popz.v

:[end]